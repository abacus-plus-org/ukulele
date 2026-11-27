\version "2.24.4"
\language "english"
#(set-global-staff-size 21.2)
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"
\storePredefinedDiagram #default-fret-table \chordmode { d:7 } #ukulele-tuning "2-1;o;2-2;o;"

% ------------------------------------------------------------------
% I've Been Working on the Railroad - Traditional ('Levee Song', Carmina Princetonia, 1894). US Letter sheet (one page, tabs only, first verse only, chord names, chord diagrams).
% RIGHTS: public for what is entered. The Railroad chorus ('I been workin' on de railroad ... Dinah, blow yo' horn') was published as 'Levee Song' in Carmina Princetonia (Martin R. Dennis & Co., 1894), traditional/anonymous, and recorded before 1931. NOT entered, because they cannot be shown to be before 1931: 'Dinah, won't you blow' (first found in print around 1950, Landeck, Songs to Grow On) and the kitchen words 'Someone's in the kitchen with Dinah' as sung today (tied to a 1944 popular song; the older 'Old Joe' words used 'house'). The scores read are modern arrangements; only the melody and the standard I-IV-V chords were taken.
% First verse only (57 syllables for 57 notes). Line breaks follow the lyric phrases.
% Tempo (4 = 108) is MIDI only, not printed. No MIDI score in this chart-card derivative.
% ------------------------------------------------------------------

\header {
  title = \markup \fontsize #1 "I've Been Working on the Railroad"
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Folk & Americana"
  language      = "English"
  era           = "Traditional"
  songkey       = "F"
  timesig       = "4/4"
  occasion      = "Singalong; Campfire"
  technique     = "Strumming; More Open Chords; Moderate Tempo; Barre Chords"
  versions      = "Letter Sheet; Audio; Letter Tab Sheet; Letter Tab + Chord Sheet"
  rights        = "Public Domain"
  tags          = "Folk & Americana; English; Traditional; Strumming; More Open Chords; Moderate Tempo; Barre Chords; F; 4/4; Singalong; Campfire; Public Domain"
  difficulty    = "3.3"
  difficultyraw = "5.38"
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
  \time 4/4
}

melody = \relative c' {
  f4. c8 f8 c8 f8 g8 | a2 f2 | bf4. bf8 f4 g4 | a2. r4 |
  \break f4. c8 f8 c8 f8 g8 | a2 f4  a8 a8 | a4 g4 g4 a4 | g2. r4 |
  \break g4. g8 fs8 g8 a8 g8 | f2 c2 | \break bf'4 bf8 bf8 f8 f8 g8 g8 | a2. r4 |
  \break d,4. e8 f8 e8 f8 d8 | c2 f2 | a4. bf8 a4 g4 | f2. r4 \bar "|."
}

harmony = \chordmode {
  f1 | f1 | bf1 | f1 | f1 | f1 | g1:7 | c1 | c1 | f1 | bf1 | f1 | bf1 | f1 | c1 | f1
}

fullMelody = \relative c' {
  f4. c8 f8 c8 f8 g8 | a2 f2 | bf4. bf8 f4 g4 | a2. r4 |
  \break
  f4. c8 f8 c8 f8 g8 | a2 f4 a8 a8 | a4 g4 g4 a4 | g2. r4 |
  \break
  g4. g8 fs8 g8 a8 g8 | f2 c2 | bf'4 bf8 bf8 f8 f8 g8 g8 | a2. r4 |
  \break
  d,4. e8 f8 e8 f8 d8 | c2 f2 | a4. bf8 a4 g4 | f2. r4 \bar "|."
}

fullHarmony = \chordmode {
  f1 | f1 | bf1 | f1 | f1 | f1 | g1:7 | c1 | c1 | f1 | bf1 | f1 | bf1 | f1 | c1 | f1
}

words = \lyricmode {
  I've been work -- ing on the rail -- road, all the live -- long day.
  I've been work -- ing on the rail -- road, just to pass the time a -- way.
  Can't you hear the whis -- tle blow -- ing, rise up so ear -- ly in the morn;
  can't you hear the cap -- tain shout -- ing, Di -- nah, blow your horn!
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
% Melody: traditional; checked against standard American lead sheets. American words.
% ------------------------------------------------------------------
