\version "2.24.4"
\language "english"
#(set-global-staff-size 34.2)
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"
\storePredefinedDiagram #default-fret-table \chordmode { d:7 } #ukulele-tuning "2-1;o;2-2;o;"

% ------------------------------------------------------------------
% Happy Birthday to You - Mildred J. Hill and Patty S. Hill (1893). US Letter sheet (one page, tabs only, first verse only, chord names, chord diagrams).
% RIGHTS: public domain in the US. Melody 'Good Morning to All' (Hill sisters, 1893) expired in 1949; the 2015 ruling found Warner/Chappell did not own the 'Happy Birthday to You' words and the June 2016 Final Order and Judgment in Good Morning to You Productions Corp. v. Warner/Chappell Music, Inc. (C.D. Cal. CV 13-04460) declares the song to be in the public domain.
% HARMONY AUDIT: bar 6 first beat C to Cmaj7: G-E-C-B outlines Cmaj7 before F. Both harmony blocks updated; no root substitutions.
% First verse only (25 syllables for 25 notes). Line breaks follow the lyric phrases.
% Tempo (4 = 100) is MIDI only, not printed. No MIDI score in this chart-card derivative.
% ------------------------------------------------------------------

\header {
  title = \markup \fontsize #1 "Happy Birthday to You"
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Holiday & Celebration"
  language      = "English"
  era           = "1800s"
  songkey       = "C"
  timesig       = "3/4"
  occasion      = "Birthday; Singalong; Kids"
  technique     = "Strumming; Basic Open Chords; Waltz; Moderate Tempo; More Open Chords (Letter tab sheet only); Frequent Chord Changes (Letter tab sheet only)"
  versions      = "Letter Sheet; Audio; Letter Tab Sheet; Letter Tab + Chord Sheet"
  rights        = "Public Domain"
  tags          = "Holiday & Celebration; English; 1800s; Strumming; Basic Open Chords; Waltz; Moderate Tempo; More Open Chords; Frequent Chord Changes; C; 3/4; Birthday; Singalong; Kids; Public Domain"
  difficulty    = "2.7"
  difficultyraw = "4.53"
  % end tags
}

\paper {
  page-count = 1
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
  \key c \major
  \time 3/4
}

melody = \relative c' {
  \partial 4 g8. g16 | a4 g4 c4 | b2 \bar "" \break g8. g16 | a4 g4 d'4 | c2 \bar "" \break g8. g16 |
  g'4 e4 c4 | b4 a4 \fermata f'8. f16 | e4 c4 d4 | c2. \bar "|."
}

harmony = \chordmode {
  s4 | c2. | g2.:7 | g2.:7 | c2. | c2. | c4:maj7 f2 | c2 g4:7 | c2.
}

fullMelody = \relative c' {
  \partial 4 g8. g16 | a4 g4 c4 | b2 g8. g16 | a4 g4 d'4 | c2 g8. g16 |
  \break
  g'4 e4 c4 | b4 a4 \fermata f'8. f16 | e4 c4 d4 | c2. \bar "|."
}

fullHarmony = \chordmode {
  s4 | c2. | g2.:7 | g2.:7 | c2. | c2. | c4:maj7 f2 | c2 g4:7 | c2.
}

words = \lyricmode {
  Hap -- py birth -- day to you, Hap -- py birth -- day to you, Hap -- py birth -- day, dear friend _ Hap -- py birth -- day to you.
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
    #(layout-set-staff-size 34.2)
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
% Melody: the traditional Hill tune; checked against commonly printed public-domain lead sheets.
% ------------------------------------------------------------------
