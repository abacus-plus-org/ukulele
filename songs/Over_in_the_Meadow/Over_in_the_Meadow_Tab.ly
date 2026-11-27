\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Over in the Meadow - Traditional (South Appalachian folk tune, collected 1916; words by Olive A. Wadsworth, 1870), toddler style (low-G, linear GCEA).
% RIGHTS: public. Words: Olive A. Wadsworth's 1870 poem 'Over in the Meadow' (public domain); John Langstaff's 1957 adaptation (turtle, 'dig', 'one' to 'ten' with different animals) is copyrighted and NOT used, and neither is Raffi's 1980 adaptation. Tune: the common American tune is a South Appalachian folk tune (Campbell and Sharp, English Folk Songs from the Southern Appalachians, 1917, no. 117 'Sing, Said the Mother', sung by Jane Gentry, Hot Springs NC, 1916), public domain; later songbooks print it as 'South Appalachian Folk Song'. Mabel Wood Hill's 1906 setting is a different tune. Any arrangement copyright (for example Woodbridge's 1957 piano music for the Langstaff book) covers the arrangement, not the traditional tune.
% Key of D, 2/4, chords D, A7, G and Bm. 16 bars per verse, one verse per page (4 lines of 4 bars), verses 1-5 of Olive A. Wadsworth's 1870 poem. The low-G range is D4 to B4. No pickup.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 80) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (South Appalachian folk tune, collected 1916; words by Olive A. Wadsworth, 1870).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Over in the Meadow" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Children's Song"
  language      = "English"
  era           = "1800s"
  songkey       = "D"
  timesig       = "2/4"
  occasion      = "Kids; Counting & Learning"
  technique     = "Strumming; More Open Chords; Barre Chords; String Skipping"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Children's Song; English; 1800s; Strumming; More Open Chords; Barre Chords; String Skipping; D; 2/4; Kids; Counting & Learning; Public Domain"
  difficulty    = "3.5"
  difficultyraw = "5.65"
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
  \key d \major
  \time 2/4
}

melody = \relative c' {
  a'8 a8 a8 b8 | a8 g8 fs8 g8 | a4 g8 fs8 | e4 d8 e8 |
  \break
  fs4 fs8 g8 | fs8 e8 d8 e8 | fs8 fs8 e8 e8 | d4 r4 |
  \break
  a'4 d,8 d8 | d8 d8 b'4 | a4 d,8 d8 | d4 d8 e8 |
  \break
  fs4 fs8 g8 | fs4 d8 e8 | fs4 e8 e8 | d2 |
  \pageBreak
  a'8 a8 a8 b8 | a8 g8 fs8 g8 | a4 g8 fs8 | e4 d8 e8 |
  \break
  fs4 fs8 g8 | fs8 e8 d8 e8 | fs8 fs8 e8 e8 | d4 r4 |
  \break
  a'4 d,8 d8 | d8 d8 b'4 | a4 d,8 d8 | d4 d8 e8 |
  \break
  fs4 fs8 g8 | fs4 d8 e8 | fs4 e8 e8 | d2 |
  \pageBreak
  a'8 a8 a8 b8 | a8 g8 fs8 g8 | a4 g8 fs8 | e4 d8 e8 |
  \break
  fs4 fs8 g8 | fs8 e8 d8 e8 | fs8 fs8 e8 e8 | d4 r4 |
  \break
  a'4 d,8 d8 | d8 d8 b'4 | a4 d,8 d8 | d4 d8 e8 |
  \break
  fs4 fs8 g8 | fs4 d8 e8 | fs4 e8 e8 | d2 |
  \pageBreak
  a'8 a8 a8 b8 | a8 g8 fs8 g8 | a4 g8 fs8 | e4 d8 e8 |
  \break
  fs4 fs8 g8 | fs8 e8 d8 e8 | fs8 fs8 e8 e8 | d4 r4 |
  \break
  a'4 d,8 d8 | d8 d8 b'4 | a4 d,8 d8 | d4 d8 e8 |
  \break
  fs4 fs8 g8 | fs4 d8 e8 | fs4 e8 e8 | d2 |
  \pageBreak
  a'8 a8 a8 b8 | a8 g8 fs8 g8 | a4 g8 fs8 | e4 d8 e8 |
  \break
  fs4 fs8 g8 | fs8 e8 d8 e8 | fs8 fs8 e8 e8 | d4 r4 |
  \break
  a'4 d,8 d8 | d8 d8 b'4 | a4 d,8 d8 | d4 d8 e8 |
  \break
  fs4 fs8 g8 | fs4 d8 e8 | fs4 e8 e8 | d2 | \bar "|."
}

harmony = \chordmode {
  d2 | d2 | d2 | a2 | d2 | d2 | d4 a4:7 | d2 | d2 | d4 g4 | d2 | d2 | d2 | b2:m | g4 a4:7 | d2 | d2 | d2 | d2 | a2 | d2 | d2 | d4 a4:7 | d2 | d2 | d4 g4 | d2 | d2 | d2 | b2:m | g4 a4:7 | d2 | d2 | d2 | d2 | a2 | d2 | d2 | d4 a4:7 | d2 | d2 | d4 g4 | d2 | d2 | d2 | b2:m | g4 a4:7 | d2 | d2 | d2 | d2 | a2 | d2 | d2 | d4 a4:7 | d2 | d2 | d4 g4 | d2 | d2 | d2 | b2:m | g4 a4:7 | d2 | d2 | d2 | d2 | a2 | d2 | d2 | d4 a4:7 | d2 | d2 | d4 g4 | d2 | d2 | d2 | b2:m | g4 a4:7 | d2 |
}

words = \lyricmode {
  O -- ver in the mea -- dow, in the sand in the sun,
  Lived an old mo -- ther toad -- ie and her lit -- tle toad -- ie one.
  Wink! said the mo -- ther, I wink! said the one,
  So they winked and they blinked in the sand in the sun.
  O -- ver in the mea -- dow, where the stream runs _ blue,
  Lived an old mo -- ther fish _ and her lit -- tle fish -- es two.
  Swim! said the mo -- ther, We swim! said the two,
  So they swam and they leaped where the stream runs _ blue.
  O -- ver in the mea -- dow, in a hole in a tree,
  Lived an old mo -- ther blue -- bird and her lit -- tle bir -- dies three.
  Sing! said the mo -- ther, We sing! said the three,
  So they sang and were glad in a hole in a tree.
  O -- ver in the mea -- dow, in the reeds on the shore,
  Lived an old mo -- ther musk -- rat and her lit -- tle rat -- ties four.
  Dive! said the mo -- ther, We dive! said the four,
  So they dived and they bur -- rowed in~the reeds on the shore.
  O -- ver in the mea -- dow, in a snug _ bee -- hive,
  Lived a mo -- ther hon -- ey bee and her lit -- tle bees _ five.
  Buzz! said the mo -- ther, We buzz! said the five,
  So they buzzed and they hummed in the snug _ bee -- hive.
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
% Melody: traditional; checked against commonly printed children's lead sheets.
% ------------------------------------------------------------------
