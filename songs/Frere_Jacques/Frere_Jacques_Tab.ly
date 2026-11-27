\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Frère Jacques - Traditionnel, toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional French round; printed in many 19th-c. collections). Full first verse entered.
% Key of C, chords C and G7. One verse, 8 bars, 4 bars per line. Each line is sung twice, as usual.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 100) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditionnel.
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Frère Jacques" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Nursery Rhyme"
  language      = "French"
  era           = "Traditional"
  songkey       = "C"
  timesig       = "4/4"
  occasion      = "Kids; Round"
  technique     = "Strumming; Basic Open Chords; Frequent Chord Changes; Moderate Tempo"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Nursery Rhyme; French; Traditional; Strumming; Basic Open Chords; Frequent Chord Changes; Moderate Tempo; C; 4/4; Kids; Round; Public Domain"
  difficulty    = "2.3"
  difficultyraw = "4.00"
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
  c4 d e c | c4 d e c | e4 f g2 | e4 f g2 |
  \break
  g8 a g f e4 c | g'8 a g f e4 c | c4 g c2 | c4 g c2 |
  \bar "|."
}

harmony = \chordmode {
  c1 | c1 | c1 | c1 | g2:7 c2 | g2:7 c2 | c1 | c1 |
}

words = \lyricmode {
  Frè -- re Jac -- ques,
  Frè -- re Jac -- ques,
  Dor -- mez -- vous?
  Dor -- mez -- vous?
  Son -- nez les ma -- ti -- nes!
  Son -- nez les ma -- ti -- nes!
  Din, din, don.
  Din, din, don.
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
% Melody: traditional; checked against Weckerlin and standard round notations, in C.
% ------------------------------------------------------------------
