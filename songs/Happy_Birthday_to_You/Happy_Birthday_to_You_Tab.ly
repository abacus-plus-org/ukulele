\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Happy Birthday to You - Mildred J. Hill and Patty S. Hill (1893), toddler style (low-G, linear GCEA).
% RIGHTS: public domain in the US. Melody 'Good Morning to All' (Hill sisters, 1893) expired in 1949; the 2015 ruling found Warner/Chappell did not own the 'Happy Birthday to You' words and the June 2016 Final Order and Judgment in Good Morning to You Productions Corp. v. Warner/Chappell Music, Inc. (C.D. Cal. CV 13-04460) declares the song to be in the public domain.
% Key of C, 3/4 with a one-beat pickup, chords C, G7 and F. Range G3 to G4; lowest note G3 (MIDI 55). The name line says 'dear friend'; put any name on the two notes under the fermata.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 100) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Mildred J. Hill and Patty S. Hill (1893).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Happy Birthday to You" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Holiday & Celebration"
  language      = "English"
  era           = "1800s"
  songkey       = "C"
  timesig       = "3/4"
  occasion      = "Birthday; Singalong; Kids"
  technique     = "Strumming; Basic Open Chords; Waltz; Moderate Tempo; More Open Chords (Letter tab sheet only); Frequent Chord Changes (Letter tab sheet only)"
  versions      = "Letter Sheet; Audio; Letter Tab Sheet; Letter Tab + Chord Sheet"
  rights        = "Public Domain"
  tags          = "Holiday & Celebration; English; 1800s; Strumming; Basic Open Chords; Waltz; Moderate Tempo; More Open Chords; Frequent Chord Changes; C; 3/4; Birthday; Singalong; Kids; Public Domain"
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
  \key c \major
  \time 3/4
}

melody = \relative c' {
  \partial 4 g8. g16 | a4 g4 c4 | b2 g8. g16 | a4 g4 d'4 | c2 g8. g16 |
  \break
  g'4 e4 c4 | b4 a4 \fermata f'8. f16 | e4 c4 d4 | c2. \bar "|."
}

harmony = \chordmode {
  s4 | c2. | g2.:7 | g2.:7 | c2. | c2. | c4 f2 | c2 g4:7 | c2.
}

words = \lyricmode {
  Hap -- py birth -- day to you, Hap -- py birth -- day to you, Hap -- py birth -- day, dear friend _ Hap -- py birth -- day to you.
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
% Melody: the traditional Hill tune; checked against commonly printed public-domain lead sheets.
% ------------------------------------------------------------------
