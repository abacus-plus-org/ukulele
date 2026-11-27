\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Row, Row, Row Your Boat - Traditional (Eliphalet Oram Lyte, 1852), toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional round; E. O. Lyte, 1852; Franklin Square Song Collection scan is public domain). Full verse entered.
% Key of C, 6/8 (two beats per bar, dotted quarter = one beat), chords C and G7. One verse, 8 bars, 4 bars per line.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4. = 64) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (Eliphalet Oram Lyte, 1852).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Row, Row, Row Your Boat" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Nursery Rhyme"
  language      = "English"
  era           = "1800s"
  songkey       = "C"
  timesig       = "6/8"
  occasion      = "Kids; Round"
  technique     = "Strumming; Basic Open Chords; 6/8 Lilt"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Nursery Rhyme; English; 1800s; Strumming; Basic Open Chords; 6/8 Lilt; C; 6/8; Kids; Round; Public Domain"
  difficulty    = "1.2"
  difficultyraw = "2.55"
  % end tags
}

\paper {
  #(set-paper-size "a4")
  top-margin = 15
  bottom-margin = 15
  left-margin = 18
  right-margin = 18
  system-system-spacing.basic-distance = #12
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
  \key c \major
  \time 6/8
}

melody = \relative c' {
  c4. c4. | c4 d8 e4. | e4 d8 e4 f8 | g2. |
  \break
  c8 c c g g g | e e e c c c | g'4 f8 e4 d8 | c2. |
  \bar "|."
}

harmony = \chordmode {
  c2. | c2. | c2. | c2. | c2. | c2. | g2.:7 | c2. |
}

words = \lyricmode {
  Row, row, row your boat,
  gent -- ly down the stream.
  Mer -- ri -- ly, mer -- ri -- ly, mer -- ri -- ly, mer -- ri -- ly,
  life is but a dream.
}

\score {
  <<
    \new ChordNames \with {
      \override ChordName.font-size = #4
      \override ChordName.font-series = #'bold
    } { \set chordChanges = ##t \harmony }

    \new FretBoards \with {
      stringTunings = #ukulele-tuning
      \override FretBoard.size = #1.6
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
      \new Lyrics \lyricsto "melody" { \words }
    >>
  >>
  \layout {
    #(layout-set-staff-size 22)
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
% Melody: traditional round; checked against standard children's lead sheets, in C.
% ------------------------------------------------------------------
