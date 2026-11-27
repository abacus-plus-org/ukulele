\version "2.24.4"
\language "english"
#(set-global-staff-size 18.6)
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"
\storePredefinedDiagram #default-fret-table \chordmode { d:7 } #ukulele-tuning "2-1;o;2-2;o;"

% ------------------------------------------------------------------
% Take Me Out to the Ball Game - Albert Von Tilzer (music) and Jack Norworth (words), 1908. US Letter sheet (one page, tabs only, first verse only, chord names, chord diagrams).
% RIGHTS: public domain in the US. 1908 music and words (Von Tilzer, Norworth); the Library of Congress Copyright blog (March 2026) states the original and the revised (1927) lyrics are in the public domain. The piano arrangement's accompaniment is not used, only the melody and standard chords.
% Standard chorus only (bars 33–64); the G entry is re-anchored to keep low G3. Chorus bar 10: E to E7 for the D in B–C–D, resolving to Am.
% First verse only (60 syllables for 60 notes). Line breaks follow the lyric phrases.
% Tempo (4 = 110) is MIDI only, not printed. No MIDI score in this chart-card derivative.
% ------------------------------------------------------------------

\header {
  title = \markup \fontsize #1 "Take Me Out to the Ball Game"
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Standards & Jazz"
  language      = "English"
  era           = "1900s–1940s"
  songkey       = "G"
  timesig       = "3/4"
  occasion      = "Singalong"
  technique     = "Strumming; 7th & Minor Chords; Waltz; Moderate Tempo"
  versions      = "Letter Sheet; Audio; Letter Tab Sheet; Letter Tab + Chord Sheet"
  rights        = "Public Domain"
  tags          = "Standards & Jazz; English; 1900s–1940s; Strumming; 7th & Minor Chords; Waltz; Moderate Tempo; G; 3/4; Singalong; Public Domain"
  difficulty    = "2.7"
  difficultyraw = "4.60"
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
  \key g \major
  \time 3/4
}

melody = \relative c' {
  g2 g'4  |  e4 d4 b4  |  d2.  |  a2.  |
  g2 g'4  |  e4 d4 b4  |  d2.~  |  d2 r4  |
  \break e4 ds4 e4  |  b4 c4 d4  |  e2 c4  |  a2.  |
  \break e'2 e4  |  e4 fs4 g4  |  a4 fs4 e4  |  d4 \bar "" \break b4 a4  |
  g2 g'4  |  e4 d4 b4  |  d2.  |  a2 \bar "" \break a4  |
  g2 a4  |  b4 c4 d4  |  e2.~  |  e4  e4 fs4  |
  g2.  |  g2.  |  g4 fs4 e4  |  d4 \bar "" \break cs4 d4  |
  e2.  |  fs2.  |  g2.~  |  g2 r4 \bar "|."
}

harmony = \chordmode {
   g2.  |  g2.  |  d2.  |  d2.:7  |  g2.  |  g2.  |  d2.  |  d2.:7  |  e2.  | e2.:7 |  a2.:m  |  a2.:m  |  a2.:7  |  a2.:7  |  d2.  |  d2.:7  |  g2.  |  g2.  |  d2.  |  d2.  |  g2.  |  g2.:7  |  c2.  |  c2.  |  c2.  |  a2.:7  |  g2.  |  g2.  |  a2.:7  |  d2.:7  |  g2.  |  g2.
}

fullMelody = \relative c' {
  g2 g'4  |  e4 d4 b4  |  d2.  |  a2.  |
  g2 g'4  |  e4 d4 b4  |  d2.~  |  d2 r4  |
  e4 ds4 e4  |  b4 c4 d4  |  e2 c4  |  a2.  |
  e'2 e4  |  e4 fs4 g4  |  a4 fs4 e4  |  d4 b4 a4  |
  g2 g'4  |  e4 d4 b4  |  d2.  |  a2 a4  |
  g2 a4  |  b4 c4 d4  |  e2.~  |  e4 e4 fs4  |
  g2.  |  g2.  |  g4 fs4 e4  |  d4 cs4 d4  |
  e2.  |  fs2.  |  g2.~  |  g2 r4 \bar "|."
}

fullHarmony = \chordmode {
   g2.  |  g2.  |  d2.  |  d2.:7  |  g2.  |  g2.  |  d2.  |  d2.:7  |  e2.  | e2.:7 |  a2.:m  |  a2.:m  |  a2.:7  |  a2.:7  |  d2.  |  d2.:7  |  g2.  |  g2.  |  d2.  |  d2.  |  g2.  |  g2.:7  |  c2.  |  c2.  |  c2.  |  a2.:7  |  g2.  |  g2.  |  a2.:7  |  d2.:7  |  g2.  |  g2.
}

words = \lyricmode {
  Take me out to the ball game,
  Take me out with the crowd.
  Buy me some pea -- nuts and crack -- er jack,
  I don't care if I nev -- er get back,
  Let me root, root, root for the home team,
  If they don't win it's a shame.
  For it's one, two, three strikes, you're out,
  At the old ball game.
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
    #(layout-set-staff-size 18.6)
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
% Melody: Von Tilzer / Norworth, 1908; checked against early prints and standard lead sheets. Standard chorus.
% ------------------------------------------------------------------
