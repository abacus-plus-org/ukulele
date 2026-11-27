\version "2.24.4"
\language "english"
#(set-global-staff-size 25.9)
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"
\storePredefinedDiagram #default-fret-table \chordmode { d:7 } #ukulele-tuning "2-1;o;2-2;o;"

% ------------------------------------------------------------------
% Deck the Halls - Traditional Welsh air 'Nos Galan' (first printed 1794); English words Thomas Oliphant, 1862, American text 1877. US Letter sheet (one page, tabs only, first verse only, chord names, chord diagrams).
% RIGHTS: public. Tune: Welsh air 'Nos Galan', first printed 1794 (Edward Jones; older oral tradition). Words: Thomas Oliphant, 1862 (he died 1873); the American wording sung today ('Don we now our gay apparel', 'See the blazing Yule before us', 'Sing we joyous all together') first appears in the Pennsylvania School Journal, December 1877, and the 1881 Franklin Square Song Collection, and 'Yule-tide' and 'Deck the halls' (plural) appear in Father Finn's Carol Book, Boston, 1917. Every verse printed is 1877-1917 text, so all three verses are public domain. The Oliphant verses with the drinking lines (meadcup, flowing bowl, quaffing) are also public domain but are not the American wording and are not used. The modern lead sheets read (Kyle Coughlin 2024, Piano Song Download, Irish Fest) are arrangements; only the traditional melody and the common chord changes were taken, not their layout.
% First verse only; four complete lyric lines, including each Fa-la-la.
% First verse only (68 syllables for 68 notes). Line breaks follow the lyric phrases.
% Tempo (4 = 107) is MIDI only, not printed. No MIDI score in this chart-card derivative.
% ------------------------------------------------------------------

\header {
  title = \markup \fontsize #1 "Deck the Halls"
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
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 15\mm
  right-margin = 15\mm
  system-system-spacing.basic-distance = #16.0
  system-system-spacing.padding = #1.5
  markup-system-spacing.padding = #3.0
  score-markup-spacing.padding = #2.0
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  ragged-last = ##f
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
  e4. d8 cs4 b4 | a4 b4 cs4 a4 | fs'8 fs8 fs8 fs8 e4. d8 | cs4 b4 a2 | \bar "|."
}

harmony = \chordmode {
  a2. e4:7 | fs4:m e4:7 a2 | e2:7 a2 | a4 e4:7 a2 | a2. e4:7 | fs4:m e4:7 a2 | e2:7 a2 | a4 e4:7 a2 | e1:7 | a2. e4:7 | a2 fs2:m | e1:7 | a2. e4:7 | fs4:m e4:7 a2 | d2 a2 | a4 e4:7 a2
}

fullMelody = \relative c' {
  e4. d8 cs4 b4 | a4 b4 cs4 a4 | b8 cs8 d8 b8 cs4. b8 | a4 gs4 a2 |
  \break
  e'4. d8 cs4 b4 | a4 b4 cs4 a4 | b8 cs8 d8 b8 cs4. b8 | a4 gs4 a2 |
  \break
  b4. cs8 d4 b4 | cs4. d8 e4 b4 | cs8 ds8 e4 fs8 gs8 a4 | gs4 fs4 e2 |
  \break
  e4. d8 cs4 b4 | a4 b4 cs4 a4 | fs'8 fs8 fs8 fs8 e4. d8 | cs4 b4 a2 | \bar "|."
}

fullHarmony = \chordmode {
  a2. e4:7 | fs4:m e4:7 a2 | e2:7 a2 | a4 e4:7 a2 | a2. e4:7 | fs4:m e4:7 a2 | e2:7 a2 | a4 e4:7 a2 | e1:7 | a2. e4:7 | a2 fs2:m | e1:7 | a2. e4:7 | fs4:m e4:7 a2 | d2 a2 | a4 e4:7 a2
}

words = \lyricmode {
  Deck the halls with boughs of hol -- ly, Fa la la la la la la la la
  'Tis the sea -- son to be jol -- ly, Fa la la la la la la la la
  Don we now our gay ap -- par -- el, Fa la la la la la la la la
  Troll the an -- cient Yule -- tide car -- ol, Fa la la la la la la la la
}

\score {
  <<
    \new ChordNames \with {
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing.padding = #0.8
      \override ChordName.font-size = #1.5
      \override ChordName.font-series = #'bold
      \override ChordName.extra-spacing-width = #'(-0.5 . 0.75)
    } { \set chordChanges = ##t \harmony }
    \new FretBoards \with {
      stringTunings = #ukulele-tuning
      \override FretBoard.size = #1.10
      \override FretBoard.fret-diagram-details.finger-code = #'none
    } { \set chordChanges = ##t \harmony }
    \new TabStaff \with { stringTunings = \lowG } {
      \new TabVoice = "melody" { \tabFullNotation \global
        \melody
      }
    }
    \new Lyrics \lyricsto "melody" { \words }
  >>
  \layout {
    #(layout-set-staff-size 25.9)
    indent = #0
    \context {
      \Lyrics
      \override LyricText.font-name = "TeX Gyre Heros"
      \override LyricText.font-size = #0.5
      \override LyricSpace.minimum-distance = #0.8
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
      \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #1
    }
    \context {
      \FretBoards
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
    }
    \context { \Score \remove Metronome_mark_engraver 
      % Only the explicit \break commands (phrase ends) start a new line.
      \override NonMusicalPaperColumn.line-break-permission = ##f }
  }
}


% ------------------------------------------------------------------
% Melody: traditional Welsh tune, English 'Deck the hall' words; checked against the Coughlin and Open Hymnal editions.
% ------------------------------------------------------------------
