\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% London Bridge Is Falling Down - Traditional, toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional nursery rhyme, 17th c. or earlier). Full first verse entered.
% Key of C, chords C and G7. One verse, 8 bars, 4 bars per line.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 100) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional.
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "London Bridge Is Falling Down" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Nursery Rhyme"
  language      = "English"
  era           = "Traditional"
  songkey       = "C"
  timesig       = "4/4"
  occasion      = "Kids; Action Song"
  technique     = "Strumming; Basic Open Chords; Moderate Tempo"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Nursery Rhyme; English; Traditional; Strumming; Basic Open Chords; Moderate Tempo; C; 4/4; Kids; Action Song; Public Domain"
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
  \time 4/4
}

melody = \relative c' {
  g'4. a8 g4 f | e f g2 | d4 e f2 | e4 f g2 |
  \break
  g4. a8 g4 f | e f g2 | d2 g | e c |
  \bar "|."
}

harmony = \chordmode {
  c1 | c1 | g1:7 | c1 | c1 | c1 | g1:7 | c1 |
}

words = \lyricmode {
  Lon -- don Bridge is fall -- ing down,
  fall -- ing down, fall -- ing down,
  Lon -- don Bridge is fall -- ing down,
  My fair la -- dy.
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
% Melody: traditional; checked against commonly printed children's lead sheets, in C.
% ------------------------------------------------------------------
