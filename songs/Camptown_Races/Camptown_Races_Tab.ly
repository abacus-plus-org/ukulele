\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Camptown Races - Stephen C. Foster (1850), toddler style (low-G, linear GCEA).
% RIGHTS: public. Stephen C. Foster, 'Gwine to Run All Night, or De Camptown Races', Baltimore: F. D. Benteen, 1850 (plate 1657); words and music by Foster; Foster died in 1864. Tune and original words are public domain (IMSLP lists the 1850 first edition as Public Domain). The modern lead sheets and Robert A. Hudson's typeset edition (CC BY 3.0) were read only to check the notes; no text or layout is copied. The words here are a standard-English adaptation for children, with the dialect spellings ('gwine', 'de', 'dey', 'hoss', 'dis') changed and the original verses beyond the three used (the cow, the bobtail flinging its rider, the repeat round the track) left out; please keep that note with the sheet.
% Key of C, 4/4, chords C, F, G7. Three verses of 16 bars (an 8-bar verse plus an 8-bar chorus), laid out as repeated passes, 4 bars per line, one verse per page (3 pages). Standard-English kids' words adapted from Stephen Foster's 1850 'Gwine to Run All Night, or De Camptown Races'; the original minstrel-show dialect is not used. Range C4 to C5; lowest note C4 (MIDI 60), above G3.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 100) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Stephen C. Foster (1850).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Camptown Races" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Folk & Americana"
  language      = "English"
  era           = "1800s"
  songkey       = "C"
  timesig       = "4/4"
  occasion      = "Singalong; Campfire"
  technique     = "Strumming; Basic Open Chords; Moderate Tempo"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Folk & Americana; English; 1800s; Strumming; Basic Open Chords; Moderate Tempo; C; 4/4; Singalong; Campfire; Public Domain"
  difficulty    = "1.2"
  difficultyraw = "2.55"
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
}

melody = \relative c' {
  g'4 g4 e4 g4 | a4 g4 e2 | e4 d2. | e4 d2. |
  \break
  g4 g4 e4 g4 | a4 g4 e2 | d2 e4 d4 | c1 |
  \break
  c4. c8 e4 g4 | c1 | a4. a8 c4 a4 | g1 |
  \break
  g4 g4 e8 e8 g8 g8 | a4 g4 e2 | d4 e8 g8 e4 d8 d8 | c1 |
  \break
  g'4 g4 e4 g4 | a4 g4 e2 | e4 d2. | e4 d2. |
  \break
  g4 g4 e4 g4 | a4 g4 e2 | d2 e4 d4 | c1 |
  \break
  c4. c8 e4 g4 | c1 | a4. a8 c4 a4 | g1 |
  \break
  g4 g4 e8 e8 g8 g8 | a4 g4 e2 | d4 e8 g8 e4 d8 d8 | c1 |
  \break
  g'4 g4 e4 g4 | a4 g4 e2 | e4 d2. | e4 d2. |
  \break
  g4 g4 e4 g4 | a4 g4 e2 | d2 e4 d4 | c1 |
  \break
  c4. c8 e4 g4 | c1 | a4. a8 c4 a4 | g1 |
  \break
  g4 g4 e8 e8 g8 g8 | a4 g4 e2 | d4 e8 g8 e4 d8 d8 | c1 \bar "|."
}

harmony = \chordmode {
  c1 | c1 | g1:7 | g1:7 | c1 | c1 | g1:7 | c1 | c1 | c1 | f1 | c1 | c1 | c1 | g1:7 | c1 | c1 | c1 | g1:7 | g1:7 | c1 | c1 | g1:7 | c1 | c1 | c1 | f1 | c1 | c1 | c1 | g1:7 | c1 | c1 | c1 | g1:7 | g1:7 | c1 | c1 | g1:7 | c1 | c1 | c1 | f1 | c1 | c1 | c1 | g1:7 | c1
}

words = \lyricmode {
  Camp -- town la -- dies sing this song, Doo -- dah! Doo -- dah! Camp -- town race -- track's five miles long, Oh doo -- dah day! Going to run all night, Going to run all day, Bet my mon -- ey on the bob -- tail nag, Some -- bod -- y bet on the bay.
  Long tailed fil -- ly, big black horse, Doo -- dah! Doo -- dah! Came to a~mud hole, cut a -- cross, Oh doo -- dah day! Going to run all night, Going to run all day, Bet my mon -- ey on the bob -- tail nag, Some -- bod -- y bet on the bay.
  I come down~with my hat caved in, Doo -- dah! Doo -- dah! Home with a~pock -- et full of tin, Oh doo -- dah day! Going to run all night, Going to run all day, Bet my mon -- ey on the bob -- tail nag, Some -- bod -- y bet on the bay.
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
% Melody: Foster; checked against the mfiles lead sheet and mid-19th-century prints.
% ------------------------------------------------------------------
