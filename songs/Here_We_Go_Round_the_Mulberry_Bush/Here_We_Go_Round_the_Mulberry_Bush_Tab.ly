\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Here We Go Round the Mulberry Bush - Traditional (English, 19th c.), toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional English singing game, 19th century; The Child's Own Music Book 1918 and Halliwell 1840s are public domain). Full first verse entered.
% Key of C, 6/8 (two beats per bar, dotted quarter = one beat), chords C, F, G and G7. One verse, 8 bars, 4 bars per line. American words ('so early in the morning').
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4. = 60) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (English, 19th c.).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Here We Go Round the Mulberry Bush" \vspace #2.4 }
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
  technique     = "Strumming; More Open Chords; 6/8 Lilt"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Nursery Rhyme; English; Traditional; Strumming; More Open Chords; 6/8 Lilt; C; 6/8; Kids; Action Song; Public Domain"
  difficulty    = "1.8"
  difficultyraw = "3.40"
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
}

melody = \relative c' {
  c8 c c c4 e8 | g g e c4 c8 | d d d d4 c8 | b b a g4. |
  \break
  c8 c c c4 e8 | g g e c4 c8 | d4 d8 g a b | c2. |
  \bar "|."
}

harmony = \chordmode {
  c2. | c2. | f2. | g2. | c2. | c2. | g2.:7 | c2. |
}

words = \lyricmode {
  Here we go round the mul -- ber -- ry bush, the
  mul -- ber -- ry bush, the mul -- ber -- ry bush.
  Here we go round the mul -- ber -- ry bush, so
  ear -- ly in the morn -- ing.
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
