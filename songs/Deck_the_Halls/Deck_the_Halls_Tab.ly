\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Deck the Halls - Traditional Welsh air 'Nos Galan' (first printed 1794); English words Thomas Oliphant, 1862, American text 1877, toddler style (low-G, linear GCEA).
% RIGHTS: public. Tune: Welsh air 'Nos Galan', first printed 1794 (Edward Jones; older oral tradition). Words: Thomas Oliphant, 1862 (he died 1873); the American wording sung today ('Don we now our gay apparel', 'See the blazing Yule before us', 'Sing we joyous all together') first appears in the Pennsylvania School Journal, December 1877, and the 1881 Franklin Square Song Collection, and 'Yule-tide' and 'Deck the halls' (plural) appear in Father Finn's Carol Book, Boston, 1917. Every verse printed is 1877-1917 text, so all three verses are public domain. The Oliphant verses with the drinking lines (meadcup, flowing bowl, quaffing) are also public domain but are not the American wording and are not used. The modern lead sheets read (Kyle Coughlin 2024, Piano Song Download, Irish Fest) are arrangements; only the traditional melody and the common chord changes were taken, not their layout.
% Key of A, 4/4, chords A, E7, F#m and D (all open shapes). 16 bars per verse (4 lines of 4 bars: eight syllables, then Fa la la), 3 verses, one verse per page. The low-G range is G#3 to A4; no pickup. American words (Pennsylvania School Journal 1877 and Father Finn 1917).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 107) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional Welsh air 'Nos Galan' (first printed 1794); English words Thomas Oliphant, 1862, American text 1877.
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Deck the Halls" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Christmas"
  language      = "English"
  era           = "Traditional"
  songkey       = "A"
  timesig       = "4/4"
  occasion      = "Christmas; Singalong"
  technique     = "Strumming; More Open Chords; Frequent Chord Changes; Moderate Tempo"
  versions      = "Letter Sheet; Audio; Letter Tab Sheet; Letter Tab + Chord Sheet"
  rights        = "Public Domain"
  tags          = "Christmas; English; Traditional; Strumming; More Open Chords; Frequent Chord Changes; Moderate Tempo; A; 4/4; Singalong; Public Domain"
  difficulty    = "2.6"
  difficultyraw = "4.38"
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
  \time 4/4
}

melody = \relative c' {
  e4. d8 cs4 b4 | a4 b4 cs4 a4 | b8 cs8 d8 b8 cs4. b8 | a4 gs4 a2 |
  \break
  e'4. d8 cs4 b4 | a4 b4 cs4 a4 | b8 cs8 d8 b8 cs4. b8 | a4 gs4 a2 |
  \break
  b4. cs8 d4 b4 | cs4. d8 e4 b4 | cs8 ds8 e4 fs8 gs8 a4 | gs4 fs4 e2 |
  \break
  e4. d8 cs4 b4 | a4 b4 cs4 a4 | fs'8 fs8 fs8 fs8 e4. d8 | cs4 b4 a2 |
  \pageBreak
  e'4. d8 cs4 b4 | a4 b4 cs4 a4 | b8 cs8 d8 b8 cs4. b8 | a4 gs4 a2 |
  \break
  e'4. d8 cs4 b4 | a4 b4 cs4 a4 | b8 cs8 d8 b8 cs4. b8 | a4 gs4 a2 |
  \break
  b4. cs8 d4 b4 | cs4. d8 e4 b4 | cs8 ds8 e4 fs8 gs8 a4 | gs4 fs4 e2 |
  \break
  e4. d8 cs4 b4 | a4 b4 cs4 a4 | fs'8 fs8 fs8 fs8 e4. d8 | cs4 b4 a2 |
  \pageBreak
  e'4. d8 cs4 b4 | a4 b4 cs4 a4 | b8 cs8 d8 b8 cs4. b8 | a4 gs4 a2 |
  \break
  e'4. d8 cs4 b4 | a4 b4 cs4 a4 | b8 cs8 d8 b8 cs4. b8 | a4 gs4 a2 |
  \break
  b4. cs8 d4 b4 | cs4. d8 e4 b4 | cs8 ds8 e4 fs8 gs8 a4 | gs4 fs4 e2 |
  \break
  e4. d8 cs4 b4 | a4 b4 cs4 a4 | fs'8 fs8 fs8 fs8 e4. d8 | cs4 b4 a2  \bar "|."
}

harmony = \chordmode {
  a2. e4:7 | fs4:m e4:7 a2 | e2:7 a2 | a4 e4:7 a2 | a2. e4:7 | fs4:m e4:7 a2 | e2:7 a2 | a4 e4:7 a2 | e1:7 | a2. e4:7 | a2 fs2:m | e1:7 | a2. e4:7 | fs4:m e4:7 a2 | d2 a2 | a4 e4:7 a2 | a2. e4:7 | fs4:m e4:7 a2 | e2:7 a2 | a4 e4:7 a2 | a2. e4:7 | fs4:m e4:7 a2 | e2:7 a2 | a4 e4:7 a2 | e1:7 | a2. e4:7 | a2 fs2:m | e1:7 | a2. e4:7 | fs4:m e4:7 a2 | d2 a2 | a4 e4:7 a2 | a2. e4:7 | fs4:m e4:7 a2 | e2:7 a2 | a4 e4:7 a2 | a2. e4:7 | fs4:m e4:7 a2 | e2:7 a2 | a4 e4:7 a2 | e1:7 | a2. e4:7 | a2 fs2:m | e1:7 | a2. e4:7 | fs4:m e4:7 a2 | d2 a2 | a4 e4:7 a2
}

words = \lyricmode {
  Deck the halls with boughs of hol -- ly, Fa la la la la la la la la
  'Tis the sea -- son to be jol -- ly, Fa la la la la la la la la
  Don we now our gay ap -- par -- el, Fa la la la la la la la la
  Troll the an -- cient Yule -- tide car -- ol, Fa la la la la la la la la
  See the blaz -- ing Yule be -- fore us, Fa la la la la la la la la
  Strike the harp and join the cho -- rus, Fa la la la la la la la la
  Fol -- low me in mer -- ry meas -- ure, Fa la la la la la la la la
  While I tell of Yule -- tide treas -- ure, Fa la la la la la la la la
  Fast a -- way the old year pass -- es, Fa la la la la la la la la
  Hail the new, ye lads and lass -- es, Fa la la la la la la la la
  Sing we joy -- ous, all to -- geth -- er, Fa la la la la la la la la
  Heed -- less of the wind and weath -- er, Fa la la la la la la la la
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
% Melody: traditional Welsh tune, English 'Deck the hall' words; checked against the Coughlin and Open Hymnal editions.
% ------------------------------------------------------------------
