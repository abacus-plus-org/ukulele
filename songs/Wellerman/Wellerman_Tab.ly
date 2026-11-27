\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Wellerman - Traditional (New Zealand whaling song), toddler style (low-G, linear GCEA).
% RIGHTS: tagged public domain, but this is not a 19th-century song. It was collected and reworked in New Zealand in the 1960s (Tommy Wood and Neil Colquhoun; first broadcast 1969, printed in Colquhoun's 'Songs of a Young Country', 1972). The words rework an 1820s Mocha Dick whaling shanty; the chorus and the sixth verse were written in the 1960s. The 2021 Nathan Evans / 220 Kid / Billen Ted recordings are separate copyrighted arrangements and were not used. First verse and chorus only.
% Key of A minor, 4/4, chords Am, Dm, F, C and E7. First verse plus the 'Soon may the Wellerman come' chorus. Range A3 to C5.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 96) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (New Zealand whaling song).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Wellerman" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Sea Shanties & Sea Songs"
  language      = "English"
  era           = "Traditional"
  songkey       = "Am"
  timesig       = "4/4"
  occasion      = "Singalong; Campfire"
  technique     = "Strumming; More Open Chords"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain (check)"
  tags          = "Sea Shanties & Sea Songs; English; Traditional; Strumming; More Open Chords; Am; 4/4; Singalong; Campfire; Public Domain (check)"
  difficulty    = "1.4"
  difficultyraw = "2.85"
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
  \key a \minor
  \time 4/4
  \partial 4
}

melody = \relative c' {
  e8 e | a,4 b c d | e e e4. e8 | a4 a8 a a4 e8 e | a8 a a4 a4. e8 |
  \break
  a,4 b c d | e e e4. e8 | e4 d c8 c b4 | a2. r4 |
  \break
  a'2 a4. c8 | g8 g e4 e e | f d d d | e c a2 |
  \break
  a'2 a4 a8 c | g8 g e4 e e | e d c b | a2. r4 \bar "|."
}

harmony = \chordmode {
  s4 | a1:m | a1:m | d1:m | a1:m | a1:m | a1:m | e1:7 | a1:m | f1 | c1 | d1:m | a1:m | f1 | c1 | e1:7 | a1:m |
}

words = \lyricmode {
  There once was a ship that put to sea, The name of the ship was the Bil -- ly of Tea. The
  wind blew up, her bow dipped down, O blow, my bul -- ly boys, blow.
  Soon may the Well -- er -- man come, And bring us sug -- ar, tea and rum.
  One day, when the tongu -- in' is done, We'll take our leave and go.
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
% Melody: the New Zealand folk tune collected and reworked by Tommy Wood and Neil Colquhoun (broadcast 1969; printed in Songs of a Young Country, 1972). Checked against the NZ Folk Song transcription in A minor. Not the 2021 pop arrangement.
% ------------------------------------------------------------------
