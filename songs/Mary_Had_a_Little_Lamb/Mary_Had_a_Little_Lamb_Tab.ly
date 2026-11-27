\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Mary Had a Little Lamb - Traditional (words by Sarah Josepha Hale, 1830), toddler style (low-G, linear GCEA).
% RIGHTS: public (poem by Sarah Josepha Hale, first published 1830; the tune is traditional, the same tune as 'Merrily We Roll Along'; no known current copyright). First verse as commonly sung, the opening of Hale's text.
% Key of C, 4/4, chords C, F and G7. One verse, 8 bars, 4 bars per line (the common sung form with the repeated 'little lamb').
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 96) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (words by Sarah Josepha Hale, 1830).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Mary Had a Little Lamb" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Nursery Rhyme"
  language      = "English"
  era           = "1800s"
  songkey       = "C"
  timesig       = "4/4"
  occasion      = "Kids"
  technique     = "Strumming; Basic Open Chords"
  versions      = "A4 Sheet; Audio; 7x7 Tab + Chord Card"
  rights        = "Public Domain"
  tags          = "Nursery Rhyme; English; 1800s; Strumming; Basic Open Chords; C; 4/4; Kids; Public Domain"
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
  \key c \major
  \time 4/4
}

melody = \relative c' {
  e4 d c d | e e e2 | d4 d d2 | e4 g g2 |
  \break
  e4 d c d | e e e e | d d e d | c1 |
  \bar "|."
}

harmony = \chordmode {
  c1 | c1 | g1:7 | c1 | c1 | c1 | f2 g2:7 | c1 |
}

words = \lyricmode {
  Ma -- ry had a lit -- tle lamb,
  lit -- tle lamb, lit -- tle lamb,
  Ma -- ry had a lit -- tle lamb,
  its fleece was white as snow.
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
% Melody: traditional (the Hale rhyme, Mason tune); checked against standard children's lead sheets, in C.
% ------------------------------------------------------------------
