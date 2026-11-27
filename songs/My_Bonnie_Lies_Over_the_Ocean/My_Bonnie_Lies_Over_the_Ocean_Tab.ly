\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% My Bonnie Lies Over the Ocean - Traditional (Scottish origin, American version, 1881), toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional song, published in the USA in 1881; the arrangement printed in 1883 is also public domain). First verse and the chorus entered.
% Key of F, 3/4, chords F and C7. First verse plus the 'Bring back' chorus. The low-G range is A3 to A4.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 100) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (Scottish origin, American version, 1881).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "My Bonnie Lies Over the Ocean" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Folk & Americana"
  language      = "English"
  era           = "Traditional"
  songkey       = "F"
  timesig       = "3/4"
  occasion      = "Singalong; Campfire"
  technique     = "Strumming; Basic Open Chords; Waltz; Moderate Tempo"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Folk & Americana; English; Traditional; Strumming; Basic Open Chords; Waltz; Moderate Tempo; F; 3/4; Singalong; Campfire; Public Domain"
  difficulty    = "1.4"
  difficultyraw = "2.83"
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
  \key f \major
  \time 3/4
  \partial 4
}

melody = \relative c' {
  c4 | a'4 g f | g f d | c a2~ | a2 c4 | a'4 g f | f e f | g2.~ | g2 c,4 |
  \break
  a'4 g f | g f d | c a2~ | a2 c4 | d4 g f | e d e | f2.~ | f2 r4 |
  \break
  c2. f2. d2. g2. | e4 e e | e d e | f2 g4 | a2. |
  \break
  c,2. | f2. | d2. | g2 f4 | e e e | e d e | f2.~ | f2. \bar "|."
}

harmony = \chordmode {
  s4 | f2. | c2.:7 | f2. | f2. | f2. | f2. | c2.:7 | c2.:7 | f2. | c2.:7 | f2. | f2. | c2.:7 | c2.:7 | f2. | f2. | f2. | f2. | f2. | c2.:7 | c2.:7 | c2.:7 | f2. | f2. | f2. | f2. | f2. | c2.:7 | c2.:7 | c2.:7 | f2. | f2. |
}

words = \lyricmode {
  My Bon -- nie lies o -- ver the o -- cean, my
  Bon -- nie lies o -- ver the sea, my
  Bon -- nie lies o -- ver the o -- cean, oh
  bring back my Bon -- nie to me.
  Bring back, bring back, bring back my Bon -- nie to me, to me, bring back, bring back, oh bring back my Bon -- nie to me.
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
    #(layout-set-staff-size 17.28)
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
% Melody: traditional; checked against the 1883 score and later standard lead sheets. Modern 'lies over the ocean' words.
% ------------------------------------------------------------------
