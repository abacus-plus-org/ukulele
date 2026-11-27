% Hal Leonard-style rhythm tablature.
% Include this file from a song .ly; it adds a \layout block that applies to
% every TabStaff: stems, beams, flags, dots, rests, tuplets, a "T A B" clef,
% and circled fret numbers for half and whole notes (dotted values keep their
% dots). Default stems go down (as in the Hal Leonard ukulele tab guide).
% \voiceOne / \voiceTwo still flip stems up / down in multi-voice tab.
%
% Two-voice columns: NoteColumn.ignore-collision stays ##t (do not revert it)
% so simultaneous melody and accompaniment fret numbers share one vertical
% column instead of being shifted sideways into ambiguous '33' / '30' pairs.
% voiceTwo rests are moved below the staff (voiceOne rests above) so they
% don't cover numbers. Same-string unisons print once (the voiceTwo head is
% hidden; stems up and down may both remain).

\version "2.24.4"

#(define (uke-tab-parent-with-interface grob dir ifc)
   "Walk @var{dir} parents of @var{grob} until a grob with @var{ifc} is found."
   (let loop ((g grob))
     (cond
      ((not (ly:grob? g)) #f)
      ((grob::has-interface g ifc) g)
      (else (loop (ly:grob-parent g dir))))))

#(define (uke-tab-heads-sharing-moment grob)
   "All TabNoteHeads that share this moment (same NoteCollision, or the
heads in this NoteColumn if there is no collision grob)."
   (let* ((column (uke-tab-parent-with-interface
                   grob X 'note-column-interface))
          (collision (and (ly:grob? column)
                          (uke-tab-parent-with-interface
                           column X 'note-collision-interface))))
     (cond
      ((and (ly:grob? collision)
            (ly:grob-object collision 'note-columns #f))
       (apply append
              (map (lambda (c)
                     (let ((arr (ly:grob-object c 'note-heads #f)))
                       (if (ly:grob-array? arr)
                           (ly:grob-array->list arr)
                           '())))
                   (ly:grob-array->list
                    (ly:grob-object collision 'note-columns)))))
      ((and (ly:grob? column)
            (ly:grob-object column 'note-heads #f))
       (let ((arr (ly:grob-object column 'note-heads)))
         (if (ly:grob-array? arr) (ly:grob-array->list arr) (list grob))))
      (else (list grob)))))

#(define (uke-tab-head-key grob)
   "Same-string, same-fret identity: staff-position + printed fret label."
   (cons (ly:grob-property grob 'staff-position)
         (ly:grob-property grob 'text)))

#(define (uke-tab-head-stem-dir grob)
   (let ((stem (ly:grob-object grob 'stem #f)))
     (if (ly:grob? stem)
         (ly:grob-property stem 'direction 0)
         0)))

#(define (uke-hide-unison-tab-head grob)
   "If another head in this moment is on the same string and fret, hide the
down-stem (voiceTwo) copy so the number is not printed twice. The stem can
remain, giving a shared up/down stem on one number."
   (let* ((key (uke-tab-head-key grob))
          (dir (uke-tab-head-stem-dir grob))
          (sibs (filter
                 (lambda (h)
                   (and (not (eq? h grob))
                        (equal? (uke-tab-head-key h) key)))
                 (uke-tab-heads-sharing-moment grob))))
     (when (and (pair? sibs) (eqv? dir DOWN))
       (ly:grob-set-property! grob 'transparent #t)
       (ly:grob-set-property! grob 'whiteout #f))))

#(define (uke-rhythm-tab-note-head grob)
   "Tab note head with a Hal Leonard circle around half and whole notes."
   (if (ly:grob-property grob 'transparent #f)
       empty-stencil
       (let ((base (tab-note-head::whiteout-if-style-set grob))
             (dlog (ly:grob-property grob 'duration-log)))
         (if (or (not (ly:stencil? base)) (not (number? dlog)) (> dlog 1))
             base
             (let* ((xex (ly:stencil-extent base X))
                    (yex (ly:stencil-extent base Y))
                    (cx (* 0.5 (+ (car xex) (cdr xex))))
                    (cy (* 0.5 (+ (car yex) (cdr yex))))
                    (hw (* 0.5 (- (cdr xex) (car xex))))
                    (hh (* 0.5 (- (cdr yex) (car yex))))
                    (pad 0.32)
                    (thick 0.14)
                    (xr (+ hw pad))
                    (yr (+ hh pad)))
               ;; Single-digit frets: a circle, as in the Hal Leonard guide.
               ;; Wider labels (fret 10+, parenthesized ties): a slight oval.
               (if (< (/ xr (max yr 0.01)) 1.2)
                   (let ((r (max xr yr)))
                     (set! xr r)
                     (set! yr r)))
               (ly:stencil-add
                base
                (ly:stencil-translate
                 (make-ellipse-stencil xr yr thick #f)
                 (cons cx cy))))))))

#(define (uke-tab-rest-staff-position grob)
   "voiceOne rests sit above the 4-line tab staff, voiceTwo rests below, so
they never cover fret numbers. Single-voice (no \\voiceXxx) stays centered."
   (let ((dir (ly:grob-property grob 'direction 0)))
     (cond
      ((eqv? dir UP) 6)
      ((eqv? dir DOWN) -6)
      (else 0))))

#(define (uke-tab-mmrest-staff-position grob)
   (uke-tab-rest-staff-position grob))


#(define (uke-hide-voice-two-tab-rest grob)
   "VoiceTwo (down) rests on tab would sit on the string lines and cover
fret numbers. Hide them: voiceOne rests (placed above the staff) or a
single-voice centered rest already show the silence."
   (when (eqv? (ly:grob-property grob 'direction 0) DOWN)
     (ly:grob-set-property! grob 'transparent #t)
     (ly:grob-set-property! grob 'stencil #f)))

% Rhythm-tab settings for use inside \context { \TabStaff } (no TabStaff. prefix).
% Unlike LilyPond's \tabFullNotation, this does NOT revert
% NoteColumn.ignore-collision — leaving it true is what keeps two-voice
% fret numbers in a single vertical column.
ukeRhythmTab = {
  % time signature
  \revert TimeSignature.stencil
  % single stems (not LilyPond's default double stem on half notes;
  % half/whole values are circled instead)
  \revert Stem.length
  \revert Stem.no-stem-extend
  \revert Flag.style
  \revert Stem.details
  \revert Stem.stencil
  \revert Flag.stencil
  \revert Stem.X-extent
  \set autoBeaming = ##t
  % Keep the TabStaff default: do not revert this.
  \override NoteColumn.ignore-collision = ##t
  % beams, dots, ties, slurs
  \revert Beam.stencil
  \revert StemTremolo.stencil
  \revert Dots.stencil
  \revert Tie.stencil
  \revert Tie.after-line-breaking
  \revert RepeatTie.stencil
  \revert RepeatTie.after-line-breaking
  \revert LaissezVibrerTie.stencil
  \revert Slur.control-points
  \revert PhrasingSlur.stencil
  % tuplet stuff
  \revert TupletBracket.stencil
  \revert TupletNumber.stencil
  % dynamic signs
  \revert DynamicText.stencil
  \revert DynamicTextSpanner.stencil
  \revert Hairpin.stencil
  % rests
  \revert Rest.stencil
  \revert MultiMeasureRest.stencil
  \revert MultiMeasureRestNumber.stencil
  \revert MultiMeasureRestScript.stencil
  \revert MultiMeasureRestText.stencil
  \override Rest.staff-position = #uke-tab-rest-staff-position
  \override MultiMeasureRest.staff-position = #uke-tab-mmrest-staff-position
  \override Rest.before-line-breaking = #uke-hide-voice-two-tab-rest
  \override MultiMeasureRest.before-line-breaking = #uke-hide-voice-two-tab-rest
  \override TabNoteHead.before-line-breaking = #uke-hide-unison-tab-head
  % markups etc.
  \revert Glissando.stencil
  \revert Script.stencil
  \revert TextScript.stencil
  \revert TextSpanner.stencil
  \revert Arpeggio.stencil
  \override TabNoteHead.stencil = #uke-rhythm-tab-note-head
}

% Songs that still call \tabFullNotation must not revert ignore-collision.
tabFullNotation = {
  \ukeRhythmTab
  \override TabStaff.NoteColumn.ignore-collision = ##t
  \override NoteColumn.ignore-collision = ##t
}

\layout {
  \context {
    \TabStaff
    \ukeRhythmTab
    % stacked T/A/B clef (Hal Leonard / LilyPond "moderntab")
    clefGlyph = "markup.moderntab"
    clefPosition = #0
    \override NoteColumn.ignore-collision = ##t
  }
  \context {
    \TabVoice
    % Default down, matching the Hal Leonard guide. \voiceOne / \voiceTwo
    % still set stems up / down in multi-voice arrangements.
    \override Stem.direction = #DOWN
  }
}
