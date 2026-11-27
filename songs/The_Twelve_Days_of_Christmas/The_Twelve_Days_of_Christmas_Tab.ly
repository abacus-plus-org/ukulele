\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% The Twelve Days of Christmas - Traditional English (Mirth Without Mischief, c. 1780); tune as arranged by Frederic Austin (1909), toddler style (low-G, linear GCEA).
% RIGHTS: public. Words: traditional English, first printed in Mirth Without Mischief (London, c. 1780). Tune: the now-standard melody as arranged by Frederic Austin (1874-1952), published by Novello in 1909 and registered for US copyright in August 1909; works published before 1931 are public domain in the US, and Austin died in 1952, so it is out of copyright in the UK as well (life + 70, ended 2022). The American wording 'gave to me' (20th century) and 'five golden rings' (from Mitch Miller's 1961 recording, per Wikipedia) are single-word folk variants of the traditional text, not new verses; noted here as the only post-1931 detail. No translation is involved. Kyle Coughlin edition (christmasmusicsongs.com) was used only to read the notes, the rhythm and plain chord names; none of its layout is copied.
% Key of D, 4/4 with 3/4 bars for the gifts, a pickup of two eighth notes. Chords D, A7, A, G, E7. Twelve pages, one day per page, every verse written out in full, so the MIDI and audio play all twelve days. Range A3 to B4, the low octave on low-G (lowest note A3, above G3).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 144) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional English (Mirth Without Mischief, c. 1780); tune as arranged by Frederic Austin (1909).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "The Twelve Days of Christmas" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Christmas"
  language      = "English"
  era           = "Traditional"
  songkey       = "D"
  timesig       = "4/4; 3/4"
  occasion      = "Christmas; Singalong; Counting & Learning"
  technique     = "Strumming; More Open Chords; Frequent Chord Changes; Fast Tempo"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Christmas; English; Traditional; Strumming; More Open Chords; Frequent Chord Changes; Fast Tempo; D; 4/4; 3/4; Singalong; Counting & Learning; Public Domain"
  difficulty    = "3.5"
  difficultyraw = "5.65"
  % end tags
}

\paper {
  #(set-paper-size "letter")
  top-margin = 15
  bottom-margin = 15
  left-margin = 18
  right-margin = 18
  system-system-spacing.basic-distance = #6
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
  a8 a8 | \noPageBreak
  a4 d8 d8 d4 cs8 d8 | \noPageBreak
  e8 fs8 g8 e8 fs4. g8 | \noPageBreak
  \break
  a4 b8 g8 fs8 d8 e4 | \noPageBreak
  d2. \bar "|"
  \pageBreak
  a8 a8 | \noPageBreak
  a8 a8 d8 d8 d4 cs8 d8 | \noPageBreak
  e8 fs8 g8 e8 fs2 | \noPageBreak
  \break
  a4 e8 fs8 g4 fs8 g8 | \noPageBreak
  a4 b8 g8 fs8 d8 e4 | \noPageBreak
  d2. \bar "|"
  \pageBreak
  a8 a8 | \noPageBreak
  a4 d8 d8 d4 cs8 d8 | \noPageBreak
  e8 fs8 g8 e8 fs2 | \noPageBreak
  \break
  \time 3/4 a4 e8 fs8 g4 | \noPageBreak
  \time 4/4 a4 e8 fs8 g4 fs8 g8 | \noPageBreak
  a4 b8 g8 fs8 d8 e4 | \noPageBreak
  d2. \bar "|"
  \pageBreak
  a8 a8 | \noPageBreak
  a4 d8 d8 d4 cs8 d8 | \noPageBreak
  e8 fs8 g8 e8 fs2 | \noPageBreak
  \break
  \time 3/4 a4 e8 fs8 g4 | \noPageBreak
  a4 e8 fs8 g4 | \noPageBreak
  \time 4/4 a4 e8 fs8 g4 fs8 g8 | \noPageBreak
  a4 b8 g8 fs8 d8 e4 | \noPageBreak
  d2. \bar "|"
  \pageBreak
  a8 a8 | \noPageBreak
  a4 d8 d8 d4 cs8 d8 | \noPageBreak
  e8 fs8 g8 e8 fs2 | \noPageBreak
  \break
  a2 b8 gs4. | \noPageBreak
  a1 | \noPageBreak
  \break
  \time 3/4 a8 g8 fs8 e8 d4 | \noPageBreak
  g4 b,4 d4 | \noPageBreak
  \time 4/4 e8 d8 cs8 b8 a4 fs'8 g8 | \noPageBreak
  a4 b8 g8 fs8 d8 e4 | \noPageBreak
  d2. \bar "|"
  \pageBreak
  a8 a8 | \noPageBreak
  a8 a8 d8 d8 d4 cs8 d8 | \noPageBreak
  e8 fs8 g8 e8 fs2 | \noPageBreak
  \break
  \time 3/4 a8 a8 e8 fs8 g8 e8 | \noPageBreak
  \time 4/4 a2 b8 gs4. | \noPageBreak
  a1 | \noPageBreak
  \break
  \time 3/4 a8 g8 fs8 e8 d4 | \noPageBreak
  g4 b,4 d4 | \noPageBreak
  \time 4/4 e8 d8 cs8 b8 a4 fs'8 g8 | \noPageBreak
  a4 b8 g8 fs8 d8 e4 | \noPageBreak
  d2. \bar "|"
  \pageBreak
  a8 a8 | \noPageBreak
  a8 a8 d8 d8 d4 cs8 d8 | \noPageBreak
  e8 fs8 g8 e8 fs2 | \noPageBreak
  \break
  \time 3/4 a8 a8 e8 fs8 g8 e8 | \noPageBreak
  a8 a8 e8 fs8 g8 e8 | \noPageBreak
  \time 4/4 a2 b8 gs4. | \noPageBreak
  a1 | \noPageBreak
  \break
  \time 3/4 a8 g8 fs8 e8 d4 | \noPageBreak
  g4 b,4 d4 | \noPageBreak
  \time 4/4 e8 d8 cs8 b8 a4 fs'8 g8 | \noPageBreak
  a4 b8 g8 fs8 d8 e4 | \noPageBreak
  d2. \bar "|"
  \pageBreak
  a8 a8 | \noPageBreak
  a8 a8 d8 d8 d4 cs8 d8 | \noPageBreak
  e8 fs8 g8 e8 fs2 | \noPageBreak
  \break
  \time 3/4 a8 a8 e8 fs8 g8 e8 | \noPageBreak
  a8 a8 e8 fs8 g8 e8 | \noPageBreak
  a8 a8 e8 fs8 g8 e8 | \noPageBreak
  \time 4/4 a2 b8 gs4. | \noPageBreak
  a1 | \noPageBreak
  \break
  \time 3/4 a8 g8 fs8 e8 d4 | \noPageBreak
  g4 b,4 d4 | \noPageBreak
  \time 4/4 e8 d8 cs8 b8 a4 fs'8 g8 | \noPageBreak
  a4 b8 g8 fs8 d8 e4 | \noPageBreak
  d2. \bar "|"
  \pageBreak
  a8 a8 | \noPageBreak
  a8 a8 d8 d8 d4 cs8 d8 | \noPageBreak
  e8 fs8 g8 e8 fs2 | \noPageBreak
  \break
  \time 3/4 a8 a8 e8 fs8 g8 e8 | \noPageBreak
  a8 a8 e8 fs8 g8 e8 | \noPageBreak
  a8 a8 e8 fs8 g8 e8 | \noPageBreak
  a8 a8 e8 fs8 g8 e8 | \noPageBreak
  \break
  \time 4/4 a2 b8 gs4. | \noPageBreak
  a1 | \noPageBreak
  \break
  \time 3/4 a8 g8 fs8 e8 d4 | \noPageBreak
  g4 b,4 d4 | \noPageBreak
  \time 4/4 e8 d8 cs8 b8 a4 fs'8 g8 | \noPageBreak
  a4 b8 g8 fs8 d8 e4 | \noPageBreak
  d2. \bar "|"
  \pageBreak
  a8 a8 | \noPageBreak
  a8 a8 d8 d8 d4 cs8 d8 | \noPageBreak
  e8 fs8 g8 e8 fs2 | \noPageBreak
  \break
  \time 3/4 a8 a8 e8 fs8 g8 e8 | \noPageBreak
  a8 a8 e8 fs8 g8 e8 | \noPageBreak
  a8 a8 e8 fs8 g8 e8 | \noPageBreak
  a8 a8 e8 fs8 g8 e8 | \noPageBreak
  \break
  a8 a8 e8 fs8 g8 e8 | \noPageBreak
  \time 4/4 a2 b8 gs4. | \noPageBreak
  a1 | \noPageBreak
  \break
  \time 3/4 a8 g8 fs8 e8 d4 | \noPageBreak
  g4 b,4 d4 | \noPageBreak
  \time 4/4 e8 d8 cs8 b8 a4 fs'8 g8 | \noPageBreak
  a4 b8 g8 fs8 d8 e4 | \noPageBreak
  d2. \bar "|"
  \pageBreak
  a8 a8 | \noPageBreak
  a16 a16 a8 d8 d8 d4 cs8 d8 | \noPageBreak
  e8 fs8 g8 e8 fs2 | \noPageBreak
  \break
  \time 3/4 a16 a16 a8 e8 fs8 g8 e8 | \noPageBreak
  a8 a8 e8 fs8 g8 e8 | \noPageBreak
  a8 a8 e8 fs8 g8 e8 | \noPageBreak
  a8 a8 e8 fs8 g8 e8 | \noPageBreak
  \break
  a8 a8 e8 fs8 g8 e8 | \noPageBreak
  a8 a8 e8 fs8 g8 e8 | \noPageBreak
  \time 4/4 a2 b8 gs4. | \noPageBreak
  a1 | \noPageBreak
  \break
  \time 3/4 a8 g8 fs8 e8 d4 | \noPageBreak
  g4 b,4 d4 | \noPageBreak
  \time 4/4 e8 d8 cs8 b8 a4 fs'8 g8 | \noPageBreak
  a4 b8 g8 fs8 d8 e4 | \noPageBreak
  d2. \bar "|"
  \pageBreak
  a8 a8 | \noPageBreak
  a8 a8 d8 d8 d4 cs8 d8 | \noPageBreak
  e8 fs8 g8 e8 fs2 | \noPageBreak
  \break
  \time 3/4 a8 a8 e8 fs8 g8 e8 | \noPageBreak
  a16 a16 a8 e8 fs8 g8 e8 | \noPageBreak
  a8 a8 e8 fs8 g8 e8 | \noPageBreak
  a8 a8 e8 fs8 g8 e8 | \noPageBreak
  \break
  a8 a8 e8 fs8 g8 e8 | \noPageBreak
  a8 a8 e8 fs8 g8 e8 | \noPageBreak
  a8 a8 e8 fs8 g8 e8 | \noPageBreak
  \time 4/4 a2 b8 gs4. | \noPageBreak
  a1 | \noPageBreak
  \break
  \time 3/4 a8 g8 fs8 e8 d4 | \noPageBreak
  g4 b,4 d4 | \noPageBreak
  \time 4/4 e8 d8 cs8 b8 a4 fs'8 g8 | \noPageBreak
  a4 b8 g8 fs8 d8 e4 | \noPageBreak
  d2.  \bar "|."
}

harmony = \chordmode {
  s4 \once \set chordChanges = ##f d1 a2:7 d2 d4 g4 d4 a4:7 d2. s4 \once \set chordChanges = ##f d1 a2:7 d2 a1 d4 g4 d4 a4:7 d2. s4 \once \set chordChanges = ##f d1 a2:7 d2 a2. a1 d4 g4 d4 a4:7 d2. s4 \once \set chordChanges = ##f d1 a2:7 d2 a2. a2. a1 d4 g4 d4 a4:7 d2. s4 \once \set chordChanges = ##f d1 a2:7 d2 d2 e2:7 a1:7 d2. g2. a1 d4 g4 d4 a4:7 d2. s4 \once \set chordChanges = ##f d1 a2:7 d2 a2. d2 e2:7 a1:7 d2. g2. a1 d4 g4 d4 a4:7 d2. s4 \once \set chordChanges = ##f d1 a2:7 d2 a2. a2. d2 e2:7 a1:7 d2. g2. a1 d4 g4 d4 a4:7 d2. s4 \once \set chordChanges = ##f d1 a2:7 d2 a2. a2. a2. d2 e2:7 a1:7 d2. g2. a1 d4 g4 d4 a4:7 d2. s4 \once \set chordChanges = ##f d1 a2:7 d2 a2. a2. a2. a2. d2 e2:7 a1:7 d2. g2. a1 d4 g4 d4 a4:7 d2. s4 \once \set chordChanges = ##f d1 a2:7 d2 a2. a2. a2. a2. a2. d2 e2:7 a1:7 d2. g2. a1 d4 g4 d4 a4:7 d2. s4 \once \set chordChanges = ##f d1 a2:7 d2 a2. a2. a2. a2. a2. a2. d2 e2:7 a1:7 d2. g2. a1 d4 g4 d4 a4:7 d2. s4 \once \set chordChanges = ##f d1 a2:7 d2 a2. a2. a2. a2. a2. a2. a2. d2 e2:7 a1:7 d2. g2. a1 d4 g4 d4 a4:7 d2.
}

words = \lyricmode {
  On the first day of Christ -- mas my true love gave to me a par -- tridge _ in a pear tree.
  On the sec -- ond day of Christ -- mas my true love gave to me
  two tur -- tle doves and a par -- tridge _ in a pear tree.
  On the third day of Christ -- mas my true love gave to me
  three French _ hens,
  two tur -- tle doves and a par -- tridge _ in a pear tree.
  On the fourth day of Christ -- mas my true love gave to me
  four call -- ing birds,
  three French _ hens,
  two tur -- tle doves and a par -- tridge _ in a pear tree.
  On the fifth day of Christ -- mas my true love gave to me
  five gold -- en rings,
  four _ call -- ing birds, three French hens,
  two _ tur -- tle doves, and a par -- tridge _ in a pear tree.
  On the sixth _ day of Christ -- mas my true love gave to me
  six _ geese a -- lay -- ing,
  five gold -- en rings,
  four _ call -- ing birds, three French hens,
  two _ tur -- tle doves, and a par -- tridge _ in a pear tree.
  On the sev -- enth day of Christ -- mas my true love gave to me
  sev -- en swans a -- swim -- ming,
  six _ geese a -- lay -- ing,
  five gold -- en rings,
  four _ call -- ing birds, three French hens,
  two _ tur -- tle doves, and a par -- tridge _ in a pear tree.
  On the eighth _ day of Christ -- mas my true love gave to me
  eight _ maids a -- milk -- ing,
  sev -- en swans a -- swim -- ming,
  six _ geese a -- lay -- ing,
  five gold -- en rings,
  four _ call -- ing birds, three French hens,
  two _ tur -- tle doves, and a par -- tridge _ in a pear tree.
  On the ninth _ day of Christ -- mas my true love gave to me
  nine _ la -- dies danc -- ing,
  eight _ maids a -- milk -- ing,
  sev -- en swans a -- swim -- ming,
  six _ geese a -- lay -- ing,
  five gold -- en rings,
  four _ call -- ing birds, three French hens,
  two _ tur -- tle doves, and a par -- tridge _ in a pear tree.
  On the tenth _ day of Christ -- mas my true love gave to me
  ten _ lords a -- leap -- ing,
  nine _ la -- dies danc -- ing,
  eight _ maids a -- milk -- ing,
  sev -- en swans a -- swim -- ming,
  six _ geese a -- lay -- ing,
  five gold -- en rings,
  four _ call -- ing birds, three French hens,
  two _ tur -- tle doves, and a par -- tridge _ in a pear tree.
  On the e -- lev -- enth day of Christ -- mas my true love gave to me
  e -- lev -- en pi -- pers pip -- ing,
  ten _ lords a -- leap -- ing,
  nine _ la -- dies danc -- ing,
  eight _ maids a -- milk -- ing,
  sev -- en swans a -- swim -- ming,
  six _ geese a -- lay -- ing,
  five gold -- en rings,
  four _ call -- ing birds, three French hens,
  two _ tur -- tle doves, and a par -- tridge _ in a pear tree.
  On the twelfth _ day of Christ -- mas my true love gave to me
  twelve _ drum -- mers drum -- ming,
  e -- lev -- en pi -- pers pip -- ing,
  ten _ lords a -- leap -- ing,
  nine _ la -- dies danc -- ing,
  eight _ maids a -- milk -- ing,
  sev -- en swans a -- swim -- ming,
  six _ geese a -- lay -- ing,
  five gold -- en rings,
  four _ call -- ing birds, three French hens,
  two _ tur -- tle doves, and a par -- tridge _ in a pear tree.
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
    #(layout-set-staff-size 15)
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
% Melody: Austin's 1909 melody; checked against the Commons engraving and the Coughlin edition (both in F), set here in D.
% ------------------------------------------------------------------
