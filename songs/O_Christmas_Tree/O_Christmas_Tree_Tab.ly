\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"
\storePredefinedDiagram #default-fret-table \chordmode { d:7 } #ukulele-tuning "2-1;o;2-2;o;"  % D7 = 2-0-2-0 (house shape)

% ------------------------------------------------------------------
% O Christmas Tree - Words: anonymous English version (1913), after Ernst Anschütz (1824); music: traditional German tune (Zarnack, 1819), toddler style (low-G, linear GCEA).
% RIGHTS: public. Music: the German melody known as O Tannenbaum (credited to August Zarnack, 1819, and in older sources to the 1799 'Zimmermannsgeselle' folk song; Zarnack died in 1827); it was set to Ernst Anschutz's text in 1824 (Anschutz died in 1870), so the music is in the public domain everywhere. Words: the five-stanza anonymous English text printed in The Bay View Magazine (1913), p. 175, as cited by Wikipedia; I could not open that page scan (Google Books quota), but the identical wording is on Liederseiten (which dates it 1913) and Wikisource. There is no known translator or author for the English stanzas, and a 1913 US printing is before 1931, so the words are public domain in the US; stanza authorship beyond 'anonymous, 1913' could not be established. This is the earliest English text I could document, not the only English version in circulation. Kyle Coughlin's 2013 arrangement is copyrighted: only the tune, the rhythm and plain chord names were read from it, and every pitch was checked against the 1901 Bethel College songbook and the Commons score and MIDI.
% Key of F, 3/4, chords F, C, C7, Gm and D7, quarter-note pickup. Five pages, one verse each: 16 bars (four 4-bar lines) with the first phrase sung twice, as the verse is printed. At the end of each page the last bar is two beats long and the next page's pickup note completes it. The last page ends on a held F. Range C4 to D5, the low octave.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 104) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Words: anonymous English version (1913), after Ernst Anschütz (1824); music: traditional German tune (Zarnack, 1819).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "O Christmas Tree" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Christmas"
  language      = "English"
  era           = "1800s"
  songkey       = "F"
  timesig       = "3/4"
  occasion      = "Christmas; Singalong"
  technique     = "Strumming; More Open Chords; Frequent Chord Changes; Waltz; Moderate Tempo"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Christmas; English; 1800s; Strumming; More Open Chords; Frequent Chord Changes; Waltz; Moderate Tempo; F; 3/4; Singalong; Public Domain"
  difficulty    = "2.7"
  difficultyraw = "4.53"
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
  \time 3/4
  \partial 4
}

melody = \relative c' {
  c4 | f8. f16 f4 g4 | a8. a16 a4. a8 | g8 a8 bf4 e,4 | g4 f4 c4 |
  \break
  f8. f16 f4 g4 | a8. a16 a4. a8 | g8 a8 bf4 e,4 | g4 f4 r8 c'8 |
  \break
  c8 a8 d4. c8 | c8 bf8 bf4. bf8 | bf8 g8 c4. bf8 | bf8 a8 a4 c,4 |
  \break
  f8. f16 f4 g4 | a8. a16 a4. a8 | g8 a8 bf4 e,4 | g4 f4 \bar "|"
  \pageBreak
  c4 | f8. f16 f4 g4 | a8. a16 a4. a8 | g8 a8 bf4 e,4 | g4 f4 c4 |
  \break
  f8. f16 f4 g4 | a8. a16 a4. a8 | g8 a8 bf4 e,4 | g4 f4 r8 c'8 |
  \break
  c8 a8 d4. c8 | c8 bf8 bf4. bf8 | bf8 g8 c4. bf8 | bf8 a8 a4 c,4 |
  \break
  f8. f16 f4 g4 | a8. a16 a4. a8 | g8 a8 bf4 e,4 | g4 f4 \bar "|"
  \pageBreak
  c4 | f8. f16 f4 g4 | a8. a16 a4. a8 | g8 a8 bf4 e,4 | g4 f4 c4 |
  \break
  f8. f16 f4 g4 | a8. a16 a4. a8 | g8 a8 bf4 e,4 | g4 f4 r8 c'8 |
  \break
  c8 a8 d4. c8 | c8 bf8 bf4. bf8 | bf8 g8 c4. bf8 | bf8 a8 a4 c,4 |
  \break
  f8. f16 f4 g4 | a8. a16 a4. a8 | g8 a8 bf4 e,4 | g4 f4 \bar "|"
  \pageBreak
  c4 | f8. f16 f4 g4 | a8. a16 a4. a8 | g8 a8 bf4 e,4 | g4 f4 c4 |
  \break
  f8. f16 f4 g4 | a8. a16 a4. a8 | g8 a8 bf4 e,4 | g4 f4 r8 c'8 |
  \break
  c8 a8 d4. c8 | c8 bf8 bf4. bf8 | bf8 g8 c4. bf8 | bf8 a8 a4 c,4 |
  \break
  f8. f16 f4 g4 | a8. a16 a4. a8 | g8 a8 bf4 e,4 | g4 f4 \bar "|"
  \pageBreak
  c4 | f8. f16 f4 g4 | a8. a16 a4. a8 | g8 a8 bf4 e,4 | g4 f4 c4 |
  \break
  f8. f16 f4 g4 | a8. a16 a4. a8 | g8 a8 bf4 e,4 | g4 f4 r8 c'8 |
  \break
  c8 a8 d4. c8 | c8 bf8 bf4. bf8 | bf8 g8 c4. bf8 | bf8 a8 a4 c,4 |
  \break
  f8. f16 f4 g4 | a8. a16 a4. a8 | g8 a8 bf4 e,4 | g4 f2  \bar "|."
}

harmony = \chordmode {
  s4 | f2 c4 | f2. | g2:m c4:7 | c4:7 f2 | f2 c4 | f2. | g2:m c4:7 | c4:7 f2 | f2. | c2.:7 | c2.:7 | f2. | f2 c4 | d2.:7 | g2:m c4:7 | c4:7 f4 s4 | f2 c4 | f2. | g2:m c4:7 | c4:7 f2 | f2 c4 | f2. | g2:m c4:7 | c4:7 f2 | f2. | c2.:7 | c2.:7 | f2. | f2 c4 | d2.:7 | g2:m c4:7 | c4:7 f4 s4 | f2 c4 | f2. | g2:m c4:7 | c4:7 f2 | f2 c4 | f2. | g2:m c4:7 | c4:7 f2 | f2. | c2.:7 | c2.:7 | f2. | f2 c4 | d2.:7 | g2:m c4:7 | c4:7 f4 s4 | f2 c4 | f2. | g2:m c4:7 | c4:7 f2 | f2 c4 | f2. | g2:m c4:7 | c4:7 f2 | f2. | c2.:7 | c2.:7 | f2. | f2 c4 | d2.:7 | g2:m c4:7 | c4:7 f4 s4 | f2 c4 | f2. | g2:m c4:7 | c4:7 f2 | f2 c4 | f2. | g2:m c4:7 | c4:7 f2 | f2. | c2.:7 | c2.:7 | f2. | f2 c4 | d2.:7 | g2:m c4:7 | c4:7 f2 |
}

words = \lyricmode {
  O Christ -- mas tree, O Christ -- mas tree, How are thy leaves so ver -- dant!
  O Christ -- mas tree, O Christ -- mas tree, How are thy leaves so ver -- dant!
  Not on -- ly in the sum -- mer -- time, But ev'n in win -- ter is thy prime.
  O Christ -- mas tree, O Christ -- mas tree, How are thy leaves so ver -- dant!
  O Christ -- mas tree, O Christ -- mas tree, Much pleas -- ure dost thou bring me!
  O Christ -- mas tree, O Christ -- mas tree, Much pleas -- ure dost thou bring me!
  For ev -- 'ry year the Christ -- mas tree, Brings to us all both joy and glee.
  O Christ -- mas tree, O Christ -- mas tree, Much pleas -- ure dost thou bring me!
  O Christ -- mas tree, O Christ -- mas tree, How love -- ly are thy branch -- es!
  O Christ -- mas tree, O Christ -- mas tree, How love -- ly are thy branch -- es!
  Not on -- ly green when sum -- mer's here, But in the cold -- est time of year.
  O Christ -- mas tree, O Christ -- mas tree, How love -- ly are thy branch -- es!
  O Christ -- mas tree, O Christ -- mas tree, How stur -- dy God hath made thee!
  O Christ -- mas tree, O Christ -- mas tree, How stur -- dy God hath made thee!
  Thou bidd'st us all place faith -- ful -- ly Our trust in God, un -- chang -- ing -- ly!
  O Christ -- mas tree, O Christ -- mas tree, How stur -- dy God hath made thee!
  O Christ -- mas tree, O Christ -- mas tree, Thy can -- dles shine out bright -- ly!
  O Christ -- mas tree, O Christ -- mas tree, Thy can -- dles shine out bright -- ly!
  Each bough doth hold its ti -- ny light, That makes each toy to spar -- kle bright.
  O Christ -- mas tree, O Christ -- mas tree, Thy can -- dles shine out bright -- ly!
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
% Melody: traditional German 'O Tannenbaum'; checked against the Coughlin and Open Hymnal editions.
% ------------------------------------------------------------------
