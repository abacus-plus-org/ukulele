\version "2.24.4"
\language "english"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Oh! Susanna - Stephen Foster (1848). US Letter sheet (one page, tabs only, first verse only, chord names, no chord diagrams).
% RIGHTS: public (Stephen Foster, 1848; public domain). First verse and the chorus entered.
% Line breaks follow the lyric phrases; pickups start the next phrase.
% First verse only (85 syllables for 85 notes). Line breaks follow the lyric phrases.
% Tempo (4 = 96) is MIDI only, not printed.
% ------------------------------------------------------------------

\header {
  title = \markup \fontsize #1 "Oh! Susanna"
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Folk & Americana"
  language      = "English"
  era           = "1800s"
  songkey       = "G"
  timesig       = "2/4"
  occasion      = "Singalong; Campfire"
  technique     = "Strumming; Basic Open Chords"
  versions      = "Letter Sheet; Audio; Letter Tab Sheet; Letter Tab + Chord Sheet"
  rights        = "Public Domain"
  tags          = "Folk & Americana; English; 1800s; Strumming; Basic Open Chords; G; 2/4; Singalong; Campfire; Public Domain"
  difficulty    = "0.3"
  difficultyraw = "1.35"
  % end tags
}

\paper {
  #(set-paper-size "letter")
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 15\mm
  right-margin = 15\mm
  system-system-spacing.basic-distance = #12.0
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
  \key g \major
  \time 2/4
  \partial 8
}

melody = \relative c' {
  g16 a | b8 d d e | d b g8. a16 | b8 b a g | a4. \bar "" \break g16 a | b8 d d8. e16 | d8 b  g8. a16 |
  b8 b a a | g4. \bar "" \break g16 a | b8 d d8. e16 | d8 b g8.  a16 | b8 b a g | a4. \bar "" \break g16 a |
  b8 d d e | d b g8.  a16 | b8 b a a | g4 r | \break c4  c | e8 e4 e8 |
  d8 d b g | a4. \bar "" \break g16 a | b8 d d e | d b g a | b b a a | g2 \bar "|."
}

harmony = \chordmode {
  s8 | g2 | g2 | g2 | d2:7 | g2 | g2 | d2:7 | g2 | g2 | g2 | d2:7 | d2:7 | g2 | g2 | d2:7 | g2 | c2 | c2 | g2 | d2:7 | g2 | g2 | d2:7 | g2 |
}

fullMelody = \relative c' {
  g16 a | b8 d d e | d b g8. a16 | b8 b a g | a4. g16 a | b8 d d8. e16 | d8 b g8. a16 |
  \break
  b8 b a a | g4. g16 a | b8 d d8. e16 | d8 b g8. a16 | b8 b a g | a4. g16 a |
  \break
  b8 d d e | d b g8. a16 | b8 b a a | g4 r | c4 c | e8 e4 e8 |
  \break
  d8 d b g | a4. g16 a | b8 d d e | d b g a | b b a a | g2 \bar "|."
}

fullHarmony = \chordmode {
  s8 | g2 | g2 | g2 | d2:7 | g2 | g2 | d2:7 | g2 | g2 | g2 | d2:7 | d2:7 | g2 | g2 | d2:7 | g2 | c2 | c2 | g2 | d2:7 | g2 | g2 | d2:7 | g2 |
}

words = \lyricmode {
  I _ come from Al -- a -- ba -- ma with a ban -- jo on my knee,
  I'm _ goin' to Lou -- si -- a -- na, my _ true love for to see.
  It _ rained all night the day I left, the wea -- ther it was dry.
  The _ sun so hot I froze to death, Su -- san -- na, don't you cry.
  Oh! Su -- san -- na, oh don't you cry for me.
  I've _ come from Al -- a -- ba -- ma with my ban -- jo on my knee.
}

\score {
  <<
    \new ChordNames \with {
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing.padding = #0.8
      \override ChordName.font-size = #1.5
      \override ChordName.font-series = #'bold
    } { \set chordChanges = ##t \harmony }
    \new TabStaff \with { stringTunings = \lowG } {
      \new TabVoice = "melody" { \tabFullNotation \global
        \melody
      }
    }
    \new Lyrics \lyricsto "melody" { \words }
  >>
  \layout {
    #(layout-set-staff-size 23.3)
    indent = #0
    \context {
      \Lyrics
      \override LyricText.font-name = "TeX Gyre Heros"
      \override LyricText.font-size = #0.5
      \override LyricSpace.minimum-distance = #0.8
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
      \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #1
    }
    \context { \Score \remove Metronome_mark_engraver 
      % Only the explicit \break commands (phrase ends) start a new line.
      \override NonMusicalPaperColumn.line-break-permission = ##f }
  }
}

% ---------------- MIDI (full melody + chords), own book so it adds no page ----------------
\book {
  \bookOutputSuffix "midi"
\score {
  \unfoldRepeats
  <<
    \new Staff \with { midiInstrument = "acoustic guitar (nylon)" } {
      \global \tempo 4 = 96
      \fullMelody
    }
    \new Staff \with { midiInstrument = "acoustic guitar (nylon)" midiMaximumVolume = #0.5 } {
      \global
      \fullHarmony
    }
  >>
  \midi { \tempo 4 = 96 }
}
}

% ------------------------------------------------------------------
% Melody: Foster, 1848; checked against early prints and standard lead sheets. American words ('with a banjo', 'goin' to Louisiana').
% ------------------------------------------------------------------
