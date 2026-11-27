\version "2.24.4"
\language "english"
\include "../../include/rhythm-tab-guide.ily"
#(set-global-staff-size 24.0)

% ------------------------------------------------------------------
% The Blue Danube Waltz (An der schoenen blauen Donau, Op. 314) - Johann Strauss II, 1867: the main theme of Waltz No. 1 (pickup + 33 bars).
% Solo chord-melody arrangement for LOW-G ukulele (G3 C4 E4 A4), US Letter. RIGHTS: public domain.
% Tabs only: chord names, chord diagrams, low-G tab with two voices and a forced string number on every note.
% Melody (voice 1, stems up) = the waltz tune; accompaniment (voice 2, stems down) = the waltz "oom-pah-pah": a bass note on beat 1
%   on the g or C string (root A3 / D4 / E4, or the inversion D/F#, A7/E, A7/G), then a two-note chord on beats 2 and 3 under the tune,
%   which rings on over the pattern when it holds a note. Accompaniment always below the melody, nothing below the open low G (G3).
% REGISTER: bars 1-16 at Strauss's pitch, with the octave leaps up to A5 (A string fret 12) and B5 (A string fret 14, the one note
%   above fret 12, at bars 10-11 and 14-15); bars 17-33 are one octave below Strauss so the climax (F#6 in the score) peaks at F#5,
%   A string fret 9, keeping the real contour of the second half within frets 0-9.
% LEFT HAND: small digit LEFT of a fret number = finger (1 index, 2 middle, 3 ring, 4 pinky); "pos. IX" = position (finger 1 over fret 9,
%   one finger per fret). Between marks every fretted note WITHOUT a digit uses its position's finger (fret - position + 1); digits are
%   printed for every note in positions IV and up, and in the low positions only where the finger differs. "(slide 4)" after a
%   position mark = guide finger: keep that finger on its string and slide it to the new fret as the hand shifts. "barre II" = finger 1 flat
%   across fret 2 (held until the next position mark).
% Harmony: D | A7 | D | Em7 Em | A7 | D | Em7 A7 D. Diagrams = the notes actually played at each chord change (x = string not used).
% ------------------------------------------------------------------

\header {
  title = \markup \fontsize #2 "The Blue Danube Waltz"
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Classical"
  language      = "Instrumental"
  era           = "1800s"
  songkey       = "D"
  timesig       = "3/4"
  occasion      = "Solo Showpiece"
  technique     = "Strumming; More Open Chords; Waltz; Fast Tempo; Position Shifts (above fret 5); Fret 12+; Barre Chords (Letter solo only); Fingerpicking Pattern (Letter solo only); Low-G Bass Line (Letter solo only); Slides (Letter solo only); Chord Melody (Letter solo only)"
  versions      = "Letter Sheet; Audio; Letter Tab + Chord Sheet; Letter Low-G Solo; Alternate Versions"
  rights        = "Public Domain"
  tags          = "Classical; Instrumental; 1800s; Strumming; More Open Chords; Waltz; Fast Tempo; Position Shifts (above fret 5); Fret 12+; Barre Chords; Fingerpicking Pattern; Low-G Bass Line; Slides; Chord Melody; D; 3/4; Solo Showpiece; Public Domain"
  difficulty    = "9.6"
  difficultyraw = "13.75"
  % end tags
}

\paper {
  #(set-paper-size "letter")
  top-margin = 0.6\in
  bottom-margin = 0.6\in
  left-margin = 0.75\in
  right-margin = 0.75\in
  print-page-number = ##f
  system-system-spacing = #'((basic-distance . 6) (minimum-distance . 3) (padding . 1.5) (stretchability . 30))
  markup-system-spacing = #'((basic-distance . 5) (padding . 1.5) (stretchability . 10))
  top-system-spacing = #'((basic-distance . 3) (padding . 1) (stretchability . 5))
  last-bottom-spacing = #'((basic-distance . 3) (padding . 1) (stretchability . 30))
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  ragged-last = ##f
  #(define fonts (set-global-fonts #:roman "TeX Gyre Heros" #:sans "TeX Gyre Heros"
                   #:factor (/ staff-height pt 20)))
}

lowG = \stringTuning <g c' e' a'>

global = {
  \key d \major
  \time 3/4
  \partial 4
}
melodyVoice = \fixed c {
    <d'\3>4^\markup \italic "pos. II" |
    <d'\3-1>4^\markup \italic "barre II" <fs'\2>4 <a'\1>4 |
    <a'\1>2 <a''\1-4>4^\markup \italic "pos. IX" |
    <a''\1>2 <fs''\1-4>4^\markup \italic "pos. VI (slide 1 & 4)" |
    <fs''\1>2 <d'\3-1>4^\markup \italic "pos. II (slide 1), barre II" |
    \break
    <d'\3>4 <fs'\2>4 <a'\1>4 |
    <a'\1>2 <a''\1-4>4^\markup \italic "pos. IX" |
    <a''\1>2 <g''\1-2>4 |
    <g''\1>2 <cs'\3>4^\markup \italic "pos. I" |
    \break
    <cs'\3>4 <e'\2>4 <b'\1>4 |
    <b'\1>2 <b''\1-4>4^\markup \italic "pos. XI" |
    <b''\1>2 <g''\1-4>4^\markup \italic "pos. VII (slide 4)" |
    <g''\1>2 <cs'\3>4^\markup \italic "pos. I" |
    \break
    <cs'\3>4 <e'\2>4 <b'\1>4 |
    <b'\1-1>2^\markup \italic "pos. II (slide 1), barre II" <b''\1-4>4^\markup \italic "pos. XI" |
    <b''\1>2 <fs''\1-4>4^\markup \italic "pos. VI (slide 4)" |
    <fs''\1>2 <d'\3-1>4^\markup \italic "pos. II (slide 1), barre II" |
    \break
    <d'\3>4 <fs'\2>4 <a'\1>4 |
    <d''\1>2 <d''\1>4 |
    <d''\1>2 <a'\1>4 |
    <a'\1>2 <d'\3>4 |
    \break
    <d'\3>4 <fs'\2>4 <a'\1>4 |
    <d''\1>2 <d''\1>4 |
    <d''\1>2 <b'\1>4 |
    <b'\1>2 <e'\2>4 |
    \break
    <e'\2>4 <g'\2>4^\markup \italic "pos. I" <b'\1>8 r8 |
    <b'\1>2.~ |
    <b'\1>4 <gs'\2>4 <a'\1>4 |
    <fs''\1-4>2.~^\markup \italic "pos. VI" |
    \break
    <fs''\1>4 <d''\1>4^\markup \italic "pos. II (slide 4), barre II" <fs'\2>4 |
    <fs'\2>2 <e'\2>4 |
    <b'\1>2^\markup \italic "pos. I" <a'\1>4 |
    <d'\3-1>4.^\markup \italic "pos. II (slide 1), barre II" <d''\1>8 <d''\1>4 |
    <d''\1-1>4^\markup \italic "pos. V (slide 1), barre V" r2 |
    \bar "|."
}

accompVoice = \fixed c {
    s4 |
    <a\4-1>4 <a\4 d'\3>4 <a\4 fs'\2>4 |
    <d'\3>4 <a\4 fs'\2>4 <fs'\4-3 a'\3-1>4 |
    <fs'\4>4 <fs'\4 a'\3>4 <d'\4-2 fs'\3-1>4 |
    <d'\4>4 <d'\4 fs'\3>4 <a\4-1>4 |
    \break
    <a\4>4 <a\4 d'\3>4 <a\4 fs'\2>4 |
    <a\4>4 <cs'\3 g'\2>4^\markup \italic "pos. I" <g\4 cs''\2-1>4 |
    <e'\4-1>4 <g\4 cs''\2>4 <g\4 cs''\2>4 |
    <e'\4-1>4 <g\4 cs''\2>4 <g\4>4 |
    \break
    <a\4>4 <g\4 cs'\3>4 <g\4 cs'\3>4 |
    <a\4-1>4 <cs'\3 g'\2>4 <g\4 e'\2>4 |
    <g\4>4 <g\4 e'\2>4 <g\4 cs''\2-3>4 |
    <e'\4-3>4 <g\4 cs''\2>4 <g\4>4 |
    \break
    <a\4>4 <g\4 cs'\3>4 <g\4 cs'\3>4 |
    <d'\3-1>4 <a\4 fs'\2>4 <fs'\4-1>4 |
    <fs'\4>4 <fs'\4>4 <d'\4-2 fs'\3-1>4 |
    <d'\4>4 <d'\4 fs'\3>4 <a\4-1>4 |
    \break
    <a\4>4 <a\4 d'\3>4 <a\4 fs'\2>4 |
    <d'\3>4 <a\4 fs'\2>4 <a\4 fs'\2>4 |
    <d'\3>4 <a\4 fs'\2>4 <a\4 fs'\2>4 |
    <d'\3>4 <a\4 fs'\2>4 <a\4>4 |
    \break
    <a\4>4 <a\4 d'\3>4 <a\4 fs'\2>4 |
    <e'\3>4 <g\4 d'\3>4 <g\4 d'\3>4 |
    <e'\3>4 <g\4 d'\3>4 <g\4 d'\3>4 |
    <e'\3>4 <g\4 d'\3>4 <g\4 d'\3>4 |
    \break
    <g\4>4 <g\4 e'\3>4 <g\4 e'\2>4 |
    <a\4-1>4 <g\4 cs'\3>4 <g\4 cs'\3>4 |
    <a\4-1>4 <g\4 cs'\3>4 <cs'\3 g'\2>4 |
    <d'\4-2>4 <d'\4 fs'\3-1>4 <d'\4 fs'\3>4 |
    \break
    <d'\4>4 <a\4-1 fs'\2-1>4 <a\4 d'\3>4 |
    <e'\3>4 <g\4 d'\3>4 <g\4 d'\3>4 |
    <a\4-1>4 <cs'\3 g'\2>4 <cs'\3 g'\2>4 |
    <a\4-1>4 <a\4>4 <a\4 fs'\2>4 |
    <d'\4-3 fs'\3-2 a'\2-1>2. |
}

harmony = \chordmode {
    s4 |
    d2. |
    d2. |
    d2. |
    d2. |
    d2. |
    a2.:7 |
    a2.:7 |
    a2.:7 |
    a2.:7 |
    a2.:7 |
    a2.:7 |
    a2.:7 |
    a2.:7 |
    d2. |
    d2. |
    d2. |
    d2. |
    d2. |
    d2. |
    d2. |
    d2. |
    e2.:m7 |
    e2.:m7 |
    e2.:m7 |
    e2.:m |
    a2.:7 |
    a2.:7 |
    d2. |
    d2. |
    e2.:m7 |
    a2.:7 |
    d2. |
    d2. |
}

frets = \fixed c {
    s4 |
    <a\4 d'\3 fs'\2 a'\1>2. |
    s2. |
    s2. |
    s2. |
    s2. |
    <a\4 cs'\3 g'\2 a'\1>2. |
    s2. |
    s2. |
    s2. |
    s2. |
    s2. |
    s2. |
    s2. |
    <a\4 d'\3 fs'\2>2. |
    s2. |
    s2. |
    s2. |
    s2. |
    s2. |
    s2. |
    s2. |
    <g\4 e'\3 d''\1>2. |
    s2. |
    s2. |
    <g\4 e'\3 e'\2 b'\1>2. |
    <a\4 cs'\3>2. |
    s2. |
    <d'\4 fs'\3 fs''\1>2. |
    s2. |
    <g\4 e'\3 e'\2>2. |
    <a\4 cs'\3 g'\2 a'\1>2. |
    <a\4 d'\3 fs'\2 d''\1>2. |
    s2. |
}

% INSTRUMENTAL: no lyrics.
\score {
  <<
    \new ChordNames \with {
      \override ChordName.font-size = #1.5
      \override ChordName.font-series = #'bold
    } { \set chordChanges = ##t \harmony }
    \new FretBoards \with {
      stringTunings = \lowG
      predefinedDiagramTable = ##f
      \override FretBoard.size = #1.6
      \override FretBoard.fret-diagram-details.finger-code = #'none
    } { \frets }
    \new TabStaff \with { stringTunings = \lowG } <<
      \new TabVoice = "melody" { \tabFullNotation \voiceOne \global \melodyVoice }
      \new TabVoice = "accomp" { \tabFullNotation \voiceTwo \global \accompVoice }
    >>
  >>
  \layout {
    #(layout-set-staff-size 24.0)
    indent = #0
    \context {
      \FretBoards
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 0) (padding . 0.6))
    }
    \context {
      \ChordNames
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((basic-distance . 0) (padding . 0.2))
    }
    \context { \TabVoice \override TabNoteHead.whiteout = ##t
      \consists "New_fingering_engraver"
      fingeringOrientations = #'(left)
      stringNumberOrientations = #'(right)
      \omit StringNumber
      \override Fingering.side-axis = #X
      \override Fingering.stencil = #ly:text-interface::print
      \override Fingering.font-encoding = #'latin1
      \override Fingering.font-shape = #'italic
      \override Fingering.font-size = #-4
      \override Fingering.X-offset = #-1.25
      \override Fingering.Y-offset = #0.55
      \override Fingering.whiteout = ##t
      \override Fingering.layer = #2
      \override TextScript.font-size = #-1.5
    }
    \context { \Score \remove Metronome_mark_engraver
      \override SpacingSpanner.uniform-stretching = ##t
      proportionalNotationDuration = #(ly:make-moment 1/8)
      \override BarLine.extra-spacing-width = #'(-1.5 . 1.5)
      \override NonMusicalPaperColumn.line-break-permission = ##f
    }
  }
}

% ---------------- MIDI: the SAME two tab voices (melodyVoice = track 1, accompVoice = track 2) ----------------
% The_Blue_Danube_Waltz_letter_lowG.mid / The_Blue_Danube_Waltz_solo.m4a are made from this block. Steady tempo, quarter = 160 (MIDI only, not printed).
\score {
  <<
    \new Staff \with { midiInstrument = "acoustic guitar (nylon)" } { \global \tempo 4 = 160 \melodyVoice }
    \new Staff \with { midiInstrument = "acoustic guitar (nylon)" } { \global \accompVoice }
  >>
  \midi { }
}

% ------------------------------------------------------------------
% Melody: Strauss II, Op. 314, Waltz No. 1; checked against public-domain orchestral editions (IMSLP / Mutopia).
% ------------------------------------------------------------------
