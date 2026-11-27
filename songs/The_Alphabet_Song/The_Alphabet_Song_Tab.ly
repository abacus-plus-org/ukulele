\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% The Alphabet Song - Traditional (French air, 1761; American words, first copyrighted 1835), toddler style (low-G, linear GCEA).
% RIGHTS: public domain in the US (1761 melody and 1835 words; the closing couplet 'Now I know my ABCs...' is anonymous and traditional, with no known claimant but no verified first-print date).
% Key of C, 4/4, chords C, F, G and G7. Range C4 to A4; every note is in the first position. L M N O are four eighth notes, P is the long note.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 110) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (French air, 1761; American words, first copyrighted 1835).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "The Alphabet Song" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Children's Song"
  language      = "English"
  era           = "1800s"
  songkey       = "C"
  timesig       = "4/4"
  occasion      = "Kids; Counting & Learning"
  technique     = "Strumming; More Open Chords; Frequent Chord Changes; Moderate Tempo"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Children's Song; English; 1800s; Strumming; More Open Chords; Frequent Chord Changes; Moderate Tempo; C; 4/4; Kids; Counting & Learning; Public Domain"
  difficulty    = "2.6"
  difficultyraw = "4.38"
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
  c4 c4 g'4 g4 | a4 a4 g2 | f4 f4 e4 e4 | d8 d8 d8 d8 c2 |
  \break
  g'4 g4 f2 | e4 e4 d2 | g8 g8 g4 f2 | e4 e4 d2 |
  \break
  c4 c4 g'4 g4 | a4 a4 g2 | f4 f4 e4 e4 | d4 d4 c2 \bar "|."
}

harmony = \chordmode {
  c1 | f2 c2 | g2 c2 | g2:7 c2 | c2 f2 | c2 g2 | c2 f2 | c2 g2 | c1 | f2 c2 | g2 c2 | g2:7 c2
}

words = \lyricmode {
  A B C D E F G H I J K L M N O P Q R S T U V Dou -- ble -- u X Y and Z Now I know my A B C's next time won't you sing with me
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
% Melody: the Twinkle / 'Ah! vous dirai-je, Maman' air, alphabet words; checked against standard children's lead sheets, in C.
% ------------------------------------------------------------------
