\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Home on the Range - Brewster M. Higley (words, 1870s), Daniel E. Kelley (music), toddler style (low-G, linear GCEA).
% RIGHTS: public (words by Brewster M. Higley, 1870s, music by Daniel E. Kelley, 1870s; both long out of copyright). First verse and the chorus entered. The 2021 Ballad of America arrangement is only a source for the notes and is not copied.
% Key of D, 3/4, chords D, G, A7, E7 and Bm. First verse plus the 'Home, home on the range' chorus, 32 bars (16 + 16), 8 bars per line, one pickup beat. The low-G range is A3 to A4. D is a half step below the Bing Crosby recording (E-flat), which is awkward on ukulele.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 100) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Brewster M. Higley (words, 1870s), Daniel E. Kelley (music).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Home on the Range" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Folk & Americana"
  language      = "English"
  era           = "1800s"
  songkey       = "D"
  timesig       = "3/4"
  occasion      = "Campfire; Singalong"
  technique     = "Strumming; More Open Chords; Waltz; Moderate Tempo; Barre Chords"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Folk & Americana; English; 1800s; Strumming; More Open Chords; Waltz; Moderate Tempo; Barre Chords; D; 3/4; Campfire; Singalong; Public Domain"
  difficulty    = "3.4"
  difficultyraw = "5.53"
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
  \key d \major
  \time 3/4
  \partial 4
}

melody = \relative c' {
  a4 | a4 d4 e4 | fs2 d8 cs8 | b4 g'4 g4 | g2 fs8 g8 | a2 d,8 d8 | d4 cs4 d4 | e2.~ | e2 a,4 |
  \break
  a4 d4 e4 | fs2 d8 cs8 | b4 g'4 g4 | g2 g8 g8 | fs4. e8 d4 | cs4 d4 e4 | d2.~ | d2 r4 |
  \break
  a'2. | g4 fs4. e8 | fs2.~ | fs2 a,8 a8 | d2 d8 d8 | d4 cs4 d4 | e2.~ | e2 a,4 |
  \break
  a4 d4 e4 | fs2 d8 cs8 | b4 g'4 g4 | g2 g8 g8 | fs4. e8 d4 | cs4 d4 e4 | d2.~ | d2 r4 \bar "|."
}

harmony = \chordmode {
  s4 | d2. | d2. | g2. | g2. | d2. | e2.:7 | a2.:7 | a2.:7 | d2. | d2. | g2. | g2. | d2. | a2.:7 | d2. | d2. | a2.:7 | d2. | d2. | d2. | b2.:m | e2.:7 | a2.:7 | a2.:7 | d2. | d2. | g2. | g2. | d2. | a2.:7 | d2. | d2. |
}

words = \lyricmode {
  Oh give me a home where the buf -- fa -- lo roam, where the
  deer and the an -- te -- lope play. Where sel -- dom is heard a dis -- cour -- ag -- ing
  word, and the skies are not cloud -- y all day.
  Home, home on the range, where the deer and the an -- te -- lope play.
  Where sel -- dom is heard a dis -- cour -- ag -- ing word, and the skies are not
  cloud -- y all day.
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
% Melody: Kelley / Higley; checked against early printed editions and standard lead sheets. American words.
% ------------------------------------------------------------------
