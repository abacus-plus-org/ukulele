\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"
\storePredefinedDiagram #default-fret-table \chordmode { d:7 } #ukulele-tuning "2-1;o;2-2;o;"  % D7 = 2-0-2-0 (house shape)

% ------------------------------------------------------------------
% Oh! Susanna - Stephen Foster (1848), toddler style (low-G, linear GCEA).
% RIGHTS: public (Stephen Foster, 1848; public domain). First verse and the chorus entered.
% Key of G, 2/4, chords G, C and D7 (all easy open shapes). First verse (16 bars) plus the 'Oh! Susanna' chorus (8 bars), 6 bars per line. Foster's own 1848 key; the low-G range is G3 to E4.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 96) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Stephen Foster (1848).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Oh! Susanna" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Folk & Americana"
  language      = "English"
  era           = "1800s"
  songkey       = "G"
  timesig       = "2/4"
  occasion      = "Singalong; Campfire"
  technique     = "Strumming; Basic Open Chords"
  versions      = "Letter Sheet; Audio; Letter Tab Sheet; Letter Tab + Chord Sheet"
  rights        = "Public Domain"
  tags          = "Folk & Americana; English; 1800s; Strumming; Basic Open Chords; G; 2/4; Singalong; Campfire; Public Domain"
  difficulty    = "0.3"
  difficultyraw = "1.35"
  % end tags
}

\paper {
  #(set-paper-size "letter")
  top-margin = 15
  bottom-margin = 15
  left-margin = 18
  right-margin = 18
  system-system-spacing.basic-distance = #7
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
  \key g \major
  \time 2/4
  \partial 8
}

melody = \relative c' {
  g16 a | b8 d d e | d b g8. a16 | b8 b a g | a4. g16 a | b8 d d8. e16 | d8 b g8. a16 |
  \break
  b8 b a a | g4. g16 a | b8 d d8. e16 | d8 b g8. a16 | b8 b a g | a4. g16 a |
  \break
  b8 d d e | d b g8. a16 | b8 b a a | g4 r | c4 c | e8 e4 e8 |
  \break
  d8 d b g | a4. g16 a | b8 d d e | d b g a | b b a a | g2 \bar "|."
}

harmony = \chordmode {
  s8 | g2 | g2 | g2 | d2:7 | g2 | g2 | d2:7 | g2 | g2 | g2 | d2:7 | d2:7 | g2 | g2 | d2:7 | g2 | c2 | c2 | g2 | d2:7 | g2 | g2 | d2:7 | g2 |
}

words = \lyricmode {
  I _ come from Al -- a --
  ba -- ma with a ban -- jo on my knee, I'm _
  goin' to Lou -- si -- a -- na, my _ true love for to see. It _
  rained all night the day I left, the wea -- ther it was dry. The _
  sun so hot I froze to death, Su -- san -- na, don't you cry.
  Oh! Su -- san -- na, oh don't you cry for me. I've _
  come from Al -- a -- ba -- ma with my ban -- jo on my knee.
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
% Melody: Foster, 1848; checked against early prints and standard lead sheets. American words ('with a banjo', 'goin' to Louisiana').
% ------------------------------------------------------------------
