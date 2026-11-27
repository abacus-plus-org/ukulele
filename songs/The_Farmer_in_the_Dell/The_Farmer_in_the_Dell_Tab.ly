\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% The Farmer in the Dell - Traditional (German origin, American singing game, 19th c.), toddler style (low-G, linear GCEA).
% RIGHTS: public. Traditional singing game (German 'Es fuhr ein Bau'r ins Holz', 1826; American form recorded 1883 by W. W. Newell); the tune and words are old and traditional.
% Key of C, 6/8 with a one-quaver pick-up, chords C, F and G7. Ten verses of 8 bars (the common US words: farmer, wife, child, nurse, cow, dog, cat, rat, cheese, the cheese stands alone).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4. = 60) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (German origin, American singing game, 19th c.).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "The Farmer in the Dell" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Nursery Rhyme"
  language      = "English"
  era           = "Traditional"
  songkey       = "C"
  timesig       = "6/8"
  occasion      = "Kids; Action Song"
  technique     = "Strumming; Basic Open Chords; Frequent Chord Changes; 6/8 Lilt"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Nursery Rhyme; English; Traditional; Strumming; Basic Open Chords; Frequent Chord Changes; 6/8 Lilt; C; 6/8; Kids; Action Song; Public Domain"
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
  \time 6/8
  \partial 8
}

melody = \relative c' {
  g8 |
  c4 c8 c4 c8 | c4. r4 d8 | e4 e8 e4 e8 | e4. r4. |
  \break
  g4. g4 a8 | g4 e8 c4 d8 | e4 e8 d4 d8 | c4. r4 g8 |
  \break
  c4 c8 c4 c8 | c4. r4 d8 | e4 e8 e4 e8 | e4. r4. |
  \break
  g4. g4 a8 | g4 e8 c4 d8 | e4 e8 d4 d8 | c4. r4 g8 |
  \break
  c4 c8 c4 c8~ | c4. r4 d8 | e4 e8 e4 e8~ | e4. r4. |
  \break
  g4. g4 a8 | g4 e8 c4 d8 | e4 e8 d4 d8( | c4.) r4 g8 |
  \break
  c4 c8 c4 c8~ | c4. r4 d8 | e4 e8 e4 e8~ | e4. r4. |
  \break
  g4. g4 a8 | g4 e8 c4 d8 | e4 e8 d4 d8( | c4.) r4 g8 |
  \break
  c4 c8 c4 c8~ | c4. r4 d8 | e4 e8 e4 e8~ | e4. r4. |
  \break
  g4. g4 a8 | g4 e8 c4 d8 | e4 e8 d4 d8( | c4.) r4 g8 |
  \break
  c4 c8 c4 c8~ | c4. r4 d8 | e4 e8 e4 e8~ | e4. r4. |
  \break
  g4. g4 a8 | g4 e8 c4 d8 | e4 e8 d4 d8( | c4.) r4 g8 |
  \break
  c4 c8 c4 c8~ | c4. r4 d8 | e4 e8 e4 e8~ | e4. r4. |
  \break
  g4. g4 a8 | g4 e8 c4 d8 | e4 e8 d4 d8( | c4.) r4 g8 |
  \break
  c4 c8 c4 c8~ | c4. r4 d8 | e4 e8 e4 e8~ | e4. r4. |
  \break
  g4. g4 a8 | g4 e8 c4 d8 | e4 e8 d4 d8( | c4.) r4 g8 |
  \break
  c4 c8 c4 c8~ | c4. r4 d8 | e4 e8 e4 e8~ | e4. r4. |
  \break
  g4. g4 a8 | g4 e8 c4 d8 | e4 e8 d4 d8( | c4.) r4 g8 |
  \break
  c4 c8 c4 c8~ | c4. r4 d8 | e4 e8 e4 e8~ | e4. r4. |
  \break
  g4. g4 a8 | g4 e8 c4 d8 | e4 e8 d4 d8( | c2.) |
  \bar "|."
}

harmony = \chordmode {
  s8 | c2. | c2. | c2. | c2. | c2. | c4. f4. | c4. g4.:7 | c2. | c2. | c2. | c2. | c2. | c2. | c4. f4. | c4. g4.:7 | c2. | c2. | c2. | c2. | c2. | c2. | c4. f4. | c4. g4.:7 | c2. | c2. | c2. | c2. | c2. | c2. | c4. f4. | c4. g4.:7 | c2. | c2. | c2. | c2. | c2. | c2. | c4. f4. | c4. g4.:7 | c2. | c2. | c2. | c2. | c2. | c2. | c4. f4. | c4. g4.:7 | c2. | c2. | c2. | c2. | c2. | c2. | c4. f4. | c4. g4.:7 | c2. | c2. | c2. | c2. | c2. | c2. | c4. f4. | c4. g4.:7 | c2. | c2. | c2. | c2. | c2. | c2. | c4. f4. | c4. g4.:7 | c2. | c2. | c2. | c2. | c2. | c2. | c4. f4. | c4. g4.:7 | c2. |
}

words = \lyricmode {
  The farm -- er in the dell, The farm -- er in the dell, Hi -- ho, the der -- ry -- o, The farm -- er in the dell.
  The farm -- er takes a wife, The farm -- er takes a wife, Hi -- ho, the der -- ry -- o, The farm -- er takes a wife.
  The wife takes a child, The wife takes a child, Hi -- ho, the der -- ry -- o, The wife takes a child.
  The child takes a nurse, The child takes a nurse, Hi -- ho, the der -- ry -- o, The child takes a nurse.
  The nurse takes a cow, The nurse takes a cow, Hi -- ho, the der -- ry -- o, The nurse takes a cow.
  The cow takes a dog, The cow takes a dog, Hi -- ho, the der -- ry -- o, The cow takes a dog.
  The dog takes a cat, The dog takes a cat, Hi -- ho, the der -- ry -- o, The dog takes a cat.
  The cat takes the rat, The cat takes the rat, Hi -- ho, the der -- ry -- o, The cat takes the rat.
  The rat takes the cheese, The rat takes the cheese, Hi -- ho, the der -- ry -- o, The rat takes the cheese.
  The cheese stands a -- lone, The cheese stands a -- lone, Hi -- ho, the der -- ry -- o, The cheese stands a -- lone.
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
% Melody: traditional; checked against standard children's lead sheets, in C.
% ------------------------------------------------------------------
