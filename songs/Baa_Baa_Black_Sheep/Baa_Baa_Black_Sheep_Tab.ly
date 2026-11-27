\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Baa, Baa, Black Sheep - Traditional (rhyme c1744; tune: variant of "Ah! vous dirai-je, maman"), toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional English rhyme first printed c1744, tune an 18th-century French air; no known current copyright). Full first verse entered, modern wording (Oxford Dictionary of Nursery Rhymes).
% Key of C, 4/4, chords C, F and G7. One verse, 12 bars. Twinkle-form (A B A, 12 bars): lines 3-4 mirror Twinkle's middle and the opening returns at the end, as commonly sung.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 84) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (rhyme c1744; tune: variant of "Ah! vous dirai-je, maman").
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Baa, Baa, Black Sheep" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Nursery Rhyme"
  language      = "English"
  era           = "Traditional"
  songkey       = "C"
  timesig       = "4/4"
  occasion      = "Kids"
  technique     = "Strumming; Basic Open Chords"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Nursery Rhyme; English; Traditional; Strumming; Basic Open Chords; C; 4/4; Kids; Public Domain"
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
  c4 c g' g | a8 a a a g2 | f4 f e e | d d c2 |
  \break
  g'4 g8 g f4 f | e e8 e d2 | g4 g8 g f4 f8 f | e8 e e4 e d |
  \break
  c4 c g' g | a8 a a a g2 | f4 f e e | d d c2 |
  \bar "|."
}

harmony = \chordmode {
  c1 | f2 c2 | f2 c2 | g2:7 c2 | c2 f2 | c2 g2:7 | c2 f2 | c2 g2:7 | c1 | f2 c2 | f2 c2 | g2:7 c2 |
}

words = \lyricmode {
  Baa, baa, black sheep,
  have you an -- y wool?
  Yes, sir, yes, sir,
  three bags full.
  One for the mas -- ter,
  one for the dame,
  one for the lit -- tle boy
  who lives down the lane.
  Baa, baa, black sheep,
  have you an -- y wool?
  Yes, sir, yes, sir,
  three bags full.
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
% Melody: traditional, in the commonly sung Twinkle form; checked against Wikipedia, mfiles, and the vivace public-domain score. 'Have you any wool' is A A A A G, as usually sung in the US.
% ------------------------------------------------------------------
