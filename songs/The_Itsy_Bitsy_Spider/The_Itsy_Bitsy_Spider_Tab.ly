\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% The Itsy Bitsy Spider - Traditional (words printed 1910), toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional tune; words printed 1910 in A. W. North, Camp and Camino in Lower California). Full first verse entered.
% Key of C, 6/8 (two beats per bar, dotted quarter = one beat) with a one-quaver pick-up, chords C and G7. One verse, 16 bars, 4 bars per line.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4. = 56) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (words printed 1910).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "The Itsy Bitsy Spider" \vspace #2.4 }
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
  \partial 8
}

melody = \relative c' {
  g8 | c4 c8 c4 d8 | e4. e4 e8 | d4 c8 d4 e8 | c4. r4. |
  \break
  e4. e4 f8 | g4. g4. | f4 e8 f4 g8 | e4. r4. |
  \break
  c4. c4 d8 | e4. e4. | d4 c8 d4 e8 | c4. g4 g8 |
  \break
  c4 c8 c4 d8 | e4. e4 e8 | d4 c8 d4 e8 | c4. r4. |
  \bar "|."
}

harmony = \chordmode {
  s8 | c2. | c2. | g2.:7 | c2. | c2. | c2. | g2.:7 | c2. | c2. | c2. | g2.:7 | c2. | c2. | c2. | g2.:7 | c2. |
}

words = \lyricmode {
  The it -- sy bit -- sy spi -- der climbed up the wa -- ter -- spout.
  Down came the rain and washed the spi -- der out.
  Out came the sun and dried up all the rain,
  and the it -- sy bit -- sy spi -- der climbed up the spout a -- gain.
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
% Melody: traditional; checked against the public-domain MuseScore / PDMX edition (in F).
% ------------------------------------------------------------------
