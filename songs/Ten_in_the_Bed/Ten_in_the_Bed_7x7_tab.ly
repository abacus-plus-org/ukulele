\version "2.24.4"
\language "english"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Ten in the Bed - Traditional. 7x7-inch card sheet (one page, tabs only, first verse only, chord names, no chord diagrams).
% RIGHTS: traditional / public. 'Ten in the Bed' (Roll Over) is an anonymous children's counting song: ItsyBitsyKids and mfiles list it as Traditional, Music You Can Read as an American folk song, and no author or copyright claimant turns up. The earliest printed children's version is Sing Out! 11:3 (1961, 'Roll Over'), after a 1958-59 Folkways recording, so public-domain status rests on its being traditional rather than on a pre-1931 print. The 1988 Penny Dale picture book is a separate adaptation and is not used. Modern sheets were read only to check the notes.
% First verse only (28 syllables for 28 notes). Line breaks follow the lyric phrases.
% Tempo (4 = 93) is MIDI only, not printed.
% ------------------------------------------------------------------

\header {
  title = \markup \fontsize #1 "Ten in the Bed"
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Children's Song"
  language      = "English"
  era           = "Traditional"
  songkey       = "C"
  timesig       = "4/4"
  occasion      = "Kids; Counting & Learning; Lullaby & Bedtime"
  technique     = "Strumming; Basic Open Chords; Frequent Chord Changes"
  versions      = "A4 Sheet; Audio; 7x7 Staff Card; 7x7 Tab Card"
  rights        = "Public Domain (check)"
  tags          = "Children's Song; English; Traditional; Strumming; Basic Open Chords; Frequent Chord Changes; C; 4/4; Kids; Counting & Learning; Lullaby & Bedtime; Public Domain (check)"
  difficulty    = "1.9"
  difficultyraw = "3.55"
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
  system-system-spacing.basic-distance = #13.0
  system-system-spacing.padding = #1.5
  markup-system-spacing.padding = #1.5
  score-markup-spacing.padding = #2
  ragged-bottom = ##t
  ragged-last-bottom = ##t
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
  \repeat volta 9 {
  \partial 4 g8 g8 | c4 c8 c8 c4 g8 g8 | c8 c8 c4 c4 \bar "" \break g'4 | e4 c2 g'4 |
  e4 c2 \bar "" \break g8 g8 | c4 c4 c8 c8 g4 | c4 c4 c4
  }
}

harmony = \chordmode {
  \repeat volta 9 { g4 c2. g4 c2. g4 c2. g4 c2. g4 c2. g4 c2. }
}

fullMelody = \relative c' {
  \repeat volta 9 {
  \partial 4 g8 g8 | c4 c8 c8 c4 g8 g8 | c8 c8 c4 c4 g'4 | e4 c2 g'4 |
  \break
  e4 c2 g8 g8 | c4 c4 c8 c8 g4 | c4 c4 c4
  }
  \break
  \partial 4 g8 g8 | c4 c8 c8 c4 g8 g8 | c8 c8 c4 c4 g'4 | c,1 \bar "|."
}

fullHarmony = \chordmode {
  \repeat volta 9 { g4 c2. g4 c2. g4 c2. g4 c2. g4 c2. g4 c2. } g4 c2. g4 c2. g4 c1
}

words = \lyricmode {
  There were ten in the bed and the lit -- tle one said, Roll o -- ver, roll o -- ver! So they all rolled o -- ver and one fell out.
}

\score {
  <<
    \new ChordNames \with {
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
    #(layout-set-staff-size 26)
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
      \global \tempo 4 = 93
      \fullMelody
    }
    \new Staff \with { midiInstrument = "acoustic guitar (nylon)" midiMaximumVolume = #0.5 } {
      \global
      \fullHarmony
    }
  >>
  \midi { \tempo 4 = 93 }
}
}

% ------------------------------------------------------------------
% Melody: traditional children's song; checked against commonly printed lead sheets.
% ------------------------------------------------------------------
