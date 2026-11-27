\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% This Old Man - Traditional (English; printed 1906), toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional English counting song; printed 1906 in English Folk-Songs for Schools; Gilchrist 'Jack Jintle' variant 1937). Full first verse entered.
% Key of C, 2/4, chords C, F, G and G7. One verse, 8 bars. The two quick notes in bar 4 and the run in bar 6 follow the source rhythm.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 76) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (English; printed 1906).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "This Old Man" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Nursery Rhyme"
  language      = "English"
  era           = "Traditional"
  songkey       = "C"
  timesig       = "2/4"
  occasion      = "Kids; Counting & Learning"
  technique     = "Strumming; More Open Chords"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Nursery Rhyme; English; Traditional; Strumming; More Open Chords; C; 2/4; Kids; Counting & Learning; Public Domain"
  difficulty    = "1.4"
  difficultyraw = "2.85"
  % end tags
}

\paper {
  #(set-paper-size "a4")
  top-margin = 15
  bottom-margin = 15
  left-margin = 18
  right-margin = 18
  system-system-spacing.basic-distance = #8
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
  \time 2/4
}

melody = \relative c' {
  g'8 e g4 | g8 e g4 | a8 g f e | d e f e16 f |
  \break
  g8 c, c16 c c8 | c16 d e f g4 | g8 d d f | e d c4 |
  \bar "|."
}

harmony = \chordmode {
  c2 | c2 | f2 | g2 | c2 | c2 | g4 g4:7 | c2 |
}

words = \lyricmode {
  This old man, he played one,
  he played knick -- knack on my thumb, with a
  knick -- knack pad -- dy -- whack,
  give the dog a bone,
  this old man came roll -- ing home.
}

\score {
  <<
    \new ChordNames \with {
      \override ChordName.font-size = #4
      \override ChordName.font-series = #'bold
    } { \set chordChanges = ##t \harmony }

    \new FretBoards \with {
      stringTunings = #ukulele-tuning
      \override FretBoard.size = #1.2
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
    #(layout-set-staff-size 17)
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
% Melody: traditional; checked against the mfiles C lead sheet.
% ------------------------------------------------------------------
