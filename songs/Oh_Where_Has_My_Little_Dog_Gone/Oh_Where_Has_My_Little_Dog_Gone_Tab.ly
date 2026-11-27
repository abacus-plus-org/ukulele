\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Oh Where Has My Little Dog Gone? - Traditional (German folk tune; words by Septimus Winner, 1864), toddler style (low-G, linear GCEA).
% RIGHTS: public. German folk tune ('In Lauterbach hab ich mein Strumpf verlor'n') with the 1864 Septimus Winner song 'Der Deitcher's Dog' as the source of the English nursery verse (Winner died 1905). The sheet arrangements read are copyrighted arrangements of the tune only; no text or notation was copied. The other, dialect verses of the 1864 song are left out.
% Key of C, 3/4 with a one-beat pick-up, chords C, G7 and Dm. One traditional verse sung twice (the second time with the modern 'so short / so long' wording).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 100) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (German folk tune; words by Septimus Winner, 1864).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Oh Where Has My Little Dog Gone?" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Children's Song"
  language      = "English"
  era           = "1800s"
  songkey       = "C"
  timesig       = "3/4"
  occasion      = "Kids"
  technique     = "Strumming; Basic Open Chords; Waltz; Moderate Tempo"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Children's Song; English; 1800s; Strumming; Basic Open Chords; Waltz; Moderate Tempo; C; 3/4; Kids; Public Domain"
  difficulty    = "1.4"
  difficultyraw = "2.83"
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
  \partial 4
}

melody = \relative c' {
  e4 |
  g2 e4 | c4 b c | d4 d b | g2 g'4 |
  \break
  a2 g4 | f4 e d | g2. | r4 e4 f4 |
  \break
  g2 e4 | c4 b c | d2 b4 | g2 g'4 |
  \break
  a2 g4 | f4 e d | c2.~ | c2 e4 |
  \break
  g2 e4 | c4 b c | d4 d b | g2 g'4 |
  \break
  a2 g4 | f4 e d | g2. | r4 e4 f4 |
  \break
  g2 e4 | c4 b c | d2 b4 | g2 g'4 |
  \break
  a2 g4 | f4 e d | c2.~ | c2. |
  \bar "|."
}

harmony = \chordmode {
  s4 | c2. | c2. | g2.:7 | g2.:7 | d2.:m | g2.:7 | c2. | g2.:7 | c2. | c2. | g2.:7 | g2.:7 | d2.:m | g2.:7 | c2. | c2. | c2. | c2. | g2.:7 | g2.:7 | d2.:m | g2.:7 | c2. | g2.:7 | c2. | c2. | g2.:7 | g2.:7 | d2.:m | g2.:7 | c2. | c2. |
}

words = \lyricmode {
  Oh where, oh where has my lit -- tle dog gone?
  Oh where, oh where can he be?
  With his ears cut short and his tail cut long,
  Oh where, oh where can he be?
  Oh where, oh where has my lit -- tle dog gone?
  Oh where, oh where can he be?
  With his ears so short and his tail so long,
  Oh where, oh where can he be?
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
% Melody: Winner, 1864; checked against 19th-century prints and standard children's lead sheets.
% ------------------------------------------------------------------
