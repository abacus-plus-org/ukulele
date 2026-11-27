\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% If You're Happy and You Know It - Traditional, toddler style (low-G, linear GCEA).
% RIGHTS: public. Treated as a traditional song. Full first verse entered.
% Key of C, 12/8 (four beats per bar, dotted quarter = one beat), chords C, F and G7. Pickup + 8 bars, 2 + 2 + 2 + 2 bars per line.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4. = 60) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional.
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "If You're Happy and You Know It" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Children's Song"
  language      = "English"
  era           = "Traditional"
  songkey       = "C"
  timesig       = "12/8"
  occasion      = "Kids; Action Song"
  technique     = "Strumming; Basic Open Chords; 6/8 Lilt"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain (check)"
  tags          = "Children's Song; English; Traditional; Strumming; Basic Open Chords; 6/8 Lilt; C; 12/8; Kids; Action Song; Public Domain (check)"
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
  system-system-spacing.basic-distance = #8
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
  \time 12/8
  \partial 4.
}

melody = \relative c' {
  g4 g8 | c4 c8 c4 c8 c4 c8 b4 c8 | d2.~ d4. g,4 g8 |
  \break
  d'4 d8 d4 d8 d4 d8 c4 d8 | e2.~ e4. e4 e8 |
  \break
  f4 f8 f4 f8 a,4 a8 f'4 f8 | e4 e8 e4 d8 c4 c8 e4 e8 |
  \break
  d4 d8 d4 c8 b4 b8 a4 b8 | c1. |
  \bar "|."
}

harmony = \chordmode {
  s4. | c1. | g1.:7 | g1.:7 | c1. | f1. | c1. | g1.:7 | c1. |
}

words = \lyricmode {
  If you're hap -- py and you know it, clap your hands,
  If you're hap -- py and you know it, clap your hands,
  If you're hap -- py and you know it, then your face will sure -- ly show it,
  If you're hap -- py and you know it, clap your hands.
}

\score {
  <<
    \new ChordNames \with {
      \override ChordName.font-size = #4
      \override ChordName.font-series = #'bold
    } { \set chordChanges = ##t \harmony }

    \new FretBoards \with {
      stringTunings = #ukulele-tuning
      \override FretBoard.size = #1.25
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
    #(layout-set-staff-size 17)
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
% Melody: traditional; checked against the mfiles F lead sheet (transposed to C) and letter-note sheets. Cadence follows the letter-note reading.
% ------------------------------------------------------------------
