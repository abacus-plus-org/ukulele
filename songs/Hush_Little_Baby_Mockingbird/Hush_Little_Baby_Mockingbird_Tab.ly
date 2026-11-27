\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Hush, Little Baby (Mockingbird) - Traditional (American lullaby), toddler style (low-G, linear GCEA).
% RIGHTS: public. Traditional American lullaby; tune and words are traditional (no known author).
% Key of C, 4/4, chords C and G7. Eight couplets (four 8-bar passes of the tune). The rhythm is adapted a little to fit each couplet's number of syllables (see the notes).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 80) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (American lullaby).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Hush, Little Baby (Mockingbird)" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Nursery Rhyme; Folk & Americana"
  language      = "English"
  era           = "Traditional"
  songkey       = "C"
  timesig       = "4/4"
  occasion      = "Lullaby & Bedtime; Kids"
  technique     = "Strumming; Basic Open Chords; String Skipping"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Nursery Rhyme; Folk & Americana; English; Traditional; Strumming; Basic Open Chords; String Skipping; C; 4/4; Lullaby & Bedtime; Kids; Public Domain"
  difficulty    = "1.9"
  difficultyraw = "3.55"
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
  g4 e'8 e e4 f | e4 d8 d d2 | g,8 g d' d d4 d8 e | d4 c c2 |
  \break
  g4 e' e f | e d d2 | g,8 g d' d d4 d8 e | d4 c c2 |
  \break
  g4 e'8 e e4 f | e4 d d2 | g,8 g d' d d4 d8 e | d4 c c2 |
  \break
  g4 e'8 e e4 f | e4 d d2 | g,8 g d' d d4 d8 e | d4 c c2 |
  \break
  g4 e'8 e e4 f | e4 d d2 | g,8 g d' d d4 d8 e | d4 c c2 |
  \break
  g4 e'8 e e4 f | e4 d8 d d2 | g,8 g d' d d4 d8 e | d4 c c c |
  \break
  g4 e'8 e e4 f | e4 d8 d d2 | g,8 g d' d d4 d8 e | d4 c c2 |
  \break
  g4 e'8 e e4 f | e4 d d2 | g,8 g d' d d d d e | d4 c8 c c2 |
  \bar "|."
}

harmony = \chordmode {
  c1 | g1:7 | g1:7 | c1 | c1 | g1:7 | g1:7 | c1 | c1 | g1:7 | g1:7 | c1 | c1 | g1:7 | g1:7 | c1 | c1 | g1:7 | g1:7 | c1 | c1 | g1:7 | g1:7 | c1 | c1 | g1:7 | g1:7 | c1 | c1 | g1:7 | g1:7 | c1 |
}

words = \lyricmode {
  Hush, lit -- tle ba -- by, don't say a word,
  Pa -- pa's gon -- na buy you a mock -- ing -- bird.
  If that mock -- ing -- bird don't sing,
  Pa -- pa's gon -- na buy you a dia -- mond ring.
  And if that dia -- mond ring turns brass,
  Pa -- pa's gon -- na buy you a look -- ing glass.
  And if that look -- ing glass gets broke,
  Pa -- pa's gon -- na buy you a bil -- ly goat.
  And if that bil -- ly goat won't pull,
  Pa -- pa's gon -- na buy you a cart and bull.
  And if that cart and bull turn o -- ver,
  Pa -- pa's gon -- na buy you a dog named Ro -- ver.
  And if that dog named Ro -- ver won't bark,
  Pa -- pa's gon -- na buy you a horse and cart.
  And if that horse and cart fall down,
  You'll still be the sweet -- est lit -- tle ba -- by in town.
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
% Melody: traditional; checked against the Kravchuk, Itsy Bitsy Kids, and Making Music Fun sheets, written in C.
% ------------------------------------------------------------------
