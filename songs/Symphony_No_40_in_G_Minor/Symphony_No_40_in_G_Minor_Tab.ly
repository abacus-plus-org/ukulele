\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"
% Standing rule: D7 is 2-0-2-0 (the predefined shape is 2-2-2-3).
\storePredefinedDiagram #default-fret-table \chordmode { d:7 } #ukulele-tuning "2;o;2;o;"
% Bb is not in the English-language predefined table (stored there as bes). Partial barre at fret 1.
\storePredefinedDiagram #default-fret-table \chordmode { bf } #ukulele-tuning "3-3;2-2;1-1-(;1-1-);"

% ------------------------------------------------------------------
% Symphony No. 40 in G minor, K. 550, 1st movement (Molto allegro) — W. A. Mozart, 1788.
% Solo chord-melody arrangement for LOW-G ukulele (G3 C4 E4 A4), US Letter.
% RIGHTS: public. Wolfgang Amadeus Mozart, Symphony No. 40 in G minor, K. 550
% (completed 25 July 1788), public domain worldwide. Instrumental, no lyrics.
%
% TITLE: "Symphony No. 40 in G Minor" is English title case after Chicago
% (CMOS 8.159 / 8.163): principal words are capitalized; the short preposition
% "in" stays lowercase. "Minor" is a principal word naming the mode, so it is
% capitalized (not "G minor"). "No." is the CMOS abbreviation for Number.
%
% CONTENTS (main exposition themes of the first movement, sonata form):
%   Theme I  = Mozart mm. 1-16 (first group through the half cadence on D).
%   Theme II = Mozart mm. 44-51 (second theme, first period in B-flat major,
%              ending on the B-flat cadence). The piano restatement of Theme I
%              (mm. 20-27), the long transition (mm. 28-43), the restatement of
%              Theme II, the closing group, the development, recapitulation and
%              coda are left out.
%
% KEY: original G minor; Theme II is in B-flat major (as in the score). The two
%   keys share a two-flat signature; the tonic change is still a key change.
% REGISTER: Theme I mm. 1-15 and all of Theme II are written one octave below
%   the first-violin part so the tune stays on the uke (the violin peaks at C6).
%   The two forte D4 eighths at the end of m. 16 stay at Mozart's pitch (dropping
%   them would give D3, below open G3). Nothing is written below G3. Highest
%   note C5 (A string, fret 3).
%
% SIMPLIFICATIONS: violin bowing slurs are realized as hammer-ons or pull-offs
%   only when both notes sit on the same string; cross-string slurs are omitted.
%   Dynamics, most staccato dots, and the exposition repeat are omitted so the
%   tab stays readable. Mm. 17-43 and everything after m. 51 are left out. The
%   last bar holds a B-flat cadence (Mozart's m. 51 is a quarter B-flat and rests).
%
% String numbers when forced: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 120) is a playable Allegro for chord-melody (MIDI only, not printed).
% The score is alla breve (cut time); this sheet uses a numeric 2/2 signature.
% Credit: Wolfgang Amadeus Mozart, K. 550, 1788.
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #3.5 "Symphony No. 40 in G Minor" \vspace #0.8 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Classical"
  language      = "Instrumental"
  era           = "1700s"
  songkey       = "Gm"
  timesig       = "2/2"
  occasion      = "Solo Showpiece"
  technique     = "7th & Minor Chords; Moderate Tempo; Barre Chords; Key Change; Hammer-ons & Pull-offs; Low-G Bass Line; Chord Melody"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Classical; Instrumental; 1700s; 7th & Minor Chords; Moderate Tempo; Barre Chords; Key Change; Hammer-ons & Pull-offs; Low-G Bass Line; Chord Melody; Gm; 2/2; Solo Showpiece; Public Domain"
  difficulty    = "8.4"
  difficultyraw = "12.15"
  % end tags
}

\paper {
  #(set-paper-size "letter")
  top-margin = 10
  bottom-margin = 10
  left-margin = 13
  right-margin = 13
  system-system-spacing.basic-distance = #7
  system-system-spacing.minimum-distance = #5.5
  system-system-spacing.padding = #1.2
  markup-system-spacing.padding = #1.4
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  #(define fonts (set-global-fonts #:roman "TeX Gyre Heros" #:sans "TeX Gyre Heros"
                   #:factor (/ staff-height pt 20)))
}

lowG = \stringTuning <g c' e' a'>

global = {
  \key g \minor
  \numericTimeSignature
  \time 2/2
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
}

sectionMark = #(define-music-function (text) (markup?)
  #{
    \once \override Score.RehearsalMark.break-align-symbols = #'(staff-bar key-signature time-signature)
    \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.font-size = #-1
    \once \override Score.RehearsalMark.padding = #0.55
    \mark \markup \small \bold #text
  #})

% Melody (voice 1, stems up). Forced string numbers: \1 A, \2 E, \3 C, \4 G.
melodyVoice = \fixed c {
  \sectionMark "Theme I"
  % Mozart mm. 1-4, one octave below the violin (opening sighing theme).
  r2 r4 ef'8\3( d'8\3) | % 1
  d'4\3 ef'8\3( d'8\3) d'4\3 ef'8\3( d'8\3) | % 2
  d'4\3 bf'4\1 r4 bf'8\1 a'8\1 | % 3
  g'4\2 g'8\2( f'8\2) ef'8\3( d'8\3) c'4\3 | % 4
  \break
  % Mozart mm. 5-8 (the sequence a step lower, then V).
  c'4\3 c'4\3 r4 d'8\3( c'8\3) | % 5
  c'4\3 d'8\3( c'8\3) c'4\3 d'8\3( c'8\3) | % 6
  c'4\3 a'4\1 r4 a'8\1 g'8\2 | % 7
  fs'4\2 fs'8\2 ef'8\3 d'8\3( c'8\3) bf4\4 | % 8
  \break
  % Mozart mm. 9-12 (tonic, then the D7 arpeggios).
  bf4\4 bf4\4 r4 bf'8\1 a'8\1 | % 9
  a'4\1 c''4\1 fs'4\2 a'4\1 | % 10
  g'4\2 d'4\3 r4 bf'8\1 a'8\1 | % 11
  a'4\1 c''4\1 fs'4\2 a'4\1 | % 12
  \break
  % Mozart mm. 13-16 (descent and half cadence on D).
  g'4\2 bf'4\1 a'8\1 g'8\2( f'8\2) ef'8\3 | % 13
  d'1\3 | % 14
  cs'1\3 | % 15
  d'2\3 r4 d'8\3 d'8\3 \bar "||" | % 16
  \break
  % Mozart mm. 44-47, one octave below the violin (second theme, B-flat major).
  \key bf \major
  \sectionMark "Theme II"
  f'2.\2( e'4\2) | % 17
  ef'4\3 r4 r2 | % 18
  r4 bf4\4 bf4\4 c'4\3 | % 19
  d'4.\3( ef'8\3) c'4\3 r4 | % 20
  \break
  % Mozart mm. 48-51, cadence held on B-flat.
  g'2.\2( fs'4\2) | % 21
  f'4\2( e'4\2) ef'4\3( d'4\3) | % 22
  c'4\3 ef'2\3 a4\4 | % 23
  bf4\4 r4 r2 \bar "|." % 24
}

% Accompaniment (voice 2, stems down): bass and chord tones under long notes.
% Always below the melody; nothing below open low G (G3).
accompVoice = \fixed c {
  % 1-4
  r2 r4 g4\4 | % 1
  g2\4 g2\4 | % 2
  g4\4 <g\4 d'\3 g'\2>4 r4 r4 | % 3
  g4\4 r4 r4 g4\4 | % 4
  \break
  % 5-8
  g4\4 g4\4 r4 g4\4 | % 5
  g2\4 g2\4 | % 6
  a4\4 <a\4 c'\3 fs'\2>4 r4 r4 | % 7
  a4\4 a8\4 r8 r4 r4 | % 8
  \break
  % 9-12
  r2 r2 | % 9
  <a\4 c'\3 fs'\2>4 <a\4 c'\3 fs'\2>4 <a\4 c'\3>4 <a\4 c'\3 fs'\2>4 | % 10
  <g\4 d'\3>4 g4\4 r4 r4 | % 11
  <a\4 c'\3 fs'\2>4 <a\4 c'\3 fs'\2>4 <a\4 c'\3>4 <a\4 c'\3 fs'\2>4 | % 12
  \break
  % 13-16
  <g\4 d'\3>4 <g\4 d'\3 g'\2>4 r4 r4 | % 13
  a1\4 | % 14
  g1\4 | % 15
  a2\4 r4 r4 \bar "||" | % 16
  \break
  \key bf \major
  % 17-20 (Mozart 44-47)
  <bf\4 d'\3>2. r4 | % 17
  bf4\4 r4 r2 | % 18
  r2 r4 bf4\4 | % 19
  a4.\4 r8 a4\4 r4 | % 20
  \break
  % 21-24 (Mozart 48-51)
  <g\4 ef'\3>2. r4 | % 21
  <a\4 c'\3>4 <a\4 c'\3>4 a4\4 a4\4 | % 22
  a4\4 a2\4 r4 | % 23
  <d'\3 f'\2 bf'\1>4 <bf\4 d'\3 f'\2 bf'\1>2 r4 \bar "|." % 24
}

harmony = \chordmode {
  g1:m | % 1
  g1:m | % 2
  g1:m | % 3
  g1:m | % 4
  c1:m | % 5
  c1:m | % 6
  d1:7 | % 7
  d1:7 | % 8
  g1:m | % 9
  d1:7 | % 10
  g1:m | % 11
  d1:7 | % 12
  g1:m | % 13
  d1 | % 14
  a1:7 | % 15
  d1 | % 16
  bf1 | % 17
  bf1 | % 18
  bf1 | % 19
  f1:7 | % 20
  c1:m | % 21
  f1:7 | % 22
  f1:7 | % 23
  bf1 | % 24
}

% INSTRUMENTAL: no lyrics.
\score {
  <<
    \new ChordNames \with {
      \override ChordName.font-size = #1.6
      \override ChordName.font-series = #'bold
    } { \set chordChanges = ##t \harmony }

    \new FretBoards \with {
      stringTunings = #ukulele-tuning
      \override FretBoard.size = #1.0
      \override FretBoard.fret-diagram-details.finger-code = #'none
    } { \set chordChanges = ##t \harmony }

    \new StaffGroup <<
            
      \new TabStaff \with {
        stringTunings = \lowG
        \override TabNoteHead.font-size = #-1
      } << \clef moderntab
        \new TabVoice = "melody" { \tabFullNotation \voiceOne \global \melodyVoice }
        \new TabVoice = "accomp" { \tabFullNotation \voiceTwo \global \accompVoice }
      >>
    >>
  >>
  \layout {
    #(layout-set-staff-size 17)
    indent = #0
    \context {
      \Staff
      \omit StringNumber
    }
    \context {
      \TabStaff
      \omit StringNumber
    }
    \context {
      \FretBoards
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1.2
    }
    \context {
      \Score
      \remove Metronome_mark_engraver
      \override RehearsalMark.self-alignment-X = #LEFT
      \override NonMusicalPaperColumn.line-break-permission = ##f
    }
  }
}

% ---------------- MIDI: the SAME two tab voices (melody = track 1, accomp = track 2) ----------------
% Audio is rendered from this block and must match the tab. Tempo (MIDI only, not printed): quarter = 120.


% ------------------------------------------------------------------
% Melody: Mozart, K. 550, first movement; checked against the Breitkopf & Härtel complete edition (IMSLP) and the mfiles violin I part. Opening theme of the movement.
% ------------------------------------------------------------------
