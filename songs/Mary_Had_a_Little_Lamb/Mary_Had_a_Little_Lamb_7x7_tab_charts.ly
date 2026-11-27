\version "2.24.4"
\language "english"
#(set-global-staff-size 26)
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"
\storePredefinedDiagram #default-fret-table \chordmode { d:7 } #ukulele-tuning "2-1;o;2-2;o;"

% ------------------------------------------------------------------
% Mary Had a Little Lamb - Traditional (words by Sarah Josepha Hale, 1830). 7x7-inch card sheet (one page, tabs only, first verse only, chord names, chord diagrams).
% RIGHTS: public (poem first published 1830; tune traditional, same as 'Merrily We Roll Along').
% Catalog melody, key (C major), octave and harmony preserved (songs.py slug mary-had-a-little-lamb).
% HARMONY AUDIT: no changes. Bar 7 F (beats 1-2) under melody D D gives an added-6th colour; kept as stored (catalog source pianolessons4children gives F G7), not a clear seventh outline.
% LAYOUT (rev 2, page composition): staff 26, diagrams 1.7, proportional quarter spacing (equal bar widths), diagrams tight to tab, systems spread to fill the page.
% Whole melody (8 bars). Line breaks follow the lyric phrases.
% Lyrics: first verse only (26 syllables for 26 notes). Tempo is not printed. No MIDI/audio in this chart-card derivative.
% ------------------------------------------------------------------

\header {
  title = \markup \fontsize #1 "Mary Had a Little Lamb"
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Nursery Rhyme"
  language      = "English"
  era           = "1800s"
  songkey       = "C"
  timesig       = "4/4"
  occasion      = "Kids"
  technique     = "Strumming; Basic Open Chords"
  versions      = "A4 Sheet; Audio; 7x7 Tab + Chord Card"
  rights        = "Public Domain"
  tags          = "Nursery Rhyme; English; 1800s; Strumming; Basic Open Chords; C; 4/4; Kids; Public Domain"
  difficulty    = "0.3"
  difficultyraw = "1.35"
  % end tags
}

#(set! paper-alist (cons '("card7x7" . (cons (* 7 in) (* 7 in))) paper-alist))
\paper {
  #(set-paper-size "card7x7")
  page-count = 1
  top-margin = 7\mm
  bottom-margin = 6\mm
  left-margin = 8\mm
  right-margin = 8\mm
  % Balanced composition: systems spread to fill the page evenly.
  system-system-spacing = #'((basic-distance . 12) (minimum-distance . 8) (padding . 1.5) (stretchability . 30))
  markup-system-spacing = #'((basic-distance . 6) (padding . 1.5) (stretchability . 8))
  score-markup-spacing.padding = #2
  last-bottom-spacing = #'((basic-distance . 4) (padding . 1) (stretchability . 30))
  top-markup-spacing = #'((basic-distance . 0) (padding . 0) (stretchability . 10))
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  ragged-last = ##f
  #(define fonts (set-global-fonts #:roman "TeX Gyre Heros" #:sans "TeX Gyre Heros"
                   #:factor (/ staff-height pt 20)))
}

lowG = \stringTuning <g c' e' a'>

global = {
  \key c \major
  \time 4/4
}

melody = \relative c' {
  e4 d c d | e e e2 | d4 d d2 | e4 g g2 |
  \break
  e4 d c d | e e e e | d d e d | c1 |
  \bar "|."
}

harmony = \chordmode {
  c1 | c1 | g1:7 | c1 | c1 | c1 | f2 g2:7 | c1 |
}

words = \lyricmode {
  Ma -- ry had a lit -- tle lamb,
  lit -- tle lamb, lit -- tle lamb,
  Ma -- ry had a lit -- tle lamb,
  its fleece was white as snow.
}

\score {
  <<
    \new ChordNames \with {
      \override ChordName.font-size = #1.5
      \override ChordName.font-series = #'bold
    } { \set chordChanges = ##t \harmony }
    \new FretBoards \with {
      stringTunings = #ukulele-tuning
      \override FretBoard.size = #1.7
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
    #(layout-set-staff-size 26)
    indent = #0
    \context {
      \Lyrics
      \override LyricText.font-name = "TeX Gyre Heros"
      \override LyricText.font-size = #0
      \override LyricSpace.minimum-distance = #0.8
      \override LyricHyphen.minimum-distance = #1.2
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
      \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #1
    }
    \context {
      \FretBoards
      % Diagrams sit close to the tab so each system reads as one unit.
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 0) (padding . 0.4))
    }
    \context {
      \ChordNames
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((basic-distance . 0) (padding . 0.2))
    }
    \context { \Score \remove Metronome_mark_engraver
      % Even, proportional bar widths for the straight-quarter 4/4 tune.
      \override SpacingSpanner.uniform-stretching = ##t
      proportionalNotationDuration = #(ly:make-moment 1/8)
      % Room before each barline so beat 4 does not touch it.
      \override BarLine.extra-spacing-width = #'(-1.5 . 1.5)
      % Only the explicit \break commands (phrase ends) start a new line.
      \override NonMusicalPaperColumn.line-break-permission = ##f }
  }
}

% ------------------------------------------------------------------
% Melody: traditional (the Hale rhyme, Mason tune); checked against standard children's lead sheets, in C.
% ------------------------------------------------------------------
