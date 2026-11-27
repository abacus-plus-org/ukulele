\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Old MacDonald Had a Farm - Traditional, toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional; the 'Old MacDonald' song is in the public domain). Full first verse (the cow) entered.
% Key of C, chords C, F and G7. One verse (cow), 16 bars, 4 bars per line.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 100) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional.
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Old MacDonald Had a Farm" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Children's Song"
  language      = "English"
  era           = "Traditional"
  songkey       = "C"
  timesig       = "4/4"
  occasion      = "Kids; Singalong"
  technique     = "Strumming; Basic Open Chords; Moderate Tempo"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Children's Song; English; Traditional; Strumming; Basic Open Chords; Moderate Tempo; C; 4/4; Kids; Singalong; Public Domain"
  difficulty    = "1.2"
  difficultyraw = "2.55"
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
  c4 c c g | a a g2 | e'4 e d d | c2 r4 g |
  \break
  c4 c c g | a a g2 | e'4 e d d | c2. g8 g |
  \break
  c4 c c g8 g | c4 c c2 | c8 c c4 c8 c c4 | c8 c c c c4 c |
  \break
  c4 c c g | a a g2 | e'4 e d d | c1 |
  \bar "|."
}

harmony = \chordmode {
  c1 | f2 c2 | g1:7 | c1 | c1 | f2 c2 | g1:7 | c1 | c1 | c1 | f1 | c1 | c1 | f2 c2 | g1:7 | c1 |
}

words = \lyricmode {
  Old Mac -- Don -- ald had a farm,
  E -- I -- E -- I -- O,
  And on that farm he had a cow,
  E -- I -- E -- I -- O,
  With a moo moo here and a moo moo there,
  Here a moo, there a moo, ev -- "'ry" -- where a moo moo.
  Old Mac -- Don -- ald had a farm,
  E -- I -- E -- I -- O.
}

\score {
  <<
    \new ChordNames \with {
      \override ChordName.font-size = #4
      \override ChordName.font-series = #'bold
    } { \set chordChanges = ##t \harmony }

    \new FretBoards \with {
      stringTunings = #ukulele-tuning
      \override FretBoard.size = #1.2
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
