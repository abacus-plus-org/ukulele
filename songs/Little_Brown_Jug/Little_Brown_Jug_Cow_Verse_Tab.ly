\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Little Brown Jug (Cow Verse) - Joseph E. Winner, toddler style (low-G, linear GCEA).
% RIGHTS: public domain. Words and music published in Philadelphia in 1869 by J. E. Winner (credited as 'Eastburn'). The words are Winner's own 1869 words, taken exactly; no rewrites.
% Key of C, 2/4, chords C, F and G. Winner's own 1869 verse 5 (the cow verse) plus the chorus. Range E4 to E5.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 120) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Joseph E. Winner.
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Little Brown Jug (Cow Verse)" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Folk & Americana"
  language      = "English"
  era           = "1800s"
  songkey       = "C"
  timesig       = "2/4"
  occasion      = "Singalong; Campfire"
  technique     = "Strumming; Basic Open Chords; Frequent Chord Changes; Moderate Tempo; Up to Fret 7"
  versions      = "Letter Sheet; Audio; Alternate Versions"
  rights        = "Public Domain"
  tags          = "Folk & Americana; English; 1800s; Strumming; Basic Open Chords; Frequent Chord Changes; Moderate Tempo; Up to Fret 7; C; 2/4; Singalong; Campfire; Public Domain"
  difficulty    = "3.1"
  difficultyraw = "5.15"
  % end tags
}

\paper {
  #(set-paper-size "letter")
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
  \time 2/4
}

melody = \relative c' {
  \partial 8 g'8 | e8 g8 g8 g8 | f8 a8 a8 a16 a16 | b16 b16 b8 a8 b8 | c8 d8 e8 r8 |
  \break
  e,8 g8 g8 g8 | f8 a8 a8 a8 | b16 b16 b8 a8 b8 | c8 g8 c8 r8 |
  \break
  g8 g8 g4 | a8 a8 a4 | b16 b16 b8 a8 b8 | c8 d8 e4 |
  \break
  g,8 g8 g4 | a8 a8 a4 | b16 b16 b8 a8 b8 | c8 g8 c8 r8 \bar "|."
}

harmony = \chordmode {
  c8 c2 | f2 | g2 | c2 | c2 | f2 | g2 | c2 | c2 | f2 | g2 | c2 | c2 | f2 | g2 | c2 | 
}

words = \lyricmode {
  If I'd a cow that gave such milk, I'd clothe her in the fin -- est silk _ _ I'd feed her on the choic -- est hay, And milk her for -- ty times a day.
  Ha, ha, ha, you and me, Lit -- tle brown jug, don't I love thee; Ha, ha, ha, you and me, Lit -- tle brown jug, don't I love thee.
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
% Melody: traditional (Winner); checked against 19th-century prints and standard lead sheets.
% ------------------------------------------------------------------
