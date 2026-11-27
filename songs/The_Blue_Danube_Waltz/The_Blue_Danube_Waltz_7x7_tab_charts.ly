\version "2.24.4"
\language "english"
#(set-global-staff-size 16.8)
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"
\storePredefinedDiagram #default-fret-table \chordmode { d:7 } #ukulele-tuning "2-1;o;2-2;o;"

% Public-domain instrumental: Johann Strauss II, Op. 314 (1866).
% Entire catalog Waltz 1A: pickup, 32 bars, and closing bar.
% Catalog pitches, harmony and musical line breaks preserved. No MIDI/audio rebuilt.
% D7 override above is the standing open 2-0-2-0 voicing.

\header {
  title = \markup \fontsize #1 "The Blue Danube Waltz"
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
  difficulty    = "6.4"
  difficultyraw = "9.55"
  % end tags
}

\paper {
  #(set-paper-size "letter")
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 15\mm
  right-margin = 15\mm
  system-system-spacing.basic-distance = #9.6
  system-system-spacing.padding = #1.5
  system-system-spacing.minimum-distance = #0
  markup-system-spacing.padding = #3.0
  score-markup-spacing.padding = #2.0
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

melody = \relative c' {
  d4 |
  d4 fs4 a4 |
  a2 a'4 |
  a2 fs4 |
  fs2 d,4 |
  \break
  d4 fs4 a4 |
  a2 a'4 |
  a2 g4 |
  g2 cs,,4 |
  \break
  cs4 e4 b'4 |
  b2 b'4 |
  b2 g4 |
  g2 cs,,4 |
  \break
  cs4 e4 b'4 |
  b2 b'4 |
  b2 fs4 |
  fs2 d,4 |
  \break
  d4 fs4 a4 |
  d2 d4 |
  d2 a'4 |
  a2 d,,4 |
  \break
  d4 fs4 a4 |
  d2 d4 |
  d2 b'4 |
  b2 e,4 |
  \break
  e4 g4 b8 r8 |
  b2.~ |
  b4 gs4 a4 |
  fs2.~ |
  \break
  fs4 d4 fs4 |
  fs2 e4 |
  b'2 a4 |
  d,4. d8 d4 |
  d4 r2 | \bar "|."
  }

harmony = \chordmode {
  s4 | d2. | d2. | d2. | d2. | d2. | a2.:7 | a2.:7 | a2.:7 | a2.:7 | a2.:7 | a2.:7 | a2.:7 | a2.:7 | d2. | d2. | d2. | d2. | d2. | d2. | d2. | d2. | e2.:m7 | e2.:m7 | e2.:m7 | e2.:m | a2.:7 | a2.:7 | d2. | d2. | e2.:m7 | a2.:7 | d2. | d2. |
}

\score {
  <<
    \new ChordNames \with {
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing.padding = #0.8
      \override ChordName.font-size = #1.5
      \override ChordName.font-series = #'bold
    } { \set chordChanges = ##t \harmony }
    \new FretBoards \with {
      stringTunings = #ukulele-tuning
      \override FretBoard.size = #1.10
      \override FretBoard.fret-diagram-details.finger-code = #'none
    } { \set chordChanges = ##t \harmony }
    \new TabStaff \with { stringTunings = \lowG } {
      \new TabVoice = "melody" { \tabFullNotation \global
        \melody
      }
    }
  >>
  \layout {
    #(layout-set-staff-size 16.8)
    indent = #0
    \context {
      \FretBoards
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
    }
    \context { \Score \remove Metronome_mark_engraver 
      % Only the explicit \break commands (phrase ends) start a new line.
      \override NonMusicalPaperColumn.line-break-permission = ##f }
  }
}


% ------------------------------------------------------------------
% Melody: Strauss II, Op. 314, Waltz No. 1; checked against public-domain orchestral editions (IMSLP / Mutopia).
% ------------------------------------------------------------------
