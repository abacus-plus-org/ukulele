\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Leave Her, Johnny - Traditional (sea shanty, 19th century), toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional sea shanty of the 19th century; Cecil Sharp's 1914 English Folk-Chanteys and Bullen's 1914 Songs of Sea Labour are public domain; Stan Hugill's 1961 book is still copyrighted and was not copied). First verse and chorus entered.
% Key of A Dorian (A minor with a raised sixth, F sharp), 4/4 with a two-quaver pick-up, chords Am, G and D. First verse: 'O the times are hard and the wages low / Leave her Johnny, leave her / O the times are hard and the wages low, it's time for us to leave her', 8 bars. Range G3 to G4.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 72) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (sea shanty, 19th century).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Leave Her, Johnny" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Sea Shanties & Sea Songs"
  language      = "English"
  era           = "Traditional"
  songkey       = "A Dorian"
  timesig       = "4/4"
  occasion      = "Singalong"
  technique     = "Strumming; Basic Open Chords"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Sea Shanties & Sea Songs; English; Traditional; Strumming; Basic Open Chords; A Dorian; 4/4; Singalong; Public Domain"
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
  \time 4/4
  \partial 4
}

melody = \relative c' {
  e8 d | c4 a b g8 g | a4 b a2 | g4 a c4. c8 | d4 e2 e8 fs |
  \break
  g4 e d b8 b | c4 a g e' | a,4. b8 c4 d | b4 a2. \bar "|."
}

harmony = \chordmode {
  s4 | a1:m | a1:m | g1 | d1 | g1 | a1:m | a1:m | a1:m |
}

words = \lyricmode {
  O the times are hard and the wa -- ges low,
  Leave her John -- ny, leave her; O the
  times are hard and the wa -- ges low, It's
  time for us to leave her.
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
% Melody: traditional sea shanty; checked against Terry, Hugill, and other public-domain collections.
% ------------------------------------------------------------------
