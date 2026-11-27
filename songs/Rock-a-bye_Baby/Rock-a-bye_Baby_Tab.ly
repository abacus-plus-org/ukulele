\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Rock-a-bye Baby - Traditional (American; tune credited to Effie I. Crockett, 1872), toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional American lullaby; tune credited to Effie I. Crockett, improvised 1872, published 1886 by Chas. D. Blake as Effie I. Canning; the 1886 publication is out of copyright). Full verse entered.
% Key of F, 3/4, chords F, C and C7 (easy open shapes). One verse, 16 bars, with an eighth-note pickup 'and' (C4) at the end of bar 12 for the American 'and down will come baby', 4 bars per line. The American tune; the old Canning sheet music is in 3/4, modern lead sheets re-notate it in 6/8.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 72) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (American; tune credited to Effie I. Crockett, 1872).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Rock-a-bye Baby" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Nursery Rhyme"
  language      = "English"
  era           = "1800s"
  songkey       = "F"
  timesig       = "3/4"
  occasion      = "Lullaby & Bedtime"
  technique     = "Strumming; Basic Open Chords; Waltz; String Skipping"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Nursery Rhyme; English; 1800s; Strumming; Basic Open Chords; Waltz; String Skipping; F; 3/4; Lullaby & Bedtime; Public Domain"
  difficulty    = "2.2"
  difficultyraw = "3.83"
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
  \key f \major
  \time 3/4
}

melody = \relative c' {
  a4. c8 a'4 | g2 f4 | a,4. c8 f4 | e2 r4 |
  \break
  bf4. c8 bf'4 | a2 g4 | g4 f d | c2 r4 |
  \break
  a4. c8 a'4 | g2 f4 | a,4. c8 f4 | e2 r8 c8 |
  \break
  bf4. c8 bf'4 | a2 f4 | g4 d e | f2. \bar "|."
}

harmony = \chordmode {
  f2. | f2. | f2. | c2.:7 | c2. | c2. | c2.:7 | f2. | f2. | f2. | f2. | c2.:7 | c2. | f2. | c2.:7 | f2. |
}

words = \lyricmode {
  Rock -- a -- bye ba -- by on the tree top,
  when the wind blows the cra -- dle will rock,
  when the bough breaks the cra -- dle will fall,
  and down will come ba -- by, cra -- dle and all.
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
% Melody: traditional; checked against standard lullaby lead sheets.
% ------------------------------------------------------------------
