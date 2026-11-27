\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Au Clair de la Lune - Traditionnel, toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional French song; in Weckerlin 1885 and many earlier prints). Full first verse entered.
% Key of C, chords C and G7. One verse (8+8 bars AABA), 4 bars per line.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 88) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditionnel.
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Au Clair de la Lune" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Nursery Rhyme"
  language      = "French"
  era           = "Traditional"
  songkey       = "C"
  timesig       = "4/4"
  occasion      = "Kids; Lullaby & Bedtime"
  technique     = "Strumming; Basic Open Chords"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Nursery Rhyme; French; Traditional; Strumming; Basic Open Chords; C; 4/4; Kids; Lullaby & Bedtime; Public Domain"
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
  c4 c c d | e2 d2 | c4 e d d | c2 r2 |
  \break
  c4 c c d | e2 d2 | c4 e d d | c2 r2 |
  \break
  g'4 g g g | d2 d2 | g4 a g f | d2 r2 |
  \break
  c4 c c d | e2 d2 | c4 e d d | c1 |
  \bar "|."
}

harmony = \chordmode {
  c1 | c2 g2:7 | c2 g2:7 | c1 | c1 | c2 g2:7 | c2 g2:7 | c1 | g1:7 | g1:7 | g2:7 c2 | g1:7 | c1 | c2 g2:7 | c2 g2:7 | c1 |
}

words = \lyricmode {
  Au clair de la lu -- ne
  Mon a -- mi Pier -- rot,
  Prê -- te -- moi ta plu -- me
  Pour é -- crire un mot.
  Ma chan -- delle est mor -- te,
  Je n'ai plus de feu;
  Ou -- vre -- moi ta por -- te,
  Pour l'a -- mour de Dieu.
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
% Melody: traditional; checked against Weckerlin 1885 (p. 48, in G), transposed to C, and the moinejf ABC.
% ------------------------------------------------------------------
