\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"
\storePredefinedDiagram #default-fret-table \chordmode { d:7 } #ukulele-tuning "2-1;o;2-2;o;"  % D7 = 2-0-2-0 (house shape)

% ------------------------------------------------------------------
% Ring Around the Rosie - Traditional (nursery rhyme and singing game), toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional English and American nursery rhyme and singing game; no known author; the rhyme was in print by 1881-1883 in both countries). The American words 'Ring around the rosie, a pocket full of posies, ashes, ashes, we all fall down' are entered in full.
% Key of G, 6/8 (two beats per bar, dotted quarter = one beat), chords G, D7 and Em. One verse, 8 bars, 4 bars per line, sung low on the low-G string (B3 to G4).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4. = 66) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (nursery rhyme and singing game).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Ring Around the Rosie" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Nursery Rhyme"
  language      = "English"
  era           = "Traditional"
  songkey       = "G"
  timesig       = "6/8"
  occasion      = "Kids; Action Song"
  technique     = "Strumming; Basic Open Chords; 6/8 Lilt"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Nursery Rhyme; English; Traditional; Strumming; Basic Open Chords; 6/8 Lilt; G; 6/8; Kids; Action Song; Public Domain"
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
  \key g \major
  \time 6/8
}

melody = \relative c' {
  d4 d8 b4 e8 | d4. b4 c8 | d4 d8 b4 e8 | d4. b4. |
  \break
  d4. b4. | d4. b4 b8 | d4. d4. | g4. r4. |
  \bar "|."
}

harmony = \chordmode {
  g2. | d4.:7 g4. | g2. | d4.:7 g4. | e2.:m | g2. | d2.:7 | g2. |
}

words = \lyricmode {
  Ring a -- round the ro -- sie,
  A pock -- et full of po -- sies,
  Ash -- es, ash -- es,
  We all fall down.
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
