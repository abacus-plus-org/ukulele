\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% The Blue Danube Waltz - Johann Strauss II (An der schönen blauen Donau, Op. 314, 1866), toddler style (low-G, linear GCEA).
% RIGHTS: public. Johann Strauss II, An der schönen blauen Donau, Op. 314 (1866-67), public domain. Melody and chords transcribed from public-domain editions' note data (see sources).
% INSTRUMENTAL, no lyrics. Key of D (the original), 3/4 waltz with a one-beat pickup: Waltz No. 1, first strain (the main theme), 32 bars and a closing bar. Chords D, A7, Em7, Em. Range C#4 to B5; notes above B5 are written an octave lower so the tune fits the uke.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 160) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Johann Strauss II (An der schönen blauen Donau, Op. 314, 1866).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "The Blue Danube Waltz" \vspace #2.4 }
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
  top-margin = 15
  bottom-margin = 15
  left-margin = 18
  right-margin = 18
  system-system-spacing.basic-distance = #9
  system-system-spacing.padding = #3
  markup-system-spacing.padding = #4
  score-markup-spacing.padding = #9
  markup-markup-spacing.padding = #3
  ragged-bottom = ##t
  ragged-last-bottom = ##t
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
  d4 r2 \bar "|."
}

harmony = \chordmode {
  s4 | d2. | d2. | d2. | d2. | d2. | a2.:7 | a2.:7 | a2.:7 | a2.:7 | a2.:7 | a2.:7 | a2.:7 | a2.:7 | d2. | d2. | d2. | d2. | d2. | d2. | d2. | d2. | e2.:m7 | e2.:m7 | e2.:m7 | e2.:m | a2.:7 | a2.:7 | d2. | d2. | e2.:m7 | a2.:7 | d2. | d2. |
}

% INSTRUMENTAL: no lyrics.

\score {
  <<
    \new ChordNames \with {
      \override ChordName.font-size = #4
      \override ChordName.font-series = #'bold
    } { \set chordChanges = ##t \harmony }

    \new FretBoards \with {
      stringTunings = #ukulele-tuning
      \override FretBoard.size = #1.3
      \override FretBoard.fret-diagram-details.finger-code = #'none
    } { \set chordChanges = ##t \harmony }

    \new StaffGroup <<
            
      \new TabStaff \with {
        stringTunings = \lowG
        \override TabNoteHead.font-size = #-1
      } { \clef moderntab
        \new TabVoice = "melody" { \global
          \melody
        }
      }
    >>
  >>
  \layout {
    #(layout-set-staff-size 18)
    indent = #0
    \context {
      \Lyrics
      \override LyricText.font-name = "TeX Gyre Heros"
      \override LyricText.font-size = #1.1
      \override LyricSpace.minimum-distance = #1.0
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1.5
      \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #1.5
    }
    \context {
      \Score
      \override MetronomeMark.padding = #3.5
      \override MetronomeMark.outside-staff-padding = #2.5
      % Only the explicit \break commands start a new line.
      \override NonMusicalPaperColumn.line-break-permission = ##f
      
    }
    \context {
      \TabStaff
      }
    \context {
      \FretBoards
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #3
    }
  }
}

% ------------------------------------------------------------------
% Melody: Strauss II, Op. 314, Waltz No. 1; checked against public-domain orchestral editions (IMSLP / Mutopia).
% ------------------------------------------------------------------
