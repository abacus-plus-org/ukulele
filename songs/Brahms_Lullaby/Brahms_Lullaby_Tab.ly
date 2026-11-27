\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Brahms' Lullaby - Johannes Brahms (1868), English words printed 1888, toddler style (low-G, linear GCEA).
% RIGHTS: public domain in the US. Music by Johannes Brahms (1868; died 1897). English text printed in Songs of Harvard (1888); translator uncertain (Natalia Macfarren per Wikipedia and Liederprojekt), but a US publication of 1888 is public domain.
% Key of C, 3/4 with a one-beat pickup, chords C, F, G and G7. Range C4 to C5; lowest note C4 (MIDI 60). English words from Songs of Harvard (1888).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 74) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Johannes Brahms (1868), English words printed 1888.
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Brahms' Lullaby" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Classical; Nursery Rhyme"
  language      = "English"
  era           = "1800s"
  songkey       = "C"
  timesig       = "3/4"
  occasion      = "Lullaby & Bedtime"
  technique     = "Strumming; More Open Chords; Waltz"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Classical; Nursery Rhyme; English; 1800s; Strumming; More Open Chords; Waltz; C; 3/4; Lullaby & Bedtime; Public Domain"
  difficulty    = "1.7"
  difficultyraw = "3.23"
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
  \time 3/4
}

melody = \relative c' {
  \partial 4 e8 e8 | g4. e8 e4 | g4 r4 e8 g8 | c4 b4. a8 | a4 g4 d8 e8 |
  \break
  f4 d4 d8 e8 | f4 r4 d8 f8 | b8 a8 g4 b4 | c4 r4 c,8 c8 |
  \break
  c'2 a8 f8 | g2 e8 c8 | f4 g4 a4 | g2 c,8 c8 |
  \break
  c'2 a8 f8 | g2 e8 c8 | f4 e4 d4 | c2 r4 \bar "|."
}

harmony = \chordmode {
  s4 | c2. | c2. | c2. | g2. | g2.:7 | g2.:7 | g2.:7 | c2. | f2. | c2. | g2.:7 | c2. | f2. | c2. | g2.:7 | c2.
}

words = \lyricmode {
  Lul -- la -- by and good night, with _ ros -- es be -- dight _ with _ lil -- ies o'er _ spread is _ ba -- _ by's wee bed. Lay thee down now and rest, may thy slum -- ber be blest, lay thee down now and rest, may thy slum -- ber be blest.
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
% Melody: Brahms, 1868; checked against the standard English-text edition. English words as printed in Songs of Harvard (1888).
% ------------------------------------------------------------------
