\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Michael, Row the Boat Ashore - Traditional spiritual (Slave Songs of the United States, 1867), toddler style (low-G, linear GCEA).
% RIGHTS: public. Tune and words are from 'Michael row the boat ashore' (No. 31) and 'Words from Hilton Head' in Slave Songs of the United States, Allen, Ware and Garrison, New York, 1867, p. 23-24 - a traditional spiritual, long out of copyright. Dialect spellings are modernized to standard English. The 1960 Highwaymen / Saletan adaptation (a 1958 copyright was claimed in that arrangement) is not included: its added couplets ('Sister help to trim the sail', 'Jordan's river is chilly and cold', 'chills the body but not the soul', 'milk and honey on the other side', 'the river is deep and the river is wide') are not entered.
% Key of C, 4/4, chords C, F, G and G7, with a two-beat pickup. Four verses, each two lines (8 bars), laid out as repeated passes (33 bars, 4 bars per line, 2 pages); the last line has 5 bars so the final bar is not stranded on its own line. Words and tune are the 1867 'Slave Songs of the United States' text only; nothing unique to the 1958/1960 Saletan-Weavers-Highwaymen arrangement is used. Range C4 to A4; lowest note C4 (MIDI 60), above G3.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 100) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional spiritual (Slave Songs of the United States, 1867).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Michael, Row the Boat Ashore" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Hymn & Spiritual; Folk & Americana"
  language      = "English"
  era           = "Traditional"
  songkey       = "C"
  timesig       = "4/4"
  occasion      = "Campfire; Singalong"
  technique     = "Strumming; More Open Chords; Moderate Tempo"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Hymn & Spiritual; Folk & Americana; English; Traditional; Strumming; More Open Chords; Moderate Tempo; C; 4/4; Campfire; Singalong; Public Domain"
  difficulty    = "1.8"
  difficultyraw = "3.40"
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
  \time 4/4
  \partial 2
}

melody = \relative c' {
  c4 e4 | g4. e8 g4 a4 | g2 e4 g4 | a1 |
  \break
  g2 e4 g4 | g4. e8 f4 e4 | d2 c4 d4 | e2 d2 |
  \break
  c2 c4 e4 | g4. e8 g4 a4 | g2 e4 g4 | a1 |
  \break
  g2 e4 g4 | g4. e8 f4 e4 | d2 c4 d4 | e2 d2 |
  \break
  c2 c4 e4 | g4. e8 g4 a4 | g2 e4 g4 | a1 |
  \break
  g2 e4 g4 | g4. e8 f4 e4 | d2 c4 d4 | e2 d2 |
  \break
  c2 c4 e4 | g4. e8 g4 a4 | g2 e4 g4 | a1 |
  \break
  g2 e4 g4 | g4. e8 f4 e4 | d2 c4 d4 | e2 d2 |
  
  c1 \bar "|."
}

harmony = \chordmode {
  s2 | c1 | c1 | f1 | c1 | c1 | g1 | c2 g2:7 | c1 | c1 | c1 | f1 | c1 | c1 | g1 | c2 g2:7 | c1 | c1 | c1 | f1 | c1 | c1 | g1 | c2 g2:7 | c1 | c1 | c1 | f1 | c1 | c1 | g1 | c2 g2:7 | c1
}

words = \lyricmode {
  Mi -- chael row the boat a -- shore, Hal -- le -- lu -- jah! Mi -- chael boat a gos -- pel boat, Hal -- le -- lu _ jah!
  Broth -- er lend a help -- ing hand, Hal -- le -- lu -- jah! Sis -- ter help to trim the boat, Hal -- le -- lu _ jah!
  Mi -- chael haul the boat a -- shore, Hal -- le -- lu -- jah! Then you'll hear the horn they blow, Hal -- le -- lu _ jah!
  Trum -- pet sound the ju -- bi -- lee, Hal -- le -- lu -- jah! Trum -- pet sound for you and me, Hal -- le -- lu _ jah!
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
% Melody: traditional spiritual; checked against 19th-century collections and standard lead sheets.
% ------------------------------------------------------------------
