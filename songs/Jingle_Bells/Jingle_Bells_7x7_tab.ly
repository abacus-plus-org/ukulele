\version "2.24.4"
\language "english"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Jingle Bells - James Lord Pierpont, 1857 ('The One Horse Open Sleigh'). US Letter sheet (one page, tabs only, first verse only, chord names, no chord diagrams).
% RIGHTS: public. 'The One Horse Open Sleigh' (now 'Jingle Bells'), words and music by James Lord Pierpont (1822-1893), published by Oliver Ditson, Boston, 1857 (copyright expired long before 1931). The scores read are modern arrangements (Kyle Coughlin 2013, FluteTunes); only the traditional melody was taken from them, not their layout. Chords are the standard I-IV-V7 changes.
% First chorus only (bars 17–32); the B entry is re-anchored to keep B4.
% First verse only (51 syllables for 51 notes). Line breaks follow the lyric phrases.
% Tempo (4 = 104) is MIDI only, not printed.
% ------------------------------------------------------------------

\header {
  title = \markup \fontsize #1 "Jingle Bells"
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Christmas"
  language      = "English"
  era           = "1800s"
  songkey       = "G"
  timesig       = "4/4"
  occasion      = "Christmas; Singalong; Kids"
  technique     = "Strumming; More Open Chords; Moderate Tempo; Up to Fret 7"
  versions      = "Letter Sheet; Audio; Letter Tab Sheet; Letter Tab + Chord Sheet"
  rights        = "Public Domain"
  tags          = "Christmas; English; 1800s; Strumming; More Open Chords; Moderate Tempo; Up to Fret 7; G; 4/4; Singalong; Kids; Public Domain"
  difficulty    = "1.8"
  difficultyraw = "3.40"
  % end tags
}

\paper {
  #(set-paper-size "letter")
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 15\mm
  right-margin = 15\mm
  system-system-spacing.basic-distance = #20.8
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
  \time 4/4
}

melody = \relative c' {
  b'4 b4 b2  |  b4 b4 b2  |  b4 d4 g,4. a8  |  b1  |
  \break c4 c4 c4. c8  |  c4 b4 b4 b8 b8  |  b4 a4 a4 b4  |  a2 d2  |
  \break b4 b4 b2  |  b4 b4 b2  |  b4 d4 g,4. a8  |  b1  |
  \break c4 c4 c4. c8  |  c4 b4 b4 b8 b8  |  d4 d4 c4 a4  |  g1 | \bar "|."
}

harmony = \chordmode {
   g1  |  g1  |  g2 c2  |  g1  |  c1  |  g1  |  a1:7  |  d1  |  g1  |  g1  |  g2 c2  |  g1  |  c1  |  g1  |  d1:7  |  g1  |
}

fullMelody = \relative c' {
  b'4 b4 b2  |  b4 b4 b2  |  b4 d4 g,4. a8  |  b1  |
  c4 c4 c4. c8  |  c4 b4 b4 b8 b8  |  b4 a4 a4 b4  |  a2 d2  |
  b4 b4 b2  |  b4 b4 b2  |  b4 d4 g,4. a8  |  b1  |
  c4 c4 c4. c8  |  c4 b4 b4 b8 b8  |  d4 d4 c4 a4  |  g1 | \bar "|."
}

fullHarmony = \chordmode {
   g1  |  g1  |  g2 c2  |  g1  |  c1  |  g1  |  a1:7  |  d1  |  g1  |  g1  |  g2 c2  |  g1  |  c1  |  g1  |  d1:7  |  g1  |
}

words = \lyricmode {
  Jin -- gle bells, jin -- gle bells, jin -- gle all the way!
  Oh what fun it is to ride in a one horse o -- pen sleigh, hey!
  Jin -- gle bells, jin -- gle bells, jin -- gle all the way!
  Oh what fun it is to ride in a one horse o -- pen sleigh.
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
    #(layout-set-staff-size 35.9)
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
      \global \tempo 4 = 104
      \fullMelody
    }
    \new Staff \with { midiInstrument = "acoustic guitar (nylon)" midiMaximumVolume = #0.5 } {
      \global
      \fullHarmony
    }
  >>
  \midi { \tempo 4 = 104 }
}
}

% ------------------------------------------------------------------
% Melody: Pierpont, 1857; checked against the Coughlin and other public-domain editions.
% ------------------------------------------------------------------
