\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% God Rest Ye Merry, Gentlemen - Traditional English carol (words c. 1760, printed by William Sandys, 1833); tune: traditional English, toddler style (low-G, linear GCEA).
% RIGHTS: public. Anonymous traditional English carol, first printed about 1760 (Three New Christmas Carols); the American first-verse wording ('God rest ye merry, gentlemen ... Remember Christ our Saviour / Was born on Christmas Day') follows the Wolverhampton broadside printed by J. Smart (c. 1780-1800), quoted on Wikipedia, with the 'ye' of Mildred Gauntlett (1906) and Hutchins's Carols Old and Carols New (Boston, 1916). The other stanzas are from William Sandys, Christmas Carols, Ancient and Modern (1833) and Schauffler, Our American Holidays: Christmas, both on Wikisource. No translation is involved. The tune is the traditional London tune (Sandys 1833, Stainer 1871). Kyle Coughlin edition (christmasmusicsongs.com) was used only to read the notes, the rhythm and plain chord names; none of its layout is copied.
% Key of B minor, 4/4, one-beat pickup, chords Bm, F#, G, Em, B7, A, D, F#7, E, E7 and A7. Four pages, one verse each with the refrain: 19 bars plus the pickup per verse; each page ends on a three-beat bar that the next page's pickup completes. Range A3 to B4, the low octave on low-G (lowest note A3, above G3).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 97) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional English carol (words c. 1760, printed by William Sandys, 1833); tune: traditional English.
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "God Rest Ye Merry, Gentlemen" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Christmas; Hymn & Spiritual"
  language      = "English"
  era           = "Traditional"
  songkey       = "Bm"
  timesig       = "4/4"
  occasion      = "Christmas; Singalong"
  technique     = "Strumming; 7th & Minor Chords; Frequent Chord Changes; Barre Chords"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Christmas; Hymn & Spiritual; English; Traditional; Strumming; 7th & Minor Chords; Frequent Chord Changes; Barre Chords; Bm; 4/4; Singalong; Public Domain"
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
  \key b \minor
  \time 4/4
  \partial 4
}

melody = \relative c' {
  b4 | \noPageBreak
  b4 fs'4 fs4 e4 | \noPageBreak
  d4 cs4 b4 a4 | \noPageBreak
  b4 cs4 d4 e4 | \noPageBreak
  fs2. b,4 | \noPageBreak
  \break
  b4 fs'4 fs4 e4 | \noPageBreak
  d4 cs4 b4 a4 | \noPageBreak
  b4 cs4 d4 e4 | \noPageBreak
  fs2. fs4 | \noPageBreak
  \break
  g4 e4 fs4 g4 | \noPageBreak
  a4 b4 fs4 e4 | \noPageBreak
  d4 b4 cs4 d4 | \noPageBreak
  e2 d4 e4 | \noPageBreak
  \break
  fs2 g4 fs4 | \noPageBreak
  fs4 e4 d4 cs4 | \noPageBreak
  b2 d8 cs8 b4 | \noPageBreak
  e2 d4 e4 | \noPageBreak
  \break
  fs4 g4 a4 b4 | \noPageBreak
  fs4 e4 d4 cs4 | \noPageBreak
  b2. \bar "|"
  \pageBreak
  b4 | \noPageBreak
  b4 fs'4 fs4 e4 | \noPageBreak
  d4 cs4 b4 a4 | \noPageBreak
  b4 cs4 d4 e4 | \noPageBreak
  fs2. b,4 | \noPageBreak
  \break
  b4 fs'4 fs4 e4 | \noPageBreak
  d4 cs4 b4 a4 | \noPageBreak
  b4 cs4 d4 e4 | \noPageBreak
  fs2. fs4 | \noPageBreak
  \break
  g4 e4 fs4 g4 | \noPageBreak
  a4 b4 fs4 e4 | \noPageBreak
  d4 b4 cs4 d4 | \noPageBreak
  e2 d4 e4 | \noPageBreak
  \break
  fs2 g4 fs4 | \noPageBreak
  fs4 e4 d4 cs4 | \noPageBreak
  b2 d8 cs8 b4 | \noPageBreak
  e2 d4 e4 | \noPageBreak
  \break
  fs4 g4 a4 b4 | \noPageBreak
  fs4 e4 d4 cs4 | \noPageBreak
  b2. \bar "|"
  \pageBreak
  b4 | \noPageBreak
  b4 fs'4 fs4 e4 | \noPageBreak
  d4 cs4 b4 a4 | \noPageBreak
  b4 cs4 d4 e4 | \noPageBreak
  fs2. b,4 | \noPageBreak
  \break
  b4 fs'4 fs4 e4 | \noPageBreak
  d4 cs4 b4 a4 | \noPageBreak
  b4 cs4 d4 e4 | \noPageBreak
  fs2. fs4 | \noPageBreak
  \break
  g4 e4 fs4 g4 | \noPageBreak
  a4 b4 fs4 e4 | \noPageBreak
  d4 b4 cs4 d4 | \noPageBreak
  e2 d4 e4 | \noPageBreak
  \break
  fs2 g4 fs4 | \noPageBreak
  fs4 e4 d4 cs4 | \noPageBreak
  b2 d8 cs8 b4 | \noPageBreak
  e2 d4 e4 | \noPageBreak
  \break
  fs4 g4 a4 b4 | \noPageBreak
  fs4 e4 d4 cs4 | \noPageBreak
  b2. \bar "|"
  \pageBreak
  b4 | \noPageBreak
  b4 fs'4 fs4 e4 | \noPageBreak
  d4 cs4 b4 a4 | \noPageBreak
  b4 cs4 d4 e4 | \noPageBreak
  fs2. b,4 | \noPageBreak
  \break
  b4 fs'4 fs4 e4 | \noPageBreak
  d4 cs4 b4 a4 | \noPageBreak
  b4 cs4 d4 e4 | \noPageBreak
  fs2. fs4 | \noPageBreak
  \break
  g4 e4 fs4 g4 | \noPageBreak
  a4 b4 fs4 e4 | \noPageBreak
  d4 b4 cs4 d4 | \noPageBreak
  e2 d4 e4 | \noPageBreak
  \break
  fs2 g4 fs4 | \noPageBreak
  fs4 e4 d4 cs4 | \noPageBreak
  b2 d8 cs8 b4 | \noPageBreak
  e2 d4 e4 | \noPageBreak
  \break
  fs4 g4 a4 b4 | \noPageBreak
  fs4 e4 d4 cs4 | \noPageBreak
  b2.  \bar "|."
}

harmony = \chordmode {
  s4 \once \set chordChanges = ##f b2:m fs2 b1:m g2 e2:m fs2. b4:m b2:m fs2 b1:m g2 e2:m fs2. b4:7 e2:m a2 d2 fs2:7 b2:m e2 a1 d1 d2 fs2 b2:m e2:7 a2 a2:7 d2 g2 b2:m fs2 b2.:m s4 \once \set chordChanges = ##f b2:m fs2 b1:m g2 e2:m fs2. b4:m b2:m fs2 b1:m g2 e2:m fs2. b4:7 e2:m a2 d2 fs2:7 b2:m e2 a1 d1 d2 fs2 b2:m e2:7 a2 a2:7 d2 g2 b2:m fs2 b2.:m s4 \once \set chordChanges = ##f b2:m fs2 b1:m g2 e2:m fs2. b4:m b2:m fs2 b1:m g2 e2:m fs2. b4:7 e2:m a2 d2 fs2:7 b2:m e2 a1 d1 d2 fs2 b2:m e2:7 a2 a2:7 d2 g2 b2:m fs2 b2.:m s4 \once \set chordChanges = ##f b2:m fs2 b1:m g2 e2:m fs2. b4:m b2:m fs2 b1:m g2 e2:m fs2. b4:7 e2:m a2 d2 fs2:7 b2:m e2 a1 d1 d2 fs2 b2:m e2:7 a2 a2:7 d2 g2 b2:m fs2 b2.:m
}

words = \lyricmode {
  God rest ye mer -- ry, gen -- tle -- men, Let noth -- ing you dis -- may,
  Re -- mem -- ber Christ our Sav -- i -- our Was born on Christ -- mas Day,
  To save us all from Sa -- tan's pow'r When we were gone a -- stray;
  O _ ti -- dings of com -- _ fort and joy, com -- fort and joy,
  O _ ti -- _ dings of com -- _ fort and joy.
  From God our heav -- en -- ly Fa -- ther A bless -- ed an -- gel came;
  And un -- to cer -- tain shep -- herds _ Brought ti -- dings of the same:
  How that in Beth -- le -- hem was born The Son of God by name.
  O _ ti -- dings of com -- _ fort and joy, com -- fort and joy,
  O _ ti -- _ dings of com -- _ fort and joy.
  The shep -- herds at those ti -- dings _ Re -- joic -- ed much in mind,
  And left their flocks a -- feed -- ing _ In tem -- pest, storm and wind,
  And went to Beth -- le -- hem straight -- way The bless -- ed Babe to find.
  O _ ti -- dings of com -- _ fort and joy, com -- fort and joy,
  O _ ti -- _ dings of com -- _ fort and joy.
  Now to the Lord sing prais -- es _ All you with -- in this place,
  And with true love and broth -- er -- hood Each oth -- er now em -- brace;
  This ho -- ly tide of Christ -- _ mas All oth -- ers doth de -- face.
  O _ ti -- dings of com -- _ fort and joy, com -- fort and joy,
  O _ ti -- _ dings of com -- _ fort and joy.
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
% Melody: traditional English carol; checked against the Coughlin and Open Hymnal editions. Common 'God rest you merry' text.
% ------------------------------------------------------------------
