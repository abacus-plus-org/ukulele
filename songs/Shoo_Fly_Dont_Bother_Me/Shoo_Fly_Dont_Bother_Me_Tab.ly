\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Shoo Fly, Don't Bother Me - Traditional (American song, 1869; words attributed to Billy Reeves, music Frank Campbell), toddler style (low-G, linear GCEA).
% RIGHTS: public. 'Shoo Fly, Don't Bother Me' dates from 1869 (words attributed to Billy Reeves, music to Frank Campbell) and is long out of copyright. The sheets read are arrangements of the tune only; they were read for pitches, nothing was copied.
% Key of C, 2/4, no pick-up, chords C and G7. Shoo-fly chorus, the 'morning star' verse, then the chorus again (24 bars).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 100) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (American song, 1869; words attributed to Billy Reeves, music Frank Campbell).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Shoo Fly, Don't Bother Me" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Folk & Americana; Children's Song"
  language      = "English"
  era           = "1800s"
  songkey       = "C"
  timesig       = "2/4"
  occasion      = "Kids; Singalong"
  technique     = "Strumming; Basic Open Chords; Moderate Tempo; Syncopation"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Folk & Americana; Children's Song; English; 1800s; Strumming; Basic Open Chords; Moderate Tempo; Syncopation; C; 2/4; Kids; Singalong; Public Domain"
  difficulty    = "3.0"
  difficultyraw = "5.00"
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
  \time 2/4
}

melody = \relative c' {
  e8 c4 d8 | e8. f16 d4 | d8 b4 c8 | d8. e16 c4 |
  \break
  e8 c4 d8 | e8. f16 d8 d8 | g8 g g f | e8 d c g |
  \break
  e'8 e e e | e4. g,8 | e'8 e16 e f8 e | d4. g,8 |
  \break
  d'8 d d d | d8 d d d | g8 g16 g f8 d | c4. r8 |
  \break
  e8 c4 d8 | e8. f16 d4 | d8 b4 c8 | d8. e16 c4 |
  \break
  e8 c4 d8 | e8. f16 d8 d8 | g8 g g f | e8 d c4 |
  \bar "|."
}

harmony = \chordmode {
  c2 | g2:7 | g2:7 | c2 | c2 | g2:7 | g2:7 | c2 | c2 | c2 | c2 | g2:7 | g2:7 | g2:7 | g2:7 | c2 | c2 | g2:7 | g2:7 | c2 | c2 | g2:7 | g2:7 | c2 |
}

words = \lyricmode {
  Shoo, fly, don't both -- er me,
  Shoo, fly, don't both -- er me,
  Shoo, fly, don't both -- er me, For I be -- long to some -- bo -- dy.
  I feel, I feel, I feel, I feel like a morn -- ing star,
  I feel, I feel, I feel, I feel, I feel like a morn -- ing star.
  Shoo, fly, don't both -- er me,
  Shoo, fly, don't both -- er me,
  Shoo, fly, don't both -- er me, For I be -- long to some -- bo -- dy.
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
% Melody: traditional; checked against 19th-century American prints and standard lead sheets.
% ------------------------------------------------------------------
