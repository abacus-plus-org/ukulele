\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Il était un petit navire - Traditionnel, toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional French sea song / children's song). Full first verse entered.
% Key of C, 2/4, chords C and G7. First verse (with the traditional ja-ja-jamais stutter), 14 bars.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 100) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditionnel.
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Il était un petit navire" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Children's Song; Sea Shanties & Sea Songs"
  language      = "French"
  era           = "Traditional"
  songkey       = "C"
  timesig       = "2/4"
  occasion      = "Kids"
  technique     = "Strumming; Basic Open Chords; Moderate Tempo"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Children's Song; Sea Shanties & Sea Songs; French; Traditional; Strumming; Basic Open Chords; Moderate Tempo; C; 2/4; Kids; Public Domain"
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
  system-system-spacing.basic-distance = #6
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
  e8 e e g | e8 f e e | e2 | d8 d d d | g8 d e d | d2 |
  \break
  c8 e e e | e8 e e g | f8 e4. | d8 d d d | d8 d d f | e8 d4. |
  \break
  c4 g'4 | e4 g4 |
  \bar "|."
}

harmony = \chordmode {
  c2 | c2 | c2 | g2:7 | g2:7 | g2:7 | c2 | c2 | c2 | g2:7 | g2:7 | g2:7 | c4 g4:7 | c4 g4:7 |
}

words = \lyricmode {
  Il é -- tait un pe -- tit na -- vi -- re
  Il é -- tait un pe -- tit na -- vi -- re
  Qui n'a -- vait ja -- ja -- ja -- mais na -- vi -- gué
  Qui n'a -- vait ja -- ja -- ja -- mais na -- vi -- gué
  O -- hé! O -- hé!
}

\score {
  <<
    \new ChordNames \with {
      \override ChordName.font-size = #4
      \override ChordName.font-series = #'bold
    } { \set chordChanges = ##t \harmony }

    \new FretBoards \with {
      stringTunings = #ukulele-tuning
      \override FretBoard.size = #1.1
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
    #(layout-set-staff-size 15)
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
% Melody: traditional; checked against pianumero.com letter notes and standard French children's editions, in C.
% ------------------------------------------------------------------
