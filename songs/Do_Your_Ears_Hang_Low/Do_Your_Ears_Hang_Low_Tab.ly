\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Do Your Ears Hang Low - Traditional (American, c. 1900s, to the tune of "Turkey in the Straw"), toddler style (low-G, linear GCEA).
% RIGHTS: public. Traditional American children's/camp song (tune: 'Turkey in the Straw' / 'Zip Coon', 1830s-40s). The bawdy variants are left out.
% Key of F, 4/4 with a two-quaver pick-up, chords F and C7. Three verses of 8 bars (ears hang low, ears hang high, nose hang low).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 96) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (American, c. 1900s, to the tune of "Turkey in the Straw").
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Do Your Ears Hang Low" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Children's Song"
  language      = "English"
  era           = "Traditional"
  songkey       = "F"
  timesig       = "4/4"
  occasion      = "Kids; Action Song; Campfire"
  technique     = "Strumming; Basic Open Chords"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Children's Song; English; Traditional; Strumming; Basic Open Chords; F; 4/4; Kids; Action Song; Campfire; Public Domain"
  difficulty    = "0.3"
  difficultyraw = "1.35"
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
  \key f \major
  \time 4/4
  \partial 4
}

melody = \relative c' {
  a'8 g8 |
  f4 f f a,8 bf | c8 d c a c4 f8 g |
  \break
  a8 a a a a4 f8 g | a8 g g g g4 a8 g |
  \break
  f8 f f f f f a, bf | c8 d c a c c f g |
  \break
  a2 g2 | f2. a8 g8 |
  \break
  f4 f f a,8 bf | c8 d c a c4 f8 g |
  \break
  a8 a a a a4 f8 g | a8 g g g g4 a8 g |
  \break
  f8 f f f f f a, bf | c8 d c a c c f g |
  \break
  a2 g2 | f2. a8 g8 |
  \break
  f4 f f a,8 bf | c8 d c a c4 f8 g |
  \break
  a8 a a a a4 f8 g | a8 g g g g4 a8 g |
  \break
  f8 f f f f f a, bf | c8 d c a c c f g |
  \break
  a2 g2 | f1 |
  \bar "|."
}

harmony = \chordmode {
  s4 | f1 | f1 | f1 | c1:7 | f1 | f1 | c1:7 | f1 | f1 | f1 | f1 | c1:7 | f1 | f1 | c1:7 | f1 | f1 | f1 | f1 | c1:7 | f1 | f1 | c1:7 | f1 |
}

words = \lyricmode {
  Do your ears hang low? Do they wob -- ble to and fro?
  Can you tie them in a knot? Can you tie them in a bow?
  Can you throw them o'er your shoul -- der like a Con -- ti -- nen -- tal sol -- dier?
  Do your ears hang low?
  Do your ears hang high? Do they reach up to the sky?
  Do they hang down when they're wet? Do they stick up when they're dry?
  Can you sem -- a -- phore your neigh -- bor with a min -- i -- mum of la -- bor?
  Do your ears hang high?
  Does your nose hang low? Does it wig -- gle to and fro?
  Can you tie it in a knot? Can you tie it in a bow?
  Can you throw it o'er your shoul -- der like a Con -- ti -- nen -- tal sol -- dier?
  Does your nose hang low?
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
% Melody: traditional (the 'Turkey in the Straw' family); checked against commonly printed lead sheets.
% ------------------------------------------------------------------
