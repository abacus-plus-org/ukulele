\version "2.24.4"
\language "english"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Angels We Have Heard on High - Words: James Chadwick (1862), English paraphrase of the French carol Les anges dans nos campagnes; tune: Gloria, traditional French carol. US Letter sheet (one page, tabs only, first verse only, chord names, no chord diagrams).
% RIGHTS: public. Words: James Chadwick (1824-1882), Roman Catholic Bishop of Hexham and Newcastle, wrote this English paraphrase in 1862 (Wikipedia, citing Hymnology Archive); he died in 1882, so it is public domain everywhere. The French original (J'entends la sur ces collines, Pere Roche, Marseille 1805; Les anges dans nos campagnes, 1842) is anonymous and also public domain. Tune: Gloria, a traditional French carol (19th century). Edward Shippen Barnes's 1937 arrangement is the familiar American setting; its harmony is not used here, only the traditional tune as printed in it. Kyle Coughlin edition (christmasmusicsongs.com) was used only to read the notes, the rhythm and plain chord names; none of its layout is copied.
% First verse only (77 syllables for 77 notes). Line breaks follow the lyric phrases.
% Tempo (4 = 110) is MIDI only, not printed.
% ------------------------------------------------------------------

\header {
  title = \markup \fontsize #1 "Angels We Have Heard on High"
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Christmas; Hymn & Spiritual"
  language      = "English"
  era           = "1800s"
  songkey       = "F"
  timesig       = "4/4"
  occasion      = "Christmas; Singalong"
  technique     = "Strumming; 7th & Minor Chords; Frequent Chord Changes; Moderate Tempo; Barre Chords"
  versions      = "Letter Sheet; Audio; Letter Staff Sheet; Letter Tab Sheet"
  rights        = "Public Domain"
  tags          = "Christmas; Hymn & Spiritual; English; 1800s; Strumming; 7th & Minor Chords; Frequent Chord Changes; Moderate Tempo; Barre Chords; F; 4/4; Singalong; Public Domain"
  difficulty    = "3.1"
  difficultyraw = "5.05"
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
  \key f \major
  \time 4/4
}

melody = \relative c' {
  a'4 a4 a4 c4 |
  c4. bf8 a2 |
  a4 g4 a4 c4 |
  a4. g8 f2 |
  \break a4 a4 a4 c4 |
  c4. bf8 a2 |
  a4 g4 a4 c4 |
  a4. g8 f2 |
  \break c'2 d8 c8 bf8 a8 |
  bf2 c8 bf8 a8 g8 |
  a2 bf8 a8 g8 f8 |
  g4. c,8 c2 |
  f4 g4 a4 bf4 |
  a2 g2 |
  \break c2 d8 c8 bf8 a8 |
  bf2 c8 bf8 a8 g8 |
  a2 bf8 a8 g8 f8 |
  g4. c,8 c2 |
  f4 g4 a4 bf4 |
  a2 g2 |
  f1
}

harmony = \chordmode {
  f2 a2:m c2:7 f2 f4 c4 f2 f4 c4:7 f2 f2 a2:m c2:7 f2 f4 c4 f2 f4 c4:7 f2 f2 d2 g2:m c2 f2 bf2 c2 c2:7 f4 c4 f4 bf4 f2 c2 f2 d2 g2:m c2 f2 bf2 c2 c2:7 f4 c4 f4 bf4 f2 c2:7 f1
}

fullMelody = \relative c' {
  a'4 a4 a4 c4 | \noPageBreak
  c4. bf8 a2 | \noPageBreak
  a4 g4 a4 c4 | \noPageBreak
  a4. g8 f2 | \noPageBreak
  \break
  a4 a4 a4 c4 | \noPageBreak
  c4. bf8 a2 | \noPageBreak
  a4 g4 a4 c4 | \noPageBreak
  a4. g8 f2 | \noPageBreak
  \break
  c'2 d8 c8 bf8 a8 | \noPageBreak
  bf2 c8 bf8 a8 g8 | \noPageBreak
  a2 bf8 a8 g8 f8 | \noPageBreak
  g4. c,8 c2 | \noPageBreak
  \break
  f4 g4 a4 bf4 | \noPageBreak
  a2 g2 | \noPageBreak
  c2 d8 c8 bf8 a8 | \noPageBreak
  bf2 c8 bf8 a8 g8 | \noPageBreak
  \break
  a2 bf8 a8 g8 f8 | \noPageBreak
  g4. c,8 c2 | \noPageBreak
  f4 g4 a4 bf4 | \noPageBreak
  a2 g2 | \noPageBreak
  f1 \bar "|"
  \pageBreak
  a4 a4 a4 c4 | \noPageBreak
  c4. bf8 a2 | \noPageBreak
  a4 g4 a4 c4 | \noPageBreak
  a4. g8 f2 | \noPageBreak
  \break
  a4 a4 a4 c4 | \noPageBreak
  c4. bf8 a2 | \noPageBreak
  a4 g4 a4 c4 | \noPageBreak
  a4. g8 f2 | \noPageBreak
  \break
  c'2 d8 c8 bf8 a8 | \noPageBreak
  bf2 c8 bf8 a8 g8 | \noPageBreak
  a2 bf8 a8 g8 f8 | \noPageBreak
  g4. c,8 c2 | \noPageBreak
  \break
  f4 g4 a4 bf4 | \noPageBreak
  a2 g2 | \noPageBreak
  c2 d8 c8 bf8 a8 | \noPageBreak
  bf2 c8 bf8 a8 g8 | \noPageBreak
  \break
  a2 bf8 a8 g8 f8 | \noPageBreak
  g4. c,8 c2 | \noPageBreak
  f4 g4 a4 bf4 | \noPageBreak
  a2 g2 | \noPageBreak
  f1 \bar "|"
  \pageBreak
  a4 a4 a4 c4 | \noPageBreak
  c4. bf8 a2 | \noPageBreak
  a4 g4 a4 c4 | \noPageBreak
  a4. g8 f2 | \noPageBreak
  \break
  a4 a4 a4 c4 | \noPageBreak
  c4. bf8 a2 | \noPageBreak
  a4 g4 a4 c4 | \noPageBreak
  a4. g8 f2 | \noPageBreak
  \break
  c'2 d8 c8 bf8 a8 | \noPageBreak
  bf2 c8 bf8 a8 g8 | \noPageBreak
  a2 bf8 a8 g8 f8 | \noPageBreak
  g4. c,8 c2 | \noPageBreak
  \break
  f4 g4 a4 bf4 | \noPageBreak
  a2 g2 | \noPageBreak
  c2 d8 c8 bf8 a8 | \noPageBreak
  bf2 c8 bf8 a8 g8 | \noPageBreak
  \break
  a2 bf8 a8 g8 f8 | \noPageBreak
  g4. c,8 c2 | \noPageBreak
  f4 g4 a4 bf4 | \noPageBreak
  a2 g2 | \noPageBreak
  f1  \bar "|."
}

fullHarmony = \chordmode {
  f2 a2:m c2:7 f2 f4 c4 f2 f4 c4:7 f2 f2 a2:m c2:7 f2 f4 c4 f2 f4 c4:7 f2 f2 d2 g2:m c2 f2 bf2 c2 c2:7 f4 c4 f4 bf4 f2 c2 f2 d2 g2:m c2 f2 bf2 c2 c2:7 f4 c4 f4 bf4 f2 c2:7 f1 f2 a2:m c2:7 f2 f4 c4 f2 f4 c4:7 f2 f2 a2:m c2:7 f2 f4 c4 f2 f4 c4:7 f2 f2 d2 g2:m c2 f2 bf2 c2 c2:7 f4 c4 f4 bf4 f2 c2 f2 d2 g2:m c2 f2 bf2 c2 c2:7 f4 c4 f4 bf4 f2 c2:7 f1 f2 a2:m c2:7 f2 f4 c4 f2 f4 c4:7 f2 f2 a2:m c2:7 f2 f4 c4 f2 f4 c4:7 f2 f2 d2 g2:m c2 f2 bf2 c2 c2:7 f4 c4 f4 bf4 f2 c2 f2 d2 g2:m c2 f2 bf2 c2 c2:7 f4 c4 f4 bf4 f2 c2:7 f1
}

words = \lyricmode {
  An -- gels we have heard on high Sweet -- ly sing -- ing o'er the plains,
  And the moun -- tains in re -- ply Ech -- o -- ing their joy -- ous strains.
  Glo -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ri -- a in ex -- cel -- sis De -- o,
  Glo -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ri -- a in ex -- cel -- sis De -- o. _
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
      \global \tempo 4 = 110
      \fullMelody
    }
    \new Staff \with { midiInstrument = "acoustic guitar (nylon)" midiMaximumVolume = #0.5 } {
      \global
      \fullHarmony
    }
  >>
  \midi { \tempo 4 = 110 }
}
}

% ------------------------------------------------------------------
% Melody: traditional French tune, Chadwick's English words; checked against the Barnes hymnal setting and the mfiles MIDI (both in F), and the Coughlin G edition. Three standard stanzas; 'heav'nly song' as commonly sung.
% ------------------------------------------------------------------
