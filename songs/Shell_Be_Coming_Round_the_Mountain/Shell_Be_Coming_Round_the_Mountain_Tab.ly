\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% She'll Be Coming 'Round the Mountain - Traditional (American folk song, from the spiritual "When the Chariot Comes"), toddler style (low-G, linear GCEA).
% RIGHTS: public. Traditional American folk song (Roud 4204), first printed in Carl Sandburg's The American Songbag (1927) and derived from the spiritual 'When the Chariot Comes' (Old Plantation Hymns, 1899). Melody and words are traditional; the sheets used are only arrangements and were read for pitches, not copied.
% Key of F, 2/4 with a one-beat pick-up (two eighths), chords F, Bb and C7. Five verses of 15 bars (driving six white horses, going out to meet her, chicken and dumplings, sleeping with Grandma).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 100) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (American folk song, from the spiritual "When the Chariot Comes").
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "She'll Be Coming 'Round the Mountain" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Folk & Americana"
  language      = "English"
  era           = "Traditional"
  songkey       = "F"
  timesig       = "2/4"
  occasion      = "Singalong; Campfire; Kids"
  technique     = "Strumming; Basic Open Chords; Moderate Tempo; Barre Chords"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Folk & Americana; English; Traditional; Strumming; Basic Open Chords; Moderate Tempo; Barre Chords; F; 2/4; Singalong; Campfire; Kids; Public Domain"
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
  \key f \major
  \time 2/4
  \partial 4
}

melody = \relative c' {
  c8 d8 |
  f8 f f f | d8 c a c | f4 r4 |
  \break
  r4 f8 g8 | a8 a a a | c8 a g f | g4 r4 |
  \break
  r4 c8 bf | a8 a a a | g8 f f f | d8 d d d |
  \break
  g8 f e d | c8 c c c | a'8 g d e | f4 c8 d8 |
  \break
  f8 f f f | d8 c a c | f4 r4 |
  \break
  r4 f8 g8 | a8 a a a | c8 a g f | g4 r4 |
  \break
  r4 c8 bf | a8 a a a | g8 f f f | d8 d d d |
  \break
  g8 f e d | c8 c c c | a'8 g d e | f4 c8 d8 |
  \break
  f8 f f f | d8 c a c | f4 r4 |
  \break
  r4 f8 g8 | a8 a a a | c8 a g f | g4 r4 |
  \break
  r4 c8 bf | a8 a a a | g8 f f f | d8 d d d |
  \break
  g8 f e d | c8 c c c | a'8 g d e | f4 c8 d8 |
  \break
  f8 f f f | d8 c a c | f4 r4 |
  \break
  r4 f8 g8 | a8 a a a | c8 a g f | g4 r4 |
  \break
  r4 c8 bf | a8 a a a | g8 f f f | d8 d d d |
  \break
  g8 f e d | c8 c c c | a'8 g d e | f4 c8 d8 |
  \break
  f8 f f f | d8 c a c | f4 r4 |
  \break
  r4 f8 g8 | a8 a a a | c8 a g f | g4 r4 |
  \break
  r4 c8 bf | a8 a a a | g8 f f f | d8 d d d |
  \break
  g8 f e d | c8 c c c | a'8 g d e | f4 r4 |
  \bar "|."
}

harmony = \chordmode {
  s4 | f2 | f2 | f2 | f2 | f2 | f2 | c2:7 | c2:7 | f2 | f2 | bf2 | bf2 | f2 | c2:7 | f2 | f2 | f2 | f2 | f2 | f2 | f2 | c2:7 | c2:7 | f2 | f2 | bf2 | bf2 | f2 | c2:7 | f2 | f2 | f2 | f2 | f2 | f2 | f2 | c2:7 | c2:7 | f2 | f2 | bf2 | bf2 | f2 | c2:7 | f2 | f2 | f2 | f2 | f2 | f2 | f2 | c2:7 | c2:7 | f2 | f2 | bf2 | bf2 | f2 | c2:7 | f2 | f2 | f2 | f2 | f2 | f2 | f2 | c2:7 | c2:7 | f2 | f2 | bf2 | bf2 | f2 | c2:7 | f2 |
}

words = \lyricmode {
  She'll be com -- ing 'round the moun -- tain when she comes,
  She'll be com -- ing 'round the moun -- tain when she comes,
  She'll be com -- ing 'round the moun -- tain, She'll be com -- ing 'round the moun -- tain, She'll be com -- ing 'round the moun -- tain when she comes.
  She'll be driv -- ing six white hor -- ses when she comes,
  She'll be driv -- ing six white hor -- ses when she comes,
  She'll be driv -- ing six white hor -- ses, She'll be driv -- ing six white hor -- ses, She'll be driv -- ing six white hor -- ses when she comes.
  Oh we'll all go out to meet her when she comes,
  Oh we'll all go out to meet her when she comes,
  Oh we'll all go out to meet her, Oh we'll all go out to meet her, Oh we'll all go out to meet her when she comes.
  Oh we'll all have chicken and dump -- lings when she comes,
  Oh we'll all have chicken and dump -- lings when she comes,
  Oh we'll all have chicken and dump -- lings, Oh we'll all have chicken and dump -- lings, Oh we'll all have chicken and dump -- lings when she comes.
  She will have to sleep with Grand -- ma when she comes,
  She will have to sleep with Grand -- ma when she comes,
  She will have to sleep with Grand -- ma, She will have to sleep with Grand -- ma, She will have to sleep with Grand -- ma when she comes.
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
% Melody: traditional (the 'When the Chariot Comes' family); checked against standard American lead sheets.
% ------------------------------------------------------------------
