\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Clementine - Traditional (Percy Montrose, 1884), toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional American song; Percy Montrose, 1884, and H. S. Thompson, 1863, are out of copyright). First verse and the chorus entered.
% Key of C, 3/4, chords C and G7 (two easy open shapes). First verse plus the 'Oh my darling' chorus, 16 bars. The low-G range is G3 to G4.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 100) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (Percy Montrose, 1884).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Clementine" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Folk & Americana"
  language      = "English"
  era           = "1800s"
  songkey       = "C"
  timesig       = "3/4"
  occasion      = "Singalong; Campfire"
  technique     = "Strumming; Basic Open Chords; Waltz; Moderate Tempo; Swing"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Folk & Americana; English; 1800s; Strumming; Basic Open Chords; Waltz; Moderate Tempo; Swing; C; 3/4; Singalong; Campfire; Public Domain"
  difficulty    = "2.8"
  difficultyraw = "4.70"
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
  \key c \major
  \time 3/4
  \partial 4
}

melody = \relative c' {
  c8. c16 | c4 g e'8. e16 | e4 c c8. e16 | g4. g8 f e |
  \break
  d2 d8. e16 | f4 f e8. d16 | e4 c c8. e16 | d4 g, b8. d16 |
  \break
  c2 c8. c16 | c4 g e'8. e16 | e4 c c8. e16 | g4. g8 f e |
  \break
  d2 d8. e16 | f4 f e8. d16 | e4 c c8. e16 | d4 g, b8. d16 | c2. \bar "|."
}

harmony = \chordmode {
  s4 | c2. | c2. | c2. | g2.:7 | g2.:7 | c2. | g2.:7 | c2. | c2. | c2. | c2. | g2.:7 | g2.:7 | c2. | g2.:7 | c2. |
}

words = \lyricmode {
  In a ca -- vern, in a can -- yon, ex -- ca -- vat -- ing for a
  mine, dwelt a min -- er for -- ty -- nin -- er, and his daugh -- ter Clem -- en --
  tine. Oh my dar -- ling, oh my dar -- ling, oh my dar -- ling Clem -- en --
  tine, you are lost and gone for -- ev -- er, dread -- ful sor -- ry Clem -- en -- tine.
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
% Melody: traditional; checked against the mfiles lead sheet and 19th-century prints.
% ------------------------------------------------------------------
