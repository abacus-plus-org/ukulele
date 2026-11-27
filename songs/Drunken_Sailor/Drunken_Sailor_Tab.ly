\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Drunken Sailor - Traditional (sea shanty, 19th century), toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional sea shanty of the 19th century; the printed settings of 1914 and 1921 are public domain; Stan Hugill's 1961 book is still copyrighted and was not copied). First verse and chorus entered.
% Key of A (Dorian, minor sound), 2/4, chords Am and G. First verse plus the 'Way hay and up she rises' chorus. Range G3 to A4.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 96) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (sea shanty, 19th century).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Drunken Sailor" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Sea Shanties & Sea Songs"
  language      = "English"
  era           = "Traditional"
  songkey       = "A Dorian"
  timesig       = "2/4"
  occasion      = "Singalong; Campfire"
  technique     = "Strumming; Basic Open Chords"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Sea Shanties & Sea Songs; English; Traditional; Strumming; Basic Open Chords; A Dorian; 2/4; Singalong; Campfire; Public Domain"
  difficulty    = "0.3"
  difficultyraw = "1.35"
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
  \key a \dorian
  \time 2/4
}

melody = \relative c' {
  e8 e16 e e8 e16 e | e8 a, c e | d8 d16 d d8 d16 d | d8 g, b d |
  \break
  e8 e16 e e8 e16 e | e8 fs g a | g8 e d b | a4 a |
  \break
  e'4 e8. e16 | e8 a, c e | d4 d8. d16 | d8 g, b d |
  \break
  e4 e8. e16 | e8 fs g a | g8 e d b | a4 a \bar "|."
}

harmony = \chordmode {
  a2:m | a2:m | g2 | g2 | a2:m | a2:m | g2 | a2:m | a2:m | a2:m | g2 | g2 | a2:m | a2:m | g2 | a2:m |
}

words = \lyricmode {
  What shall we do with the drunk -- en sai -- lor, What shall we do with the drunk -- en sai -- lor,
  What shall we do with the drunk -- en sai -- lor, Ear -- ly in the morn -- ing.
  Way hay and up she ri -- ses, Way hay and up she ri -- ses,
  Way hay and up she ri -- ses, Ear -- ly in the morn -- ing.
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
% Melody: traditional sea shanty; checked against 19th-century collections and modern public-domain lead sheets.
% ------------------------------------------------------------------
