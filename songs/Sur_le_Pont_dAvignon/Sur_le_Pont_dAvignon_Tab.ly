\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Sur le Pont d'Avignon - Traditionnel, toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional; in Weckerlin 1885 as chanson mimée). Full refrain entered; couplets omitted for toddler one-verse.
% Key of C, 2/4 Allegretto pace, chords C and G7. Refrain only (one verse), 8 bars, 4 bars per line.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 112) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditionnel.
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Sur le Pont d'Avignon" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Children's Song"
  language      = "French"
  era           = "Traditional"
  songkey       = "C"
  timesig       = "2/4"
  occasion      = "Kids; Action Song"
  technique     = "Strumming; Basic Open Chords; Frequent Chord Changes; Moderate Tempo"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Children's Song; French; Traditional; Strumming; Basic Open Chords; Frequent Chord Changes; Moderate Tempo; C; 2/4; Kids; Action Song; Public Domain"
  difficulty    = "2.3"
  difficultyraw = "4.00"
  % end tags
}

\paper {
  #(set-paper-size "a4")
  top-margin = 15
  bottom-margin = 15
  left-margin = 18
  right-margin = 18
  system-system-spacing.basic-distance = #12
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
  \time 2/4
}

melody = \relative c' {
  g8 c c c | d8 d d4 | e8 c d b | c8 g c4 |
  \break
  g8 c c4 | d8 d d4 | e8 c d b | c8 c c4 |
  \bar "|."
}

harmony = \chordmode {
  c2 | g2:7 | c4 g4:7 | c2 | c2 | g2:7 | c4 g4:7 | c2 |
}

words = \lyricmode {
  Sur le pont d'A -- vi -- gnon
  L'on y dan -- se l'on y dan -- se
  Sur le pont d'A -- vi -- gnon
  L'on y dan -- se tout en rond.
}

\score {
  <<
    \new ChordNames \with {
      \override ChordName.font-size = #4
      \override ChordName.font-series = #'bold
    } { \set chordChanges = ##t \harmony }

    \new FretBoards \with {
      stringTunings = #ukulele-tuning
      \override FretBoard.size = #1.6
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
    #(layout-set-staff-size 22)
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
% Melody: traditional; checked against Weckerlin and standard French children's editions.
% ------------------------------------------------------------------
