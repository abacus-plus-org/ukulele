\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Away in a Manger - Music: William J. Kirkpatrick, Cradle Song (1895); words: anonymous (stanzas 1-2 c. 1882-85, stanza 3 first printed 1892), as printed by Kirkpatrick in 1895, toddler style (low-G, linear GCEA).
% RIGHTS: public. Music: the tune Cradle Song by William J. Kirkpatrick (1838-1921), first published in 1895 in Around the World with Christmas (New York: Hunt & Eaton / Cincinnati: Cranston & Curts); published before 1931 and the composer died in 1921, so it is public domain in the US and everywhere else. Words: the carol is American, not by Martin Luther. Stanzas 1 and 2 appeared anonymously in print from 1882 (The Christian Cynosure, 2 March 1882; Little Pilgrim Songs, 1883; The Myrtle, 3 May 1884) and in a hymnal in 1885. Stanza 3 ('Be near me, Lord Jesus') first appears in Gabriel's Vineyard Songs (Louisville, 1892), unattributed there; the later story crediting John T. McFarland (1904-08, in a 1937 Methodist manual) post-dates that printing and is regarded as unreliable, so the author is unknown. Whoever wrote it, all three stanzas were printed before 1931 and are public domain in the US (McFarland died in 1913 anyway). The wording on the sheet is Kirkpatrick's 1895 text as quoted on Wikipedia from p. 11 of that book (I could not open a scan: the Google Books quota was exhausted and no archive.org copy turned up). Kyle Coughlin's edition (copyright 2017) was used only to read the tune, the rhythm and plain chord names.
% Key of A, 3/4, chords A, E7, F#m, Bm, quarter-note pickup. Three pages, one verse each: 16 bars (four 4-bar lines) per verse. At the end of each page the last bar is two beats long and the next page's pickup note completes it; the last page ends on a held A. Range E4 to F#5, the high octave (the low octave would go below G3).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 84) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Music: William J. Kirkpatrick, Cradle Song (1895); words: anonymous (stanzas 1-2 c. 1882-85, stanza 3 first printed 1892), as printed by Kirkpatrick in 1895.
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Away in a Manger" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Christmas; Hymn & Spiritual"
  language      = "English"
  era           = "1800s"
  songkey       = "A"
  timesig       = "3/4"
  occasion      = "Christmas; Lullaby & Bedtime"
  technique     = "Strumming; More Open Chords; Waltz; Barre Chords; Up to Fret 11; Position Shifts (above fret 5)"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Christmas; Hymn & Spiritual; English; 1800s; Strumming; More Open Chords; Waltz; Barre Chords; Up to Fret 11; Position Shifts (above fret 5); A; 3/4; Lullaby & Bedtime; Public Domain"
  difficulty    = "5.2"
  difficultyraw = "7.88"
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
  \key a \major
  \time 3/4
  \partial 4
}

melody = \relative c' {
  e4 | a4 a4 b8 cs8 | a4 a4 cs8 d8 | e4 e4 fs4 | d2 b8 cs8 |
  \break
  d4 d4 e4 | cs4 cs4 a8 cs8 | b4 fs4 a4 | gs2 e4 |
  \break
  a4 a4 b8 cs8 | a4 a4 cs8 d8 | e4 e4 fs4 | d2 b8 cs8 |
  \break
  d4 d4 e4 | cs4 cs4 a8 cs8 | b4 fs4 gs4 | a2 \bar "|"
  \pageBreak
  e4 | a4 a4 b8 cs8 | a4 a4 cs8 d8 | e4 e4 fs4 | d2 b8 cs8 |
  \break
  d4 d4 e4 | cs4 cs4 a8 cs8 | b4 fs4 a4 | gs2 e4 |
  \break
  a4 a4 b8 cs8 | a4 a4 cs8 d8 | e4 e4 fs4 | d2 b8 cs8 |
  \break
  d4 d4 e4 | cs4 cs4 a8 cs8 | b4 fs4 gs4 | a2 \bar "|"
  \pageBreak
  e4 | a4 a4 b8 cs8 | a4 a4 cs8 d8 | e4 e4 fs4 | d2 b8 cs8 |
  \break
  d4 d4 e4 | cs4 cs4 a8 cs8 | b4 fs4 a4 | gs2 e4 |
  \break
  a4 a4 b8 cs8 | a4 a4 cs8 d8 | e4 e4 fs4 | d2 b8 cs8 |
  \break
  d4 d4 e4 | cs4 cs4 a8 cs8 | b4 fs4 gs4 | a2.  \bar "|."
}

harmony = \chordmode {
  s4 | a2 e4:7 | fs2.:m | a2 fs4:m | b2.:m | b2:m e4:7 | a2 fs4:m | b2.:m | e2.:7 | a2 e4:7 | fs2.:m | a2 fs4:m | b2.:m | b2:m e4:7 | a2 fs4:m | b2:m e4:7 | a2 s4 | a2 e4:7 | fs2.:m | a2 fs4:m | b2.:m | b2:m e4:7 | a2 fs4:m | b2.:m | e2.:7 | a2 e4:7 | fs2.:m | a2 fs4:m | b2.:m | b2:m e4:7 | a2 fs4:m | b2:m e4:7 | a2 s4 | a2 e4:7 | fs2.:m | a2 fs4:m | b2.:m | b2:m e4:7 | a2 fs4:m | b2.:m | e2.:7 | a2 e4:7 | fs2.:m | a2 fs4:m | b2.:m | b2:m e4:7 | a2 fs4:m | b2:m e4:7 | a2. |
}

words = \lyricmode {
  A -- way in a _ man -- ger no _ crib for a bed
  The _ lit -- tle Lord Je -- sus laid _ down his sweet head
  The stars in the _ bright sky looked _ down where he lay
  The _ lit -- tle Lord Je -- sus a -- _ sleep on the hay
  The cat -- tle are _ low -- ing the _ ba -- by a -- wakes
  But _ lit -- tle Lord Je -- sus no _ cry -- ing he makes
  I love thee Lord _ Je -- sus look _ down from the sky
  And _ stay by my cra -- dle till _ morn -- ing is nigh
  Be near me Lord _ Je -- sus I _ ask thee to stay
  Close _ by me for -- ev -- er and _ love me I pray
  Bless all the dear _ chil -- dren in _ thy ten -- der care
  And _ take us to heav -- en to _ live with thee there
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
    #(layout-set-staff-size 16.56)
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
% Melody: the Murray 'Mueller' tune; checked against the Coughlin and Open Hymnal editions. American words.
% ------------------------------------------------------------------
