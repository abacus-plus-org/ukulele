\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"
\storePredefinedDiagram #default-fret-table \chordmode { d:7 } #ukulele-tuning "2-1;o;2-2;o;"  % D7 = 2-0-2-0 (house shape)

% ------------------------------------------------------------------
% South Australia - Traditional (sea shanty, 19th century), toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional sea shanty of the 19th century; the tune is taken from Laura Alexandrine Smith, The Music of the Waters, 1888, which is public domain; Stan Hugill's 1961 book, Doerflinger's 1951 Shantymen and Shantyboys and modern recordings are still copyrighted and were not copied). First verse and chorus entered.
% Key of G major, 4/4 with a one-beat pick-up, chords G, C and D7. First verse: 'In South Australia I was born / Heave away, haul away / In South Australia round Cape Horn / We're bound for South Australia', then the chorus 'Haul away, you rolling king / Haul away, haul away / Haul away, I'm bound to leave you / We're bound for South Australia', 16 bars. Range G3 to G4.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 84) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (sea shanty, 19th century).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "South Australia" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Sea Shanties & Sea Songs"
  language      = "English"
  era           = "Traditional"
  songkey       = "G"
  timesig       = "4/4"
  occasion      = "Singalong"
  technique     = "Strumming; Basic Open Chords"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Sea Shanties & Sea Songs; English; Traditional; Strumming; Basic Open Chords; G; 4/4; Singalong; Public Domain"
  difficulty    = "0.3"
  difficultyraw = "1.35"
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
  \key g \major
  \time 4/4
  \partial 4
}

melody = \relative c' {
  d4 | g,4 b8 c d4 e | d4 b8 a g2 | d'4. b8 d2 | e4. b8 d4 d |
  \break
  g,4 b8 c d4 e | d4 b8 a g4 a | b4. b8 d4 b | a4 g g2 |
  \break
  fs'4 e d e | d4 d g,2 | d'4. b8 d2 | e4. b8 d2 |
  \break
  d4. b8 d4 b | b4 d8 b a4 a | b4. b8 d4 b | a4 g g2 \bar "|."
}

harmony = \chordmode {
  s4 | g1 | g1 | g1 | c1 | g1 | g1 | g1 | g1 | d1:7 | g1 | g1 | c1 | g1 | d1:7 | g1 | g1 |
}

words = \lyricmode {
  In South Aus -- tra -- li -- a I was _ born,
  Heave a -- way, haul a -- way, In
  South Aus -- tra -- li -- a round Cape _ Horn We're
  bound for South Aus -- tra -- li -- a.
  Haul a -- way you roll -- ing king,
  Haul a -- way, haul a -- way,
  Haul a -- way, I'm bound to leave you We're
  bound for South Aus -- tra -- li -- a.
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
% Melody: traditional sea shanty; checked against public-domain collections (Hugill and others).
% ------------------------------------------------------------------
