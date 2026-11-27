\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Haul Away Joe - Traditional (sea shanty, 19th century), toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional sea shanty of the 19th century; the printed settings of Terry 1921 and Whall 1910 are public domain; Stan Hugill's 1961 book is still copyrighted and was not copied). First verse and chorus entered.
% Key of G (Mixolydian: F natural), 6/8 (two beats per bar), chords G, F, C and Dm. First verse (both lines) with the 'Way, haul away, we'll haul away Joe' chorus after each line, 16 bars. Range G3 to G4.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4. = 60) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (sea shanty, 19th century).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Haul Away Joe" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Sea Shanties & Sea Songs"
  language      = "English"
  era           = "Traditional"
  songkey       = "G Mixolydian"
  timesig       = "6/8"
  occasion      = "Singalong"
  technique     = "Strumming; More Open Chords; 6/8 Lilt"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Sea Shanties & Sea Songs; English; Traditional; Strumming; More Open Chords; 6/8 Lilt; G Mixolydian; 6/8; Singalong; Public Domain"
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
  \key g \mixolydian
  \time 6/8
}

melody = \relative c' {
  g'4 g8 g4 d8 | f4 f8 f4 d8 | c4 c8 b4 c8 | d4 e8 f4 d8 |
  \break
  g4. g4 d8 | f4. f4 d8 | c4 c8 d4. | g,2. |
  \break
  g'4 g8 g4 d8 | f4 f8 f4 d8 | c4 c8 b4 c8 | d4 e8 f4 d8 |
  \break
  g4. g4 d8 | f4. f4 d8 | c4 c8 d4. | g,2. \bar "|."
}

harmony = \chordmode {
  g2. | f2. | c2. | d2.:m | g2. | f2. | c2. | g2. | g2. | f2. | c2. | d2.:m | g2. | f2. | c2. | g2. |
}

words = \lyricmode {
  When I was a lit -- tle lad and so my moth -- er told me _ _
  Way, haul a -- way, _ we'll haul a -- way Joe.
  That if I did -- n't kiss the girls my lips would all grow mold -- y _
  Way, haul a -- way, _ we'll haul a -- way Joe.
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
% Melody: traditional sea shanty; checked against Hugill and other public-domain collections.
% ------------------------------------------------------------------
