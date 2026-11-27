\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"
% Standing rule: D7 is 2-0-2-0 (the predefined shape is 2-2-2-3).
\storePredefinedDiagram #default-fret-table \chordmode { d:7 } #ukulele-tuning "2;o;2;o;"
% Bb is not in the English-language predefined table (stored there as bes). Partial barre at fret 1.
\storePredefinedDiagram #default-fret-table \chordmode { bf } #ukulele-tuning "3-3;2-2;1-1-(;1-1-);"

% ------------------------------------------------------------------
% Piano Concerto No. 21 in C major, K. 467, 2nd movement (Andante) — W. A. Mozart, 1785.
% The famous muted-string theme (later nicknamed "Elvira Madigan").
% Solo chord-melody arrangement for LOW-G ukulele (G3 C4 E4 A4), US Letter.
% RIGHTS: public. Wolfgang Amadeus Mozart, Piano Concerto No. 21 in C major, K. 467
% (completed 9 March 1785), public domain worldwide. Instrumental, no lyrics.
%
% TITLE: "Piano Concerto No. 21 in C Major: Andante" is English title case after
% Chicago (CMOS 8.159 / 8.163 and 8.196): principal words are capitalized; the
% short preposition "in" stays lowercase; "Major" is a principal word naming the
% concerto's key; "No." is the CMOS abbreviation for Number. A colon introduces
% the movement title "Andante" (used here as a title, so capitalized). The
% concerto and the movement are both named: "Andante" alone is too vague, and
% the concerto's key (C major) is not the key of this movement (F major). The
% popular nickname "Elvira Madigan" (from the 1967 film) is not Mozart's title
% and is not printed. K. 467 is not printed in the title.
%
% CONTENTS: the opening orchestral theme of the Andante, Mozart mm. 1-22
% (first tutti, through the first full cadence on F). The piano solo (from
% m. 23) and the rest of the movement are left out.
%
% KEY: the movement's original key, F major (the concerto itself is in C major).
% METER: 4/4 (the muted second violins and violas play a triplet-eighth texture;
%   this arrangement simplifies that accompaniment to a playable low-G bass and
%   chord tones, and keeps the first-violin melody exact).
% REGISTER: mm. 2-20 of the melody are written one octave below violin I so the
%   tune stays on the uke (the violin peaks at D6). The piano echoes in mm. 8-11
%   (A3, Bb3, B3, C4) are already in uke range and stay at pitch. Mm. 21-22 stay
%   at Mozart's pitch so the written-out turn (which includes F#4) and the cadence
%   F4 do not fall below open G3. Nothing is written below G3. Highest note D5
%   (A string, fret 5), plus the un-dropped C5 in m. 21 (fret 3).
%
% SIMPLIFICATIONS: the triplet-eighth accompaniment is reduced to bass notes and
%   partial open-chord voicings under the melody. Violin bowing slurs are
%   realized as hammer-ons or pull-offs only when both notes sit on the same
%   string. Dynamics (p, sf), mutes, and pizzicato marks are omitted so the tab
%   stays readable. The last bar holds an F-major cadence (Mozart's m. 22 is a
%   quarter F and rests).
%
% String numbers when forced: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 76) is a playable Andante for chord-melody (MIDI only, not printed).
% Credit: Wolfgang Amadeus Mozart, K. 467, 1785.
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #3 "Piano Concerto No. 21 in C Major: Andante" \vspace #0.8 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Classical"
  language      = "Instrumental"
  era           = "1700s"
  songkey       = "F"
  timesig       = "4/4"
  occasion      = "Solo Showpiece"
  technique     = "More Open Chords; Barre Chords; Hammer-ons & Pull-offs; Low-G Bass Line; Chord Melody"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Classical; Instrumental; 1700s; More Open Chords; Barre Chords; Hammer-ons & Pull-offs; Low-G Bass Line; Chord Melody; F; 4/4; Solo Showpiece; Public Domain"
  difficulty    = "7.9"
  difficultyraw = "11.55"
  % end tags
}

\paper {
  #(set-paper-size "letter")
  top-margin = 10
  bottom-margin = 10
  left-margin = 13
  right-margin = 13
  system-system-spacing.basic-distance = #6
  system-system-spacing.minimum-distance = #5
  system-system-spacing.padding = #0.8
  markup-system-spacing.padding = #1.4
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  #(define fonts (set-global-fonts #:roman "TeX Gyre Heros" #:sans "TeX Gyre Heros"
                   #:factor (/ staff-height pt 20)))
}

lowG = \stringTuning <g c' e' a'>

global = {
  \key f \major
  \numericTimeSignature
  \time 4/4
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
}

% Melody (voice 1, stems up). Forced string numbers: \1 A, \2 E, \3 C, \4 G.
melodyVoice = \fixed c {
  % Mozart mm. 1-4. m. 1 is the muted-string vamp; the tune begins in m. 2,
  % one octave below the violin.
  r1 | % 1
  f'4..\2 c'16\3 a'4..\1 f'16\2 | % 2
  c''2.\1 bf'16\1 a'16\1 g'16\2 f'16\2 | % 3
  fs'4\2( g'4\2) r2 | % 4
  \break
  % Mozart mm. 5-8.
  c'2\3 e'4\2 g'4\2 | % 5
  bf'2\1 ~ bf'8\1 d''8\1 c''8\1 bf'8\1 | % 6
  gs'8\2( a'8\2) a'4\1 r2 | % 7
  c''2\1 a4.\4 a8\4 | % 8
  \break
  % Mozart mm. 9-12. The piano echoes stay at pitch (already in uke range).
  c'8\3( bf8\4) bf4\4 r2 | % 9
  d''2\1 b4.\4 b8\4 | % 10
  c'2.\3 c''4\1 | % 11
  df''2.\1 g'4\2 | % 12
  \break
  % Mozart mm. 13-16 (descending sequence over the C pedal).
  c''2.\1 f'4\2 | % 13
  bf'2.\1 e'4\2 | % 14
  af'2.\2 d'4\3 | % 15
  g'2.\2 c'4\3 | % 16
  \break
  % Mozart mm. 17-20, still one octave below the violin.
  f'2\2 e'8\2 d'8\3 c'8\3 bf8\4 | % 17
  g2.\4 c'4\3 | % 18
  bf4\4 a4\4 r2 | % 19
  f'2\2 e'8\2 d'8\3 c'8\3 bf8\4 | % 20
  \break
  % Mozart mm. 21-22 at pitch, so the turn's F#4 and the cadence F4 stay above G3.
  g'2\2 ~ g'32\2 a'32\2 g'32\2 fs'32\2 g'8\2 c''4\1 | % 21
  f'4\2 r4 r2 \bar "|." % 22
}

% Accompaniment (voice 2, stems down): bass and chord tones under long notes.
% Always below the melody; nothing below open low G (G3).
accompVoice = \fixed c {
  % 1-4
  <a\4 c'\3 f'\2 a'\1>4 r4 <a\4 c'\3 f'\2 a'\1>4 r4 | % 1
  a4..\4 r16 <a\4 c'\3 f'\2>4.. r16 | % 2
  <a\4 c'\3 f'\2>2. r4 | % 3
  <g\4 c'\3>4 <g\4 c'\3>4 r2 | % 4
  \break
  % 5-8
  g2\4 <g\4 c'\3>4 <g\4 c'\3>4 | % 5
  <g\4 c'\3 e'\2>2 r4 r4 | % 6
  a8\4 r8 <a\4 c'\3 f'\2>4 r2 | % 7
  <a\4 c'\3 f'\2>2 r4 r4 | % 8
  \break
  % 9-12
  r8 r8 r4 r2 | % 9
  <g\4 d'\3 f'\2>2 r4 r4 | % 10
  af2.\4 <af\4 c'\3 f'\2>4 | % 11
  <g\4 c'\3 e'\2>2. <g\4 c'\3>4 | % 12
  \break
  % 13-16
  <a\4 c'\3 f'\2>2. <a\4 c'\3>4 | % 13
  <g\4 c'\3 e'\2>2. <g\4 c'\3>4 | % 14
  <af\4 c'\3>2. af4\4 | % 15
  <g\4 c'\3>2. g4\4 | % 16
  \break
  % 17-20
  <a\4 c'\3>2 r4 r4 | % 17
  r2. r4 | % 18
  r4 r4 r2 | % 19
  <a\4 c'\3>2 r4 r4 | % 20
  \break
  % 21-22
  <g\4 c'\3 e'\2>2 r4 <g\4 c'\3>4 | % 21
  <a\4 c'\3 a'\1>4 <a\4 c'\3 f'\2 a'\1>2 r4 \bar "|." % 22
}

harmony = \chordmode {
  f1 | % 1
  f1 | % 2
  f1 | % 3
  c1 | % 4
  c1 | % 5
  c1:7 | % 6
  f1 | % 7
  f1 | % 8
  bf1 | % 9
  g1:7 | % 10
  f1:m | % 11
  c1:7 | % 12
  f1 | % 13
  c1:7 | % 14
  f1:m | % 15
  c1:7 | % 16
  f1 | % 17
  c1:7 | % 18
  c1:7 | % 19
  f1 | % 20
  c1:7 | % 21
  f1 | % 22
}

% INSTRUMENTAL: no lyrics.
\score {
  <<
    \new ChordNames \with {
      \override ChordName.font-size = #1.6
      \override ChordName.font-series = #'bold
    } { \set chordChanges = ##t \harmony }

    \new FretBoards \with {
      stringTunings = #ukulele-tuning
      \override FretBoard.size = #0.9
      \override FretBoard.fret-diagram-details.finger-code = #'none
    } { \set chordChanges = ##t \harmony }

    \new StaffGroup <<
            
      \new TabStaff \with {
        stringTunings = \lowG
        \override TabNoteHead.font-size = #-1
      } << \clef moderntab
        \new TabVoice = "melody" { \tabFullNotation \voiceOne \global \melodyVoice }
        \new TabVoice = "accomp" { \tabFullNotation \voiceTwo \global \accompVoice }
      >>
    >>
  >>
  \layout {
    #(layout-set-staff-size 15.5)
    indent = #0
    \context {
      \Staff
      \omit StringNumber
    }
    \context {
      \TabStaff
      \omit StringNumber
    }
    \context {
      \FretBoards
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1.2
    }
    \context {
      \Score
      \remove Metronome_mark_engraver
      \override RehearsalMark.self-alignment-X = #LEFT
      \override NonMusicalPaperColumn.line-break-permission = ##f
    }
  }
}

% ---------------- MIDI: the SAME two tab voices (melody = track 1, accomp = track 2) ----------------
% Audio is rendered from this block and must match the tab. Tempo (MIDI only, not printed): quarter = 76.


% ------------------------------------------------------------------
% Melody: Mozart, K. 467, Andante; checked against the Mutopia / IMSLP piano-and-orchestra sources and the mfiles edition. Main theme only.
% ------------------------------------------------------------------
