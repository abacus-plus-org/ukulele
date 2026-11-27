\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Kumbaya - Traditional (Gullah spiritual, recorded 1926), toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional Gullah spiritual; the Library of Congress holds a 1926 manuscript and a 1926 cylinder recording by H. Wylie, both before Marvin Frey's 1939 'Come By Here' copyright). Only the traditional words are used: the 'Kum ba yah, my Lord' refrain and the 'Someone's singing, Lord' verse line.
% Key of D, 4/4, chords D, G and A7, with a two-beat pickup. Two passes of 14 bars: the 'Kum ba yah, my Lord' refrain, then the 'Someone's singing, Lord' verse. The low-G range is D4 to B4.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 88) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (Gullah spiritual, recorded 1926).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Kumbaya" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Hymn & Spiritual; Folk & Americana"
  language      = "English"
  era           = "Traditional"
  songkey       = "D"
  timesig       = "4/4"
  occasion      = "Campfire; Singalong"
  technique     = "Strumming; Basic Open Chords"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Hymn & Spiritual; Folk & Americana; English; Traditional; Strumming; Basic Open Chords; D; 4/4; Campfire; Singalong; Public Domain"
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
  \key d \major
  \time 4/4
  \partial 2
}

melody = \relative c' {
  d4 fs4 | a4. a8 a2~ | a2 b4 b4 | a1~ | a2 d,4 fs4 | a4. a8 a2~ | a2 g4 e4 | e1~ | e2 d4 fs4 |
  \break
  a4. a8 a2~ | a2 b4 b4 | a1~ | a2 g2 | fs4 d4 e4 e4 | d2 d4 fs4 | a4. a8 a2~ | a2 b4 b4 |
  \break
  a1~ | a2 d,4 fs4 | a4. a8 a2~ | a2 g4 e4 | e1~ | e2 d4 fs4 | a4. a8 a2~ | a2 b4 b4 |
  \break
  a1~ | a2 g2 | fs4 d4 e4 e4 | d1 \bar "|."
}

harmony = \chordmode {
  s2 | d1 | g1 | d1 | d1 | d1 | g1 | a1:7 | d1 | d1 | g1 | d1 | g1 | d2 a2:7 | d1 | d1 | g1 | d1 | d1 | d1 | g1 | a1:7 | d1 | d1 | g1 | d1 | g1 | d2 a2:7 | d1 |
}

words = \lyricmode {
  Kum -- ba -- yah my Lord, kum -- ba -- yah!
  Kum -- ba -- yah my Lord, kum -- ba -- yah!
  Kum -- ba -- yah my Lord, kum -- ba -- yah!
  Oh Lord _ kum -- ba -- yah!
  Some -- one's sing -- ing, Lord, kum -- ba -- yah!
  Some -- one's sing -- ing, Lord, kum -- ba -- yah!
  Some -- one's sing -- ing, Lord, kum -- ba -- yah!
  Oh Lord _ kum -- ba -- yah!
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
% Melody: traditional spiritual; checked against commonly printed public-domain lead sheets.
% ------------------------------------------------------------------
