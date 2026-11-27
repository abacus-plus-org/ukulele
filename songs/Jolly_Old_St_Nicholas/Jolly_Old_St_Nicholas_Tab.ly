\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Jolly Old St. Nicholas - Words: Emily Huntington Miller (1865); music: James R. Murray (1874), toddler style (low-G, linear GCEA).
% RIGHTS: public. Words: Emily Huntington Miller (1833-1913), from her poem 'Lilly's Secret' in The Little Corporal, Chicago, December 1865; the three verses used are the standard text printed in Franklin Square Song Collection No. 1 (1881) and The Golden Book of Favorite Songs (c. 1915), all published before 1931. Music: first published 1874 in School Chimes (S. Brainard's Sons) and attributed to James R. Murray (1841-1905); the older attribution of the music to Benjamin Hanby is unproven. Both are in the US public domain. Wording follows the Golden Book ('old Santa Claus'); the 1881 book has 'dear Santa Claus'. The sheet carries no modern arrangement text; Coughlin's engravings are copyrighted and were used only to read the melody.
% Key of D, 4/4, chords D, A, A7, G, Bm, F#m, no pickup. Three pages, one verse each, 16 bars per page (four 4-bar lines). 'to say' (verse 1), 'dolly' and 'folly' (verse 3) each sit on one whole note, as in the printed sources. Range A3 to F#4.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 126) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Words: Emily Huntington Miller (1865); music: James R. Murray (1874).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Jolly Old St. Nicholas" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Christmas"
  language      = "English"
  era           = "1800s"
  songkey       = "D"
  timesig       = "4/4"
  occasion      = "Christmas; Kids"
  technique     = "Strumming; More Open Chords; Moderate Tempo; Barre Chords"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Christmas; English; 1800s; Strumming; More Open Chords; Moderate Tempo; Barre Chords; D; 4/4; Kids; Public Domain"
  difficulty    = "3.3"
  difficultyraw = "5.38"
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
}

melody = \relative c' {
  fs4 fs4 fs4 fs4 | e4 e4 e2 | d4 d4 d4 d4 | fs1 |
  \break
  b,4 b4 b4 b4 | a4 a4 d2 | cs4 d4 e4 fs4 | e1 |
  \break
  fs4 fs4 fs4 fs4 | e4 e4 e2 | d4 d4 d4 d4 | fs1 |
  \break
  b,4 b4 b4 b4 | a4 a4 d2 | e4 d4 e4 fs4 | d1 |
  \pageBreak
  fs4 fs4 fs4 fs4 | e4 e4 e2 | d4 d4 d4 d4 | fs1 |
  \break
  b,4 b4 b4 b4 | a4 a4 d2 | cs4 d4 e4 fs4 | e1 |
  \break
  fs4 fs4 fs4 fs4 | e4 e4 e2 | d4 d4 d4 d4 | fs1 |
  \break
  b,4 b4 b4 b4 | a4 a4 d2 | e4 d4 e4 fs4 | d1 |
  \pageBreak
  fs4 fs4 fs4 fs4 | e4 e4 e2 | d4 d4 d4 d4 | fs1 |
  \break
  b,4 b4 b4 b4 | a4 a4 d2 | cs4 d4 e4 fs4 | e1 |
  \break
  fs4 fs4 fs4 fs4 | e4 e4 e2 | d4 d4 d4 d4 | fs1 |
  \break
  b,4 b4 b4 b4 | a4 a4 d2 | e4 d4 e4 fs4 | d1  \bar "|."
}

harmony = \chordmode {
  d1 | a1:7 | b1:m | fs1:m | g1 | d1 | a1 | a1:7 | d1 | a1:7 | b1:m | fs1:m | g1 | d1 | a1:7 | d1 | d1 | a1:7 | b1:m | fs1:m | g1 | d1 | a1 | a1:7 | d1 | a1:7 | b1:m | fs1:m | g1 | d1 | a1:7 | d1 | d1 | a1:7 | b1:m | fs1:m | g1 | d1 | a1 | a1:7 | d1 | a1:7 | b1:m | fs1:m | g1 | d1 | a1:7 | d1 |
}

words = \lyricmode {
  Jol -- ly old Saint Ni -- cho -- las, Lean your ear this way!
  Don't you tell a sin -- gle soul What I'm go -- ing to_say;
  Christ -- mas Eve is com -- ing soon; Now, you dear old man,
  Whis -- per what you'll bring to me; Tell me if you can.
  When the clock is strik -- ing twelve, When I'm fast a -- sleep,
  Down the chim -- ney broad and black, With your pack you'll creep;
  All the stock -- ings you will find Hang -- ing in a row;
  Mine will be the short -- est one, You'll be sure to know.
  John -- ny wants a pair of skates; Su -- sy wants a dolly;
  Nel -- lie wants a sto -- ry book, She thinks dolls are folly.
  As for me, my lit -- tle brain Is -- n't ver -- y bright;
  Choose for me, old San -- ta Claus, What you think is right.
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
% Melody: attributed to Murray, 1874; words from Emily Huntington Miller. Checked against the Golden Book and Franklin Square prints. 'Old Santa Claus' wording.
% ------------------------------------------------------------------
