\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Good King Wenceslas - Words: John Mason Neale (1853); tune: Tempus adest floridum, from Piae Cantiones (Finland, 1582), as printed in Carols Old and Carols New (1916), toddler style (low-G, linear GCEA).
% RIGHTS: public. Music: the spring carol Tempus adest floridum from Piae Cantiones (Theodoricus Petri, Greifswald, 1582), a medieval tune, with the familiar American setting printed in Carols Old and Carols New (1916, carol 415, on openhymnal.org). Words: John Mason Neale (1818-1866), written in 1853 and first published that year in Carols for Christmas-tide (Novello, London, with Thomas Helmore); Neale died in 1866 so the words are public domain everywhere, and the American hymnals changed a few words long before 1931. The sheet uses the wording of the 1916 American setting, which differs from Neale's 1853 text in a few places ('see him dine' for 'shall see him dine', 'wind's wild lament' for 'rude wind's wild lament', 'my good page' for 'good my page', 'though' for 'tho''). Kyle Coughlin's edition (copyright 2013) was used only to read the tune, the rhythm and plain chord names.
% Key of D, 4/4, chords D, G, A, A7 and Bm, no pickup. Five pages, one verse each: 17 bars per verse (lines of 4, 4, 4 and 5 bars). Range A3 to A4, the low octave on low-G (lowest note A3, above G3). The key is a nudge down from Bing Crosby's Eb (low confidence, see the notes).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 90) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Words: John Mason Neale (1853); tune: Tempus adest floridum, from Piae Cantiones (Finland, 1582), as printed in Carols Old and Carols New (1916).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Good King Wenceslas" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Christmas; Hymn & Spiritual"
  language      = "English"
  era           = "1800s"
  songkey       = "D"
  timesig       = "4/4"
  occasion      = "Christmas; Singalong"
  technique     = "Strumming; More Open Chords; Frequent Chord Changes; Barre Chords"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Christmas; Hymn & Spiritual; English; 1800s; Strumming; More Open Chords; Frequent Chord Changes; Barre Chords; D; 4/4; Singalong; Public Domain"
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
  d4 d4 d4 e4 | d4 d4 a2 | b4 a4 b4 cs4 | d2 d2 |
  \break
  d4 d4 d4 e4 | d4 d4 a2 | b4 a4 b4 cs4 | d2 d2 |
  \break
  a'4 g4 fs4 e4 | fs4 e4 d2 | b4 a4 b4 cs4 | d2 d2 |
  \break
  a4 a4 b4 cs4 | d4 d4 e2 | a4 g4 fs4 e4 | d2 g2 | d1 |
  \pageBreak
  d4 d4 d4 e4 | d4 d4 a2 | b4 a4 b4 cs4 | d2 d2 |
  \break
  d4 d4 d4 e4 | d4 d4 a2 | b4 a4 b4 cs4 | d2 d2 |
  \break
  a'4 g4 fs4 e4 | fs4 e4 d2 | b4 a4 b4 cs4 | d2 d2 |
  \break
  a4 a4 b4 cs4 | d4 d4 e2 | a4 g4 fs4 e4 | d2 g2 | d1 |
  \pageBreak
  d4 d4 d4 e4 | d4 d4 a2 | b4 a4 b4 cs4 | d2 d2 |
  \break
  d4 d4 d4 e4 | d4 d4 a2 | b4 a4 b4 cs4 | d2 d2 |
  \break
  a'4 g4 fs4 e4 | fs4 e4 d2 | b4 a4 b4 cs4 | d2 d2 |
  \break
  a4 a4 b4 cs4 | d4 d4 e2 | a4 g4 fs4 e4 | d2 g2 | d1 |
  \pageBreak
  d4 d4 d4 e4 | d4 d4 a2 | b4 a4 b4 cs4 | d2 d2 |
  \break
  d4 d4 d4 e4 | d4 d4 a2 | b4 a4 b4 cs4 | d2 d2 |
  \break
  a'4 g4 fs4 e4 | fs4 e4 d2 | b4 a4 b4 cs4 | d2 d2 |
  \break
  a4 a4 b4 cs4 | d4 d4 e2 | a4 g4 fs4 e4 | d2 g2 | d1 |
  \pageBreak
  d4 d4 d4 e4 | d4 d4 a2 | b4 a4 b4 cs4 | d2 d2 |
  \break
  d4 d4 d4 e4 | d4 d4 a2 | b4 a4 b4 cs4 | d2 d2 |
  \break
  a'4 g4 fs4 e4 | fs4 e4 d2 | b4 a4 b4 cs4 | d2 d2 |
  \break
  a4 a4 b4 cs4 | d4 d4 e2 | a4 g4 fs4 e4 | d2 g2 | d1  \bar "|."
}

harmony = \chordmode {
  d2 b4:m a4 | d4 g4 a2 | g4 d4 g4 a4:7 | d1 | d2 b4:m a4 | d4 g4 a2 | g4 d4 g4 a4:7 | d1 | d4 g4 d4 a4 | d4 a4 b2:m | g4 d4 g4 a4:7 | d1 | a2 g4 a4:7 | b2:m a2 | d4 g4 d4 a4 | b2:m g2 | d1 | d2 b4:m a4 | d4 g4 a2 | g4 d4 g4 a4:7 | d1 | d2 b4:m a4 | d4 g4 a2 | g4 d4 g4 a4:7 | d1 | d4 g4 d4 a4 | d4 a4 b2:m | g4 d4 g4 a4:7 | d1 | a2 g4 a4:7 | b2:m a2 | d4 g4 d4 a4 | b2:m g2 | d1 | d2 b4:m a4 | d4 g4 a2 | g4 d4 g4 a4:7 | d1 | d2 b4:m a4 | d4 g4 a2 | g4 d4 g4 a4:7 | d1 | d4 g4 d4 a4 | d4 a4 b2:m | g4 d4 g4 a4:7 | d1 | a2 g4 a4:7 | b2:m a2 | d4 g4 d4 a4 | b2:m g2 | d1 | d2 b4:m a4 | d4 g4 a2 | g4 d4 g4 a4:7 | d1 | d2 b4:m a4 | d4 g4 a2 | g4 d4 g4 a4:7 | d1 | d4 g4 d4 a4 | d4 a4 b2:m | g4 d4 g4 a4:7 | d1 | a2 g4 a4:7 | b2:m a2 | d4 g4 d4 a4 | b2:m g2 | d1 | d2 b4:m a4 | d4 g4 a2 | g4 d4 g4 a4:7 | d1 | d2 b4:m a4 | d4 g4 a2 | g4 d4 g4 a4:7 | d1 | d4 g4 d4 a4 | d4 a4 b2:m | g4 d4 g4 a4:7 | d1 | a2 g4 a4:7 | b2:m a2 | d4 g4 d4 a4 | b2:m g2 | d1 |
}

words = \lyricmode {
  Good King Wen -- ce -- slas looked out on the Feast of Steph -- en,
  When the snow lay round a -- bout, deep and crisp and e -- ven.
  Bright -- ly shone the moon that night, though the frost was cru -- el,
  When a poor man came in sight, gath'r -- ing win -- ter fu -- _ el.
  Hi -- ther, page, and stand by me, if thou know'st it, tell -- ing,
  Yon -- der pea -- sant, who is he? Where and what his dwell -- ing?
  Sire, he lives a good league hence, un -- der -- neath the moun -- tain,
  Right a -- gainst the for -- est fence, by Saint Ag -- nes' foun -- _ tain.
  Bring me flesh and bring me wine, bring me pine logs hi -- ther,
  Thou and I will see him dine, when we bear them thi -- ther.
  Page and mon -- arch, forth they went, forth they went to -- ge -- ther,
  Through the cold wind's wild la -- ment and the bit -- ter wea -- _ ther.
  Sire, the night is dar -- ker now, and the wind blows strong -- er,
  Fails my heart, I know not how; I can go no long -- er.
  Mark my foot -- steps, my good page, tread thou in them bold -- ly,
  Thou shalt find the win -- ter's rage freeze thy blood less cold -- _ ly.
  In his mas -- ter's steps he trod, where the snow lay dint -- ed;
  Heat was in the ve -- ry sod which the saint had print -- ed.
  There -- fore, Christ -- ian men, be sure, wealth or rank pos -- ses -- sing,
  Ye who now will bless the poor shall your -- selves find bles -- _ sing.
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
% Melody: 'Tempus adest floridum'; words by Neale. Checked against the Coughlin and Open Hymnal editions.
% ------------------------------------------------------------------
