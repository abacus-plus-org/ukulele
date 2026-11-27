\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% The First Noel - Traditional English carol (West Country, 18th-19th c.); first printed by Davies Gilbert (1823) and William Sandys (1833); harmony by John Stainer (1871); American setting from The Methodist Sunday School Hymnal (1911), toddler style (low-G, linear GCEA).
% RIGHTS: public. Music and words: an anonymous traditional English carol, probably 18th-century, from the West Country. The words and tune were first printed in Davies Gilbert, Some Ancient Christmas Carols (London, 1823) and William Sandys, Christmas Carols, Ancient and Modern (London, 1833); John Stainer (1840-1901) published the familiar harmony in Christmas Carols New and Old (1871). The melody and words are therefore well over a century old and public domain, and the American hymnal setting used for the tune (The Methodist Sunday School Hymnal, 1911, hymn 66, on openhymnal.org) is also from before 1931. Kyle Coughlin's edition (copyright 2017) was used only to read the tune, the rhythm and plain chord names. Wording: stanzas 1-4 follow the 1911 hymnal as aligned on openhymnal.org (with 'keeping' for the 1911 'tending', as in Sandys 1833); stanzas 5 and 6 are the commonly sung 1823/1833 stanzas, which I fitted to the tune myself.
% Key of C, 3/4, chords C, Am, G, G7, F, Dm, Em, a one-beat pickup (two eighth notes). Six pages, one verse each, with the refrain on every page: 24 bars (four 6-bar lines) per verse. At the end of each page the last bar is two beats long and the next page's pickup completes it; the last page ends on a held C. Range C4 to C5, the low octave on low-G (lowest note C4, well above G3).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 84) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional English carol (West Country, 18th-19th c.); first printed by Davies Gilbert (1823) and William Sandys (1833); harmony by John Stainer (1871); American setting from The Methodist Sunday School Hymnal (1911).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "The First Noel" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Christmas; Hymn & Spiritual"
  language      = "English"
  era           = "Traditional"
  songkey       = "C"
  timesig       = "3/4"
  occasion      = "Christmas; Singalong"
  technique     = "Strumming; 7th & Minor Chords; Frequent Chord Changes; Waltz"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Christmas; Hymn & Spiritual; English; Traditional; Strumming; 7th & Minor Chords; Frequent Chord Changes; Waltz; C; 3/4; Singalong; Public Domain"
  difficulty    = "3.0"
  difficultyraw = "4.95"
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
  \key c \major
  \time 3/4
  \partial 4
}

melody = \relative c' {
  e8 d8 | c4. d8 e8 f8 | g2 a8 b8 | c4 b4 a4 | g2 a8 b8 | c4 b4 a4 | g4 a4 b4 |
  \break
  c4 g4 f4 | e2 e8 d8 | c4. d8 e8 f8 | g2 a8 b8 | c4 b4 a4 | g2 a8 b8 |
  \break
  c4 b4 a4 | g4 a4 b4 | c4 g4 f4 | e2 e8 d8 | c4. d8 e8 f8 | g2 c8 b8 |
  \break
  a2 a4 | g2. | c4 b4 a4 | g4 a4 b4 | c4 g4 f4 | e2 \bar "|"
  \pageBreak
  e8 d8 | c4. d8 e8 f8 | g2 a8 b8 | c4 b4 a4 | g2 a8 b8 | c4 b4 a4 | g4 a4 b4 |
  \break
  c4 g4 f4 | e2 e8 d8 | c4. d8 e8 f8 | g2 a8 b8 | c4 b4 a4 | g2 a8 b8 |
  \break
  c4 b4 a4 | g4 a4 b4 | c4 g4 f4 | e2 e8 d8 | c4. d8 e8 f8 | g2 c8 b8 |
  \break
  a2 a4 | g2. | c4 b4 a4 | g4 a4 b4 | c4 g4 f4 | e2 \bar "|"
  \pageBreak
  e8 d8 | c4. d8 e8 f8 | g2 a8 b8 | c4 b4 a4 | g2 a8 b8 | c4 b4 a4 | g4 a4 b4 |
  \break
  c4 g4 f4 | e2 e8 d8 | c4. d8 e8 f8 | g2 a8 b8 | c4 b4 a4 | g2 a8 b8 |
  \break
  c4 b4 a4 | g4 a4 b4 | c4 g4 f4 | e2 e8 d8 | c4. d8 e8 f8 | g2 c8 b8 |
  \break
  a2 a4 | g2. | c4 b4 a4 | g4 a4 b4 | c4 g4 f4 | e2 \bar "|"
  \pageBreak
  e8 d8 | c4. d8 e8 f8 | g2 a8 b8 | c4 b4 a4 | g2 a8 b8 | c4 b4 a4 | g4 a4 b4 |
  \break
  c4 g4 f4 | e2 e8 d8 | c4. d8 e8 f8 | g2 a8 b8 | c4 b4 a4 | g2 a8 b8 |
  \break
  c4 b4 a4 | g4 a4 b4 | c4 g4 f4 | e2 e8 d8 | c4. d8 e8 f8 | g2 c8 b8 |
  \break
  a2 a4 | g2. | c4 b4 a4 | g4 a4 b4 | c4 g4 f4 | e2 \bar "|"
  \pageBreak
  e8 d8 | c4. d8 e8 f8 | g2 a8 b8 | c4 b4 a4 | g2 a8 b8 | c4 b4 a4 | g4 a4 b4 |
  \break
  c4 g4 f4 | e2 e8 d8 | c4. d8 e8 f8 | g2 a8 b8 | c4 b4 a4 | g2 a8 b8 |
  \break
  c4 b4 a4 | g4 a4 b4 | c4 g4 f4 | e2 e8 d8 | c4. d8 e8 f8 | g2 c8 b8 |
  \break
  a2 a4 | g2. | c4 b4 a4 | g4 a4 b4 | c4 g4 f4 | e2 \bar "|"
  \pageBreak
  e8 d8 | c4. d8 e8 f8 | g2 a8 b8 | c4 b4 a4 | g2 a8 b8 | c4 b4 a4 | g4 a4 b4 |
  \break
  c4 g4 f4 | e2 e8 d8 | c4. d8 e8 f8 | g2 a8 b8 | c4 b4 a4 | g2 a8 b8 |
  \break
  c4 b4 a4 | g4 a4 b4 | c4 g4 f4 | e2 e8 d8 | c4. d8 e8 f8 | g2 c8 b8 |
  \break
  a2 a4 | g2. | c4 b4 a4 | g4 a4 b4 | c4 g4 f4 | e2.  \bar "|."
}

harmony = \chordmode {
  s4 | c2 a4:m | g2 g4:7 | c2 f4 | c2 f4 | c2 d4:m | c4 f4 g4:7 | c2 g4:7 | c2 g4:7 | c2 a4:m | g2 g4:7 | c2 f4 | c2 f4 | c2 d4:m | c4 f4 g4:7 | c2 g4:7 | c2 g4:7 | c2 a4:m | e2:m c4 | f2. | c2 g4 | a4:m c4 f4 | c2 g4:7 | c2 g4:7 | c2 s4 | c2 a4:m | g2 g4:7 | c2 f4 | c2 f4 | c2 d4:m | c4 f4 g4:7 | c2 g4:7 | c2 g4:7 | c2 a4:m | g2 g4:7 | c2 f4 | c2 f4 | c2 d4:m | c4 f4 g4:7 | c2 g4:7 | c2 g4:7 | c2 a4:m | e2:m c4 | f2. | c2 g4 | a4:m c4 f4 | c2 g4:7 | c2 g4:7 | c2 s4 | c2 a4:m | g2 g4:7 | c2 f4 | c2 f4 | c2 d4:m | c4 f4 g4:7 | c2 g4:7 | c2 g4:7 | c2 a4:m | g2 g4:7 | c2 f4 | c2 f4 | c2 d4:m | c4 f4 g4:7 | c2 g4:7 | c2 g4:7 | c2 a4:m | e2:m c4 | f2. | c2 g4 | a4:m c4 f4 | c2 g4:7 | c2 g4:7 | c2 s4 | c2 a4:m | g2 g4:7 | c2 f4 | c2 f4 | c2 d4:m | c4 f4 g4:7 | c2 g4:7 | c2 g4:7 | c2 a4:m | g2 g4:7 | c2 f4 | c2 f4 | c2 d4:m | c4 f4 g4:7 | c2 g4:7 | c2 g4:7 | c2 a4:m | e2:m c4 | f2. | c2 g4 | a4:m c4 f4 | c2 g4:7 | c2 g4:7 | c2 s4 | c2 a4:m | g2 g4:7 | c2 f4 | c2 f4 | c2 d4:m | c4 f4 g4:7 | c2 g4:7 | c2 g4:7 | c2 a4:m | g2 g4:7 | c2 f4 | c2 f4 | c2 d4:m | c4 f4 g4:7 | c2 g4:7 | c2 g4:7 | c2 a4:m | e2:m c4 | f2. | c2 g4 | a4:m c4 f4 | c2 g4:7 | c2 g4:7 | c2 s4 | c2 a4:m | g2 g4:7 | c2 f4 | c2 f4 | c2 d4:m | c4 f4 g4:7 | c2 g4:7 | c2 g4:7 | c2 a4:m | g2 g4:7 | c2 f4 | c2 f4 | c2 d4:m | c4 f4 g4:7 | c2 g4:7 | c2 g4:7 | c2 a4:m | e2:m c4 | f2. | c2 g4 | a4:m c4 f4 | c2 g4:7 | c2 g4:7 | c2.
}

words = \lyricmode {
  The _ first _ No -- _ el the _ an -- gel did say Was to cer -- tain poor shep -- herds
  in fields as they lay; In _ fields _ where _ they lay _ keep -- ing their sheep,
  On a cold win -- ter's night _ that was _ so deep.
  No -- _ el, _ No -- _ el, No -- _ el, No -- el, Born is the King _ of Is -- _ ra -- el.
  They _ look -- _ ed _ up and _ saw _ a star Shin -- ing in _ the east, _
  be -- yond _ them far; And _ to _ the _ earth it _ gave _ great light,
  And _ so it con -- tin -- ued both day _ and night.
  No -- _ el, _ No -- _ el, No -- _ el, No -- el, Born is the King _ of Is -- _ ra -- el.
  And _ by _ the _ light of _ that _ same star Three _ Wise _ Men came _
  from coun -- try _ far; To _ seek _ for a King was _ their _ in -- tent,
  And to fol -- low the star _ wher -- ev -- er it went.
  No -- _ el, _ No -- _ el, No -- _ el, No -- el, Born is the King _ of Is -- _ ra -- el.
  This _ star _ drew _ nigh to _ the _ north -- west, Ov -- er Beth -- _ le -- hem _
  it took _ its rest; And _ there _ it _ did both _ stop _ and stay,
  Right _ ov -- er the place _ where Je -- _ sus lay.
  No -- _ el, _ No -- _ el, No -- _ el, No -- el, Born is the King _ of Is -- _ ra -- el.
  Then _ en -- tered in those wise men _ three _ _ _ Full _ rev -- _ er -- ent -- ly _ up -- on their knee,
  And _ of -- fered _ _ there in His pres -- ence _ _
  Their _ gold _ and myrrh _ and frank -- _ in -- cense.
  No -- _ el, _ No -- _ el, No -- _ el, No -- el, Born is the King _ of Is -- _ ra -- el.
  Then _ let _ us _ all with _ one _ ac -- cord Sing _ prais -- _ es to our _ heav -- en -- ly Lord,
  That _ hath made _ _ heav'n _ and earth _ of nought,
  And _ with His _ blood _ _ man -- kind hath bought.
  No -- _ el, _ No -- _ el, No -- _ el, No -- el, Born is the King _ of Is -- _ ra -- el.
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
    #(layout-set-staff-size 17)
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
% Melody: traditional English carol; checked against the Open Hymnal ABC (in D, set here in C) and the Coughlin C edition. Sandys 'keeping their sheep' wording.
% ------------------------------------------------------------------
