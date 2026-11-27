\version "2.24.4"
\language "english"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% We Three Kings - Words and music: John Henry Hopkins Jr. (1857; published 1863 as Three Kings of Orient). US Letter sheet (one page, tabs only, first verse only, chord names, no chord diagrams).
% RIGHTS: public. Words and music by John Henry Hopkins Jr. (1820-1891), written 1857 and published in his Carols, Hymns, and Songs (New York, 1863). Published before 1931 and the author died in 1891, so words and tune are public domain everywhere. No translation is involved; Hopkins's original text is used (Bethlehem plain; King, and God, and Sacrifice; Heav'n sings Hallelujah). Kyle Coughlin edition (christmasmusicsongs.com) was used only to read the notes, the rhythm and plain chord names; none of its layout is copied.
% First verse only (62 syllables for 62 notes). Line breaks follow the lyric phrases.
% Tempo (4. = 50) is MIDI only, not printed.
% ------------------------------------------------------------------

\header {
  title = \markup \fontsize #1 "We Three Kings"
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Christmas; Hymn & Spiritual"
  language      = "English"
  era           = "1800s"
  songkey       = "A"
  timesig       = "3/8"
  occasion      = "Christmas"
  technique     = "Strumming; 7th & Minor Chords; Waltz; Barre Chords; Up to Fret 7; Position Shifts (above fret 5)"
  versions      = "Letter Sheet; Audio; Letter Staff Sheet; Letter Tab Sheet"
  rights        = "Public Domain"
  tags          = "Christmas; Hymn & Spiritual; English; 1800s; Strumming; 7th & Minor Chords; Waltz; Barre Chords; Up to Fret 7; Position Shifts (above fret 5); A; 3/8; Public Domain"
  difficulty    = "2.4"
  difficultyraw = "4.22"
  % end tags
}

\paper {
  #(set-paper-size "letter")
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 15\mm
  right-margin = 15\mm
  system-system-spacing.basic-distance = #14.4
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
  \time 3/8
}

melody = \relative c' {
  cs'4 b8 |
  a4 fs8 |
  gs8 a8 gs8 |
  fs4 r8 |
  \break cs'4 b8 |
  a4 fs8 |
  gs8 a8 gs8 |
  fs4 r8 |
  \break a4 a8 |
  b4 b8 |
  cs4 cs8 |
  e8 d8 cs8 |
  b8 cs8 b8 |
  a4 gs8 |
  fs4 r8 |
  \break gs4 b8 |
  a4 a8 |
  a4 e8 |
  a4 fs8 |
  a4 r8 |
  \break a4 a8 |
  a4 e8 |
  a4 fs8 |
  a4 r8 |
  a4 a8 |
  b4 cs8 |
  d4 cs8 |
  b4 cs8 |
  \break a4 a8 |
  a4 e8 |
  a4 fs8 |
  a4.
}

harmony = \chordmode {
  fs4.:m fs4.:m cs4.:7 fs4.:m fs4.:m fs4.:m cs4.:7 fs4.:m fs4.:m e4. a4. a4. b4.:m cs4.:7 fs4.:m e4.:7 a4. a4. d4. a4. a4. a4. d4. a4. fs4.:m e4 a8 d4 a8 e4 a8 a4. a4. d4. a4.
}

fullMelody = \relative c' {
  cs'4 b8 | \noPageBreak
  a4 fs8 | \noPageBreak
  gs8 a8 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  cs'4 b8 | \noPageBreak
  a4 fs8 | \noPageBreak
  gs8 a8 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  b4 b8 | \noPageBreak
  cs4 cs8 | \noPageBreak
  e8 d8 cs8 | \noPageBreak
  b8 cs8 b8 | \noPageBreak
  a4 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  gs4 b8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4 r8 | \noPageBreak
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4 r8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  b4 cs8 | \noPageBreak
  d4 cs8 | \noPageBreak
  b4 cs8 | \noPageBreak
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4. \bar "|"
  \pageBreak
  cs4 b8 | \noPageBreak
  a4 fs8 | \noPageBreak
  gs8 a8 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  cs'4 b8 | \noPageBreak
  a4 fs8 | \noPageBreak
  gs8 a8 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  b4 b8 | \noPageBreak
  cs4 cs8 | \noPageBreak
  e8 d8 cs8 | \noPageBreak
  b8 cs8 b8 | \noPageBreak
  a4 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  gs4 b8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4 r8 | \noPageBreak
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4 r8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  b4 cs8 | \noPageBreak
  d4 cs8 | \noPageBreak
  b4 cs8 | \noPageBreak
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4. \bar "|"
  \pageBreak
  cs4 b8 | \noPageBreak
  a4 fs8 | \noPageBreak
  gs8 a8 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  cs'4 b8 | \noPageBreak
  a4 fs8 | \noPageBreak
  gs8 a8 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  b4 b8 | \noPageBreak
  cs4 cs8 | \noPageBreak
  e8 d8 cs8 | \noPageBreak
  b8 cs8 b8 | \noPageBreak
  a4 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  gs4 b8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4 r8 | \noPageBreak
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4 r8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  b4 cs8 | \noPageBreak
  d4 cs8 | \noPageBreak
  b4 cs8 | \noPageBreak
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4. \bar "|"
  \pageBreak
  cs4 b8 | \noPageBreak
  a4 fs8 | \noPageBreak
  gs8 a8 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  cs'4 b8 | \noPageBreak
  a4 fs8 | \noPageBreak
  gs8 a8 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  \break
  a8 a8 a8 | \noPageBreak
  b4 b8 | \noPageBreak
  cs4 cs8 | \noPageBreak
  e8 d8 cs8 | \noPageBreak
  b8 cs8 b8 | \noPageBreak
  a4 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  gs4 b8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4 r8 | \noPageBreak
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4 r8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  b4 cs8 | \noPageBreak
  d4 cs8 | \noPageBreak
  b4 cs8 | \noPageBreak
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4. \bar "|"
  \pageBreak
  cs4 b8 | \noPageBreak
  a4 fs8 | \noPageBreak
  gs8 a8 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  cs'4 b8 | \noPageBreak
  a4 fs8 | \noPageBreak
  gs8 a8 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  b4 b8 | \noPageBreak
  cs4 cs8 | \noPageBreak
  e8 d8 cs8 | \noPageBreak
  b8 cs8 b8 | \noPageBreak
  a4 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  gs4 b8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4 r8 | \noPageBreak
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4 r8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  b4 cs8 | \noPageBreak
  d4 cs8 | \noPageBreak
  b4 cs8 | \noPageBreak
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4.  \bar "|."
}

fullHarmony = \chordmode {
  fs4.:m fs4.:m cs4.:7 fs4.:m fs4.:m fs4.:m cs4.:7 fs4.:m fs4.:m e4. a4. a4. b4.:m cs4.:7 fs4.:m e4.:7 a4. a4. d4. a4. a4. a4. d4. a4. fs4.:m e4 a8 d4 a8 e4 a8 a4. a4. d4. a4. fs4.:m fs4.:m cs4.:7 fs4.:m fs4.:m fs4.:m cs4.:7 fs4.:m fs4.:m e4. a4. a4. b4.:m cs4.:7 fs4.:m e4.:7 a4. a4. d4. a4. a4. a4. d4. a4. fs4.:m e4 a8 d4 a8 e4 a8 a4. a4. d4. a4. fs4.:m fs4.:m cs4.:7 fs4.:m fs4.:m fs4.:m cs4.:7 fs4.:m fs4.:m e4. a4. a4. b4.:m cs4.:7 fs4.:m e4.:7 a4. a4. d4. a4. a4. a4. d4. a4. fs4.:m e4 a8 d4 a8 e4 a8 a4. a4. d4. a4. fs4.:m fs4.:m cs4.:7 fs4.:m fs4.:m fs4.:m cs4.:7 fs4.:m fs4.:m e4. a4. a4. b4.:m cs4.:7 fs4.:m e4.:7 a4. a4. d4. a4. a4. a4. d4. a4. fs4.:m e4 a8 d4 a8 e4 a8 a4. a4. d4. a4. fs4.:m fs4.:m cs4.:7 fs4.:m fs4.:m fs4.:m cs4.:7 fs4.:m fs4.:m e4. a4. a4. b4.:m cs4.:7 fs4.:m e4.:7 a4. a4. d4. a4. a4. a4. d4. a4. fs4.:m e4 a8 d4 a8 e4 a8 a4. a4. d4. a4.
}

words = \lyricmode {
  We three kings of O -- ri -- ent are, Bear -- ing gifts we tra -- verse a -- far,
  Field and foun -- tain, moor and moun -- _ tain, Fol -- low -- ing yon -- der star.
  O _ star of won -- der, star of night, Star with roy -- al beau -- ty bright,
  West -- ward lead -- ing, still pro -- ceed -- ing, Guide us to Thy per -- fect light.
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
    #(layout-set-staff-size 27.9)
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
      \global \tempo 4. = 50
      \fullMelody
    }
    \new Staff \with { midiInstrument = "acoustic guitar (nylon)" midiMaximumVolume = #0.5 } {
      \global
      \fullHarmony
    }
  >>
  \midi { \tempo 4. = 50 }
}
}

% ------------------------------------------------------------------
% Melody: Hopkins, 1857; checked against Wikipedia's LilyPond score and the Coughlin edition. All five stanzas, with the refrain.
% ------------------------------------------------------------------
