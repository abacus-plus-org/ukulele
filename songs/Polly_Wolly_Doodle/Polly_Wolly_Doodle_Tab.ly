\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Polly Wolly Doodle - Traditional (American, mid-19th century), toddler style (low-G, linear GCEA).
% RIGHTS: public (anonymous 19th-century American minstrel-era song, sometimes credited to Daniel Decatur Emmett; published before 1931, so public domain in the US). Only the first verse ('went down South for to see my Sal ... spunky gal') and the chorus are entered; the offensive minstrel-era verses are left out.
% Key of D, 4/4, two-eighth pick-up, chords D and A7. First verse plus the 'Fare thee well' chorus in one pass (16 bars), 4 bars per line, sung low on the low-G string (C#4 to A4).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 96) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (American, mid-19th century).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Polly Wolly Doodle" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Folk & Americana"
  language      = "English"
  era           = "Traditional"
  songkey       = "D"
  timesig       = "4/4"
  occasion      = "Singalong; Campfire"
  technique     = "Strumming; Basic Open Chords"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Folk & Americana; English; Traditional; Strumming; Basic Open Chords; D; 4/4; Singalong; Campfire; Public Domain"
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
  \key d \major
  \time 4/4
  \partial 4
}

melody = \relative c' {
  d8 e | fs4 fs d d8 e | fs4 fs d d8 e | fs8 fs fs fs g g fs fs | e2 r4 cs8 d |
  \break
  e4 e cs cs | e4 e cs e | a8 a a a g g e e | d2 r4 d8 e |
  \break
  fs2. d8 e | fs2. d8 e | fs4 fs g fs | e2. cs8 d |
  \break
  e8 e e e cs cs cs d | e8 e e e cs cs e4 | a8 a a a g g e e | d2. r4 |
  \bar "|."
}

harmony = \chordmode {
  s4 | d1 | d1 | d1 | a1:7 | a1:7 | a1:7 | a1:7 | d1 | d1 | d1 | d1 | a1:7 | a1:7 | a1:7 | a1:7 | d1 |
}

words = \lyricmode {
  Oh, I went down South for to see my Sal, Sing _
  Pol -- ly wol -- ly doo -- dle all the day,
  My _ Sal, she is a spunk -- y gal, Sing
  Pol -- ly wol -- ly doo -- dle all the day.
  Fare thee well, fare thee well,
  Fare thee well my fair -- y fay, For I'm
  goin' to Lou' -- si -- an -- a for to see my Su -- sy -- an -- na, Sing
  Pol -- ly wol -- ly doo -- dle all the day.
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
% Melody: traditional; checked against 19th-century American prints and standard lead sheets.
% ------------------------------------------------------------------
