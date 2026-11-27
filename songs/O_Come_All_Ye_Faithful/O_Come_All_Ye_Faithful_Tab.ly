\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% O Come, All Ye Faithful - Tune: Adeste Fideles, attributed to John Francis Wade (c. 1743-1751); Latin text attributed to Wade; English text: Frederick Oakeley (1841), W. T. Brooke, as printed in The Hymnal (Episcopal, 1916), toddler style (low-G, linear GCEA).
% RIGHTS: public. Music: the tune Adeste Fideles, usually credited to John Francis Wade (c. 1710-1786), first printed in manuscript c. 1743-1751 (Cantus Diversi, 1751); it is far older than 1931 and public domain. Words: Latin Adeste fideles, also attributed to Wade (1751). English text: stanzas 1-3 and the 'Yea, Lord' stanza by Frederick Oakeley (1802-1880), translated 1841 for his Margaret Chapel, London; stanzas 'See how the shepherds' and 'Lo! star-led chieftains' (and 'Child, for us sinners') by William Thomas Brooke (1848-1917), a translation printed well before 1931. The sheet uses the wording of the 1916 Episcopal Hymnal (as aligned on openhymnal.org), a US printing from 1916, so every word is public domain in the US (Oakeley d. 1880, Brooke d. 1917). Note: openhymnal.org credits verses 1-3 and 6 to Oakeley and 4-5 to Brooke; Wikipedia attributes the Oakeley 1841 set as 'O come', 'God of God', 'Sing choirs' and 'Yea, Lord'. Kyle Coughlin's edition (copyright 2013) was used only to read the tune, the rhythm and plain chord names.
% Key of F, 4/4, chords F, C, Bb, Dm, Gm, G, G7 and C7, quarter-note pickup. Six pages, one verse each: 20 bars (four 5-bar lines) per verse. At the end of each page the last bar is three beats long and the next page's pickup (a rest from verse 2 on) completes it; the last page ends on a held F. Range C4 to C5, the low octave on low-G (lowest note C4, well above G3).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 84) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Tune: Adeste Fideles, attributed to John Francis Wade (c. 1743-1751); Latin text attributed to Wade; English text: Frederick Oakeley (1841), W. T. Brooke, as printed in The Hymnal (Episcopal, 1916).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "O Come, All Ye Faithful" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Christmas; Hymn & Spiritual"
  language      = "English"
  era           = "1700s"
  songkey       = "F"
  timesig       = "4/4"
  occasion      = "Christmas; Singalong"
  technique     = "Strumming; 7th & Minor Chords; Frequent Chord Changes; Barre Chords"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Christmas; Hymn & Spiritual; English; 1700s; Strumming; 7th & Minor Chords; Frequent Chord Changes; Barre Chords; F; 4/4; Singalong; Public Domain"
  difficulty    = "3.7"
  difficultyraw = "5.92"
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
  \time 4/4
  \partial 4
}

melody = \relative c' {
  f4 | f2 c4 f4 | g2 c,2 | a'4 g4 a4 bf4 | a2 g4 f4 | f2 e4 d4 |
  \break
  e4 f4 g4 a4 | e2 d4. c8 | c2. r4 | c'2 bf4 a4 | bf2 a2 |
  \break
  g4 a4 f4 g4 | e4. d8 c4 f4 | f4 e4 f4 g4 | f2 c4 a'4 | a4 g4 a4 bf4 |
  \break
  a2 g4 a4 | bf4 a4 g4 f4 | e2 f4 bf4 | a2 g4. f8 | f2. \bar "|"
  \pageBreak
  r4 | f2 c4 f4 | g2 c,2 | a'4 g4 a4 bf4 | a2 g4 f4 | f2 e4 d4 |
  \break
  e4 f4 g4 a4 | e2 d4. c8 | c2. r4 | c'2 bf4 a4 | bf2 a2 |
  \break
  g4 a4 f4 g4 | e4. d8 c4 f4 | f4 e4 f4 g4 | f2 c4 a'4 | a4 g4 a4 bf4 |
  \break
  a2 g4 a4 | bf4 a4 g4 f4 | e2 f4 bf4 | a2 g4. f8 | f2. \bar "|"
  \pageBreak
  r4 | f2 c4 f4 | g2 c,2 | a'4 g4 a4 bf4 | a2 g4 f4 | f2 e4 d4 |
  \break
  e4 f4 g4 a4 | e2 d4. c8 | c2. r4 | c'2 bf4 a4 | bf2 a2 |
  \break
  g4 a4 f4 g4 | e4. d8 c4 f4 | f4 e4 f4 g4 | f2 c4 a'4 | a4 g4 a4 bf4 |
  \break
  a2 g4 a4 | bf4 a4 g4 f4 | e2 f4 bf4 | a2 g4. f8 | f2. \bar "|"
  \pageBreak
  r4 | f2 c4 f4 | g2 c,2 | a'4 g4 a4 bf4 | a2 g4 f4 | f2 e4 d4 |
  \break
  e4 f4 g4 a4 | e2 d4. c8 | c2. r4 | c'2 bf4 a4 | bf2 a2 |
  \break
  g4 a4 f4 g4 | e4. d8 c4 f4 | f4 e4 f4 g4 | f2 c4 a'4 | a4 g4 a4 bf4 |
  \break
  a2 g4 a4 | bf4 a4 g4 f4 | e2 f4 bf4 | a2 g4. f8 | f2. \bar "|"
  \pageBreak
  r4 | f2 c4 f4 | g2 c,2 | a'4 g4 a4 bf4 | a2 g4 f4 | f2 e4 d4 |
  \break
  e4 f4 g4 a4 | e2 d4. c8 | c2. r4 | c'2 bf4 a4 | bf2 a2 |
  \break
  g4 a4 f4 g4 | e4. d8 c4 f4 | f4 e4 f4 g4 | f2 c4 a'4 | a4 g4 a4 bf4 |
  \break
  a2 g4 a4 | bf4 a4 g4 f4 | e2 f4 bf4 | a2 g4. f8 | f2. \bar "|"
  \pageBreak
  r4 | f2 c4 f4 | g2 c,2 | a'4 g4 a4 bf4 | a2 g4 f4 | f2 e4 d4 |
  \break
  e4 f4 g4 a4 | e2 d4. c8 | c2. r4 | c'2 bf4 a4 | bf2 a2 |
  \break
  g4 a4 f4 g4 | e4. d8 c4 f4 | f4 e4 f4 g4 | f2 c4 a'4 | a4 g4 a4 bf4 |
  \break
  a2 g4 a4 | bf4 a4 g4 f4 | e2 f4 bf4 | a2 g4. f8 | f2.  \bar "|."
}

harmony = \chordmode {
  s4 | f1 | c1 | f4 c4 f4 bf4 | f2 c4 d4:m | d2:m c4 g4 | c4 f4 c4 f4 | c2 g2:7 | c1 | f2 g4:m f4 | c2:7 f2 | c4 f4 d4:m g4:m | c1 | f4 c4 f4 c4 | f1 | f4 c4 f4 c4 | f2 c4 f4 | c4 f4 c4 g4:7 | c2 f4 bf4 | f2 c2:7 | f2. s4 | f1 | c1 | f4 c4 f4 bf4 | f2 c4 d4:m | d2:m c4 g4 | c4 f4 c4 f4 | c2 g2:7 | c1 | f2 g4:m f4 | c2:7 f2 | c4 f4 d4:m g4:m | c1 | f4 c4 f4 c4 | f1 | f4 c4 f4 c4 | f2 c4 f4 | c4 f4 c4 g4:7 | c2 f4 bf4 | f2 c2:7 | f2. s4 | f1 | c1 | f4 c4 f4 bf4 | f2 c4 d4:m | d2:m c4 g4 | c4 f4 c4 f4 | c2 g2:7 | c1 | f2 g4:m f4 | c2:7 f2 | c4 f4 d4:m g4:m | c1 | f4 c4 f4 c4 | f1 | f4 c4 f4 c4 | f2 c4 f4 | c4 f4 c4 g4:7 | c2 f4 bf4 | f2 c2:7 | f2. s4 | f1 | c1 | f4 c4 f4 bf4 | f2 c4 d4:m | d2:m c4 g4 | c4 f4 c4 f4 | c2 g2:7 | c1 | f2 g4:m f4 | c2:7 f2 | c4 f4 d4:m g4:m | c1 | f4 c4 f4 c4 | f1 | f4 c4 f4 c4 | f2 c4 f4 | c4 f4 c4 g4:7 | c2 f4 bf4 | f2 c2:7 | f2. s4 | f1 | c1 | f4 c4 f4 bf4 | f2 c4 d4:m | d2:m c4 g4 | c4 f4 c4 f4 | c2 g2:7 | c1 | f2 g4:m f4 | c2:7 f2 | c4 f4 d4:m g4:m | c1 | f4 c4 f4 c4 | f1 | f4 c4 f4 c4 | f2 c4 f4 | c4 f4 c4 g4:7 | c2 f4 bf4 | f2 c2:7 | f2. s4 | f1 | c1 | f4 c4 f4 bf4 | f2 c4 d4:m | d2:m c4 g4 | c4 f4 c4 f4 | c2 g2:7 | c1 | f2 g4:m f4 | c2:7 f2 | c4 f4 d4:m g4:m | c1 | f4 c4 f4 c4 | f1 | f4 c4 f4 c4 | f2 c4 f4 | c4 f4 c4 g4:7 | c2 f4 bf4 | f2 c2:7 | f2.
}

words = \lyricmode {
  O come, all ye faith -- ful, joy -- ful and tri -- um -- phant, O
  come ye, O come _ ye, to Beth -- _ le -- hem. Come and be --
  hold Him, born the King of an -- _ gels; O come, let us a --
  dore Him, O come, let us a -- dore Him, O come, let us a -- dore Him, _ Christ _ the Lord.
  True God of true God, Light from Light E -- ter -- nal, _
  Lo, He _ shuns _ not the Vir -- _ gin's womb; Son of the
  Fa -- ther, be -- got -- ten, not cre -- a -- ted; O come, let us a --
  dore Him, O come, let us a -- dore Him, O come, let us a -- dore Him, _ Christ _ the Lord.
  Sing, choirs of an -- gels, sing in ex -- ul -- ta -- tion;
  O sing, all ye cit -- i -- zens of heav'n _ a -- bove! Glo -- ry to
  God, _ glo -- ry in the high -- _ est; O come, let us a --
  dore Him, O come, let us a -- dore Him, O come, let us a -- dore Him, _ Christ _ the Lord.
  See how the shep -- herds, sum -- moned to His cra -- dle, _
  Leav -- ing their flocks, _ draw _ nigh _ to gaze; We too will
  thi -- ther bend our joy -- ful foot -- _ steps; O come, let us a --
  dore Him, O come, let us a -- dore Him, O come, let us a -- dore Him, _ Christ _ the Lord.
  Lo! star led chief -- tains, Ma -- gi, Christ a -- dor -- ing, _
  Of -- fer Him in -- _ cense, _ gold, _ and myrrh; We to the
  Christ Child bring our hearts' ob -- la -- _ tions. O come, let us a --
  dore Him, O come, let us a -- dore Him, O come, let us a -- dore Him, _ Christ _ the Lord.
  Yea, Lord, we greet Thee, born this hap -- py morn -- ing; _
  Je -- sus, to Thee be glo -- ry giv -- en; _ _ Word of the
  Fa -- ther, now in flesh ap -- pear -- _ ing; O come, let us a --
  dore Him, O come, let us a -- dore Him, O come, let us a -- dore Him, _ Christ _ the Lord.
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
% Melody: 'Adeste fideles'; Wade / Oakley English text. Checked against the Coughlin and Open Hymnal editions.
% ------------------------------------------------------------------
