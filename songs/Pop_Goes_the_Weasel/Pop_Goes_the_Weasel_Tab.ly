\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Pop Goes the Weasel - Traditional (English dance tune, 1850s), toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional English dance tune, music and words of the first verse 1850s; no known current copyright). Full first verse entered, American words (All around the mulberry bush).
% Key of C, 6/8 (two beats per bar, dotted quarter = one beat), chords C and G7. One verse, 8 bars, 2 bars per line.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4. = 60) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (English dance tune, 1850s).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Pop Goes the Weasel" \vspace #2.4 }
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
  technique     = "Strumming; Basic Open Chords; 6/8 Lilt"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Nursery Rhyme; English; Traditional; Strumming; Basic Open Chords; 6/8 Lilt; C; 6/8; Kids; Action Song; Public Domain"
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
  \time 6/8
}

melody = \relative c' {
  c4 c8 d4 d8 | e8 g e c4. |
  c8 c c d4 d8 | e4. c4. |
  \break
  c4 c8 d4 d8 | e8 g e c4. |
  a'4. d,4 f8 | e4. c4. |
  \bar "|."
}

harmony = \chordmode {
  c2. | c2. | c2. | c2. | c2. | c2. | g2.:7 | c2. |
}

words = \lyricmode {
  All a -- round the mul -- ber -- ry bush,
  The mon -- key chased the wea -- sel.
  The mon -- key thought 'twas all in fun,
  Pop! goes the wea -- sel.
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
% Melody: traditional; checked against 19th-century prints and standard children's lead sheets.
% ------------------------------------------------------------------
