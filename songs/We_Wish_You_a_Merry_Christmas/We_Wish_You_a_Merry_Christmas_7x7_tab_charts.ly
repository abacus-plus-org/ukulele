\version "2.24.4"
\language "english"
#(set-global-staff-size 21.2)
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"
\storePredefinedDiagram #default-fret-table \chordmode { d:7 } #ukulele-tuning "2-1;o;2-2;o;"

% ------------------------------------------------------------------
% We Wish You a Merry Christmas - Traditional English (West Country carol, Roud 230). US Letter sheet (one page, tabs only, first verse only, chord names, chord diagrams).
% RIGHTS: public, with one caveat. The carol is traditional (West Country, Roud 230; the greeting itself is recorded from the 1700s). The tune used here, however, is first found in print in Arthur Warrell's 1935 Oxford University Press arrangement (Warrell died 1939), and IMSLP notes the arrangement is probably still protected in the United States (95 years from publication, to the end of 2030). The melody and the four verses (Village Carols, Roud 230 wording) are entered as the traditional tune and text; Warrell's harmonization and his 'I wish you' lyric wording are NOT used (chords are original, chosen from the common F-major changes).
% First verse only; the "Oh" pickup into verse two is omitted, with a final quarter rest instead.
% First verse only (52 syllables for 52 notes). Line breaks follow the lyric phrases.
% Tempo (4 = 140) is MIDI only, not printed. No MIDI score in this chart-card derivative.
% ------------------------------------------------------------------

\header {
  title = \markup \fontsize #1 "We Wish You a Merry Christmas"
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Christmas"
  language      = "English"
  era           = "Traditional"
  songkey       = "F"
  timesig       = "3/4"
  occasion      = "Christmas; Singalong; Kids"
  technique     = "Strumming; 7th & Minor Chords; Waltz; Fast Tempo"
  versions      = "Letter Sheet; Audio; Letter Tab Sheet; Letter Tab + Chord Sheet"
  rights        = "Public Domain (check)"
  tags          = "Christmas; English; Traditional; Strumming; 7th & Minor Chords; Waltz; Fast Tempo; F; 3/4; Singalong; Kids; Public Domain (check)"
  difficulty    = "3.5"
  difficultyraw = "5.62"
  % end tags
}

\paper {
  #(set-paper-size "letter")
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 15\mm
  right-margin = 15\mm
  system-system-spacing.basic-distance = #9.6
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
  \key f \major
  \time 3/4
  \partial 4
}

melody = \relative c' {
  c4 | f4 f8 g8 f8 e8 | d4 d4 \bar "" \break d4 | g4 g8 a8 g8 f8 | e4 c4 \bar "" \break c4 |
  a'4 a8 bf8 a8 g8 | f4 d4 c8 c8 | d4 g4 e4 | f2 \bar "" \break c4 |
  f4 f4 f4 | e2 e4 | f4 e4 d4 | c2 \bar "" \break g'4 |
  a4 g4 f4 | c'4 c,4 c8 c8 | d4 g4 e4 | f2 r4 | \bar "|."
}

harmony = \chordmode {
  s4 | f2. | g2.:m | g2.:7 | c2. | d2.:m | d2:m f4 | g2:m c4:7 | f2. | f2. | c2. | g2.:7 | c2. | f2. | f2. | g2:m c4:7 | f2.
}

fullMelody = \relative c' {
  c4 | f4 f8 g8 f8 e8 | d4 d4 d4 | g4 g8 a8 g8 f8 | e4 c4 c4 |
  \break
  a'4 a8 bf8 a8 g8 | f4 d4 c8 c8 | d4 g4 e4 | f2 c4 |
  \break
  f4 f4 f4 | e2 e4 | f4 e4 d4 | c2 g'4 |
  \break
  a4 g4 f4 | c'4 c,4 c8 c8 | d4 g4 e4 | f2 r4 | \bar "|."
}

fullHarmony = \chordmode {
  s4 | f2. | g2.:m | g2.:7 | c2. | d2.:m | d2:m f4 | g2:m c4:7 | f2. | f2. | c2. | g2.:7 | c2. | f2. | f2. | g2:m c4:7 | f2.
}

words = \lyricmode {
  We wish you a mer -- ry Christ -- mas
  we wish you a mer -- ry Christ -- mas
  we wish you a mer -- ry Christ -- mas and a hap -- py New Year,
  Good ti -- dings we bring to you and your kin,
  good ti -- dings for Christ -- mas and a hap -- py New Year.
}

\score {
  <<
    \new ChordNames \with {
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing.padding = #0.8
      \override ChordName.font-size = #1.5
      \override ChordName.font-series = #'bold
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
    #(layout-set-staff-size 21.2)
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
% Melody: traditional West Country carol; checked against the Coughlin G and F editions and the Irish Fest ABC.
% ------------------------------------------------------------------
