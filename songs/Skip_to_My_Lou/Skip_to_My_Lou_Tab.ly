\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Skip to My Lou - Traditional (American), toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional American play-party song, 19th century; Roud 5000s family; no known current copyright). Full first verse plus the 'Fly's in the buttermilk' verse entered.
% Key of C, 4/4, chords C and G7 only. Two 8-bar verses (the 'Lou, Lou' verse, then 'Fly's in the buttermilk'), 4 bars per line. American wording.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 104) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (American).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Skip to My Lou" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Folk & Americana; Children's Song"
  language      = "English"
  era           = "Traditional"
  songkey       = "C"
  timesig       = "4/4"
  occasion      = "Kids; Action Song"
  technique     = "Strumming; Basic Open Chords; Moderate Tempo"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Folk & Americana; Children's Song; English; Traditional; Strumming; Basic Open Chords; Moderate Tempo; C; 4/4; Kids; Action Song; Public Domain"
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
  \key c \major
  \time 4/4
}

melody = \relative c' {
  e2 c | e4 e8 e g2 | d2 b | d4 d8 d f2 |
  \break
  e2 c | e4 e8 e g2 | d4 e8 f e4 d | c2 c |
  \break
  e4 e8 e c c c4 | e4 e g2 | d4 d8 d b b b4 | d4 d f2 |
  \break
  e4 e8 e c c c4 | e4 e g2 | d4 e8 f e4 d | c2 c |
  \bar "|."
}

harmony = \chordmode {
  c1 | c1 | g1:7 | g1:7 | c1 | c1 | g1:7 | c1 | c1 | c1 | g1:7 | g1:7 | c1 | c1 | g1:7 | c1 |
}

words = \lyricmode {
  Lou, Lou, skip to my Lou,
  Lou, Lou, skip to my Lou,
  Lou, Lou, skip to my Lou,
  skip to my Lou, my dar -- ling.
  Fly's in the but -- ter -- milk, shoo, fly, shoo,
  Fly's in the but -- ter -- milk, shoo, fly, shoo,
  Fly's in the but -- ter -- milk, shoo, fly, shoo,
  skip to my Lou, my dar -- ling.
}

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
      \new Lyrics \lyricsto "melody" { \words }
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
% Melody: traditional; checked against standard American children's lead sheets.
% ------------------------------------------------------------------
