\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% The Wheels on the Bus - Traditional, toddler style (low-G, linear GCEA).
% RIGHTS: public. Treated as a traditional song; the earliest known printing credits Verna Hills (1939, words). Full first verse entered.
% Key of C, chords C and G7 (G7 is just three easy fingers). 4/4 with one pickup eighth; one verse, 7 bars (4 + 3).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 96) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional.
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "The Wheels on the Bus" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Children's Song"
  language      = "English"
  era           = "Traditional"
  songkey       = "C"
  timesig       = "4/4"
  occasion      = "Kids; Action Song"
  technique     = "Strumming; Basic Open Chords"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain (check)"
  tags          = "Children's Song; English; Traditional; Strumming; Basic Open Chords; C; 4/4; Kids; Action Song; Public Domain (check)"
  difficulty    = "0.3"
  difficultyraw = "1.35"
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
  \partial 8
}

melody = \relative c' {
  g8 | c4 c8 c c4 e | g4 e c2 | d4 b g2 | g'4 e c4. g8 |
  \break
  c4 c8 c c4 e | g4 e c2 | d4 g, g8 c4. |
  \bar "|."
}

harmony = \chordmode {
  s8 | c1 | c1 | g1:7 | c1 | c1 | c1 | g2:7 c2 |
}

words = \lyricmode {
  The wheels on the bus go round and round,
  round and round, round and round,
  The wheels on the bus go round and round,
  all through the town.
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
    #(layout-set-staff-size 19)
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
% Melody: traditional children's song; checked against the Easy Breezy Piano C sheet and other standard lead sheets.
% ------------------------------------------------------------------
