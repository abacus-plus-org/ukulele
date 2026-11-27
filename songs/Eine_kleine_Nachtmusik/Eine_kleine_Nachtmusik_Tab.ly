\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"
% Standing rule: D7 is 2-0-2-0 (the predefined shape is 2-2-2-3).
\storePredefinedDiagram #default-fret-table \chordmode { d:7 } #ukulele-tuning "2;o;2;o;"

% ------------------------------------------------------------------
% Eine kleine Nachtmusik, K. 525, 1st movement (Allegro) - W. A. Mozart, 1787.
% Solo chord-melody arrangement for LOW-G ukulele (G3 C4 E4 A4), US Letter.
% RIGHTS: public. Wolfgang Amadeus Mozart, Serenade No. 13 in G major, K. 525
% (completed 10 August 1787), public domain worldwide. Instrumental, no lyrics.
%
% TITLE: "Eine kleine Nachtmusik" is kept in German sentence case (Chicago
% 11.6 / 8.157: foreign-language titles use sentence-style capitalization).
% "kleine" is a German adjective and is not capitalized.
%
% CONTENTS (main exposition themes of the first movement, sonata form):
%   Theme I  = Mozart mm. 1-18 (first group: opening fanfare, rocket, piano continuation).
%   Bridge   = a 4-bar reduction of the transition (Mozart mm. 20-27), leading into D major.
%   Theme II = Mozart mm. 28-35 (second theme, first period, ending on the D-major cadence
%              at the downbeat of m. 35). The repeated trill closing (mm. 36-55), the
%              development, recapitulation and coda are left out.
%
% KEY: original G major; Theme II is in D major (as in the score).
% REGISTER: Theme I mm. 1-10 and Theme II + the bridge are written one octave below
%   the first-violin part so the tune stays on the uke (the violin peaks at D6 / fret 17).
%   Theme I mm. 11-18 are at Mozart's pitch (E4 to E5); they meet m. 10 on D5.
%   Nothing is written below G3. Highest note E5 (A string, fret 7).
%
% SIMPLIFICATIONS: trills in mm. 6, 8 and 18 are written as short step-turns
%   (16ths) instead of measured trills or 32nds; appoggiaturas in mm. 9-10 are
%   written out as they are played (four 16ths); the 16th tremolo scale of mm. 20-21
%   is an eighth-note scale; the D-A figures of mm. 22-27 are reduced to two bars
%   of the A-D cadence plus a bar of A. Staccato dots and the short acciaccaturas in mm. 12-13 are
%   omitted so the tab stays readable. The last bar holds the D-major cadence
%   (Mozart's m. 35 continues into the closing figure).
%
% String numbers when forced: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 120) is a playable Allegro for chord-melody (MIDI only, not printed).
% Credit: Wolfgang Amadeus Mozart, K. 525, 1787.
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #3.5 "Eine kleine Nachtmusik" \vspace #0.8 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Classical"
  language      = "Instrumental"
  era           = "1700s"
  songkey       = "G"
  timesig       = "4/4"
  occasion      = "Solo Showpiece"
  technique     = "More Open Chords; Moderate Tempo; Frequent Chord Changes; Key Change; Up to Fret 7; Hammer-ons & Pull-offs; Low-G Bass Line; Chord Melody"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Classical; Instrumental; 1700s; More Open Chords; Moderate Tempo; Frequent Chord Changes; Key Change; Up to Fret 7; Hammer-ons & Pull-offs; Low-G Bass Line; Chord Melody; G; 4/4; Solo Showpiece; Public Domain"
  difficulty    = "8.5"
  difficultyraw = "12.30"
  % end tags
}

\paper {
  #(set-paper-size "letter")
  top-margin = 10
  bottom-margin = 10
  left-margin = 13
  right-margin = 13
  system-system-spacing.basic-distance = #7
  system-system-spacing.minimum-distance = #5.5
  system-system-spacing.padding = #1.2
  markup-system-spacing.padding = #1.4
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  #(define fonts (set-global-fonts #:roman "TeX Gyre Heros" #:sans "TeX Gyre Heros"
                   #:factor (/ staff-height pt 20)))
}

lowG = \stringTuning <g c' e' a'>

global = {
  \key g \major
  \numericTimeSignature
  \time 4/4
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
}

sectionMark = #(define-music-function (text) (markup?)
  #{
    \once \override Score.RehearsalMark.break-align-symbols = #'(staff-bar key-signature time-signature)
    \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.font-size = #-1
    \once \override Score.RehearsalMark.padding = #0.55
    \mark \markup \small \bold #text
  #})

% Melody (voice 1, stems up). Forced string numbers: \1 A, \2 E, \3 C, \4 G.
melodyVoice = \fixed c {
  \sectionMark "Theme I"
  % Mozart mm. 1-4, one octave below the violin (opening fanfare).
  g'4\2 r8 d'8\3 g'4\2 r8 d'8\3 | % 1
  g'8\2 d'8\3 g'8\2 b'8\1 d''4\1 r4 | % 2
  c''4\1 r8 a'8\1 c''4\1 r8 a'8\1 | % 3
  c''8\1 a'8\1 fs'8\2 a'8\1 d'4\3 r4 | % 4
  \break
  % Mozart mm. 5-8 (rocket theme). Turns stand in for the written trills.
  g'8\2 r8 g'4.\2 b'8\1( a'8\1) g'8\2 | % 5
  a'16\2( g'16\2) fs'8\2 fs'4.\2 a'8\1( c''8\1) fs'8\2 | % 6
  a'8\2( g'8\2) g'4.\2 b'8\1( a'8\1) g'8\2 | % 7
  a'16\2( g'16\2) fs'8\2 fs'4.\2 a'8\1( c''8\1) fs'8\2 | % 8
  \break
  % Mozart mm. 9-10 (appoggiaturas written out) + mm. 11-12 at Mozart's pitch.
  g'8\2 g'8\2 g'16\2 fs'16\2 e'16\2 fs'16\2 g'8\2 g'8\2 b'16\1 a'16\1 g'16\2 a'16\1 | % 9
  b'8\1 b'8\1 d''16\1 c''16\1 b'16\1 c''16\1 d''4\1 r4 | % 10
  d''2\1 e''2\1 | % 11
  c''4\1 c''4\1 b'4\1 b'4\1 | % 12
  \break
  % Mozart mm. 13-16 at pitch.
  a'4\1 a'4\1 g'8\2( fs'8\2) e'8\2 fs'8\2 | % 13
  g'8\2 r8 a'8\1 r8 b'8\1 r8 r4 | % 14
  d''2\1 e''2\1 | % 15
  d''8\1( c''8\1) c''8\1 c''8\1 c''8\1( b'8\1) b'8\1 b'8\1 | % 16
  \break
  % Mozart mm. 17-18, then a 4-bar bridge reduced from the transition (mm. 20-27).
  b'8\1( a'8\1) a'8\1 a'8\1 g'8\2( fs'8\2 e'8\2 fs'8\2) | % 17
  g'2\2~ g'8\2 a'16\2 g'16\2 a'8\1 fs'8\2 \bar "||" | % 18
  \break
  \sectionMark "Bridge"
  d'8\3 e'8\2 fs'8\2 g'8\2 a'8\1 b'8\1 cs''8\1 a'8\1 | % 19 (bridge 1)
  d''4.\1 a'8\1 cs''8.\1 a'16\1 cs''8.\1 a'16\1 | % 20 (bridge 2)
  d''8\1 a'8\1 cs''8\1 a'8\1 d''8\1 a'8\1 cs''8\1 a'8\1 | % 21 (bridge 3)
  cs''8\1 a'8\1 a'8\1 a'8\1 a'4\1 r4 \bar "||" | % 22 (bridge 4)
  \break
  % Mozart mm. 28-31, one octave below the violin (second theme).
  \key d \major
  \sectionMark "Theme II"
  a'4.\1 \tuplet 3/2 { g'16\2 fs'16\2 e'16\2 } d'8\3 r8 b'8\1 r8 | % 23
  g'8\2 r8 e'8\2 r8 a'8\1 r8 r4 | % 24
  fs'4.\2 \tuplet 3/2 { e'16\2 d'16\3 cs'16\3 } b8\4 r8 g'8\2 r8 | % 25
  fs'2\2( e'4\2) r4 | % 26
  \break
  % Mozart mm. 32-35, cadence held (the score continues into the closing figure).
  r8 a'8\1 a'8\1 a'8\1 a'8\1 a'8\1 a'8\1 a'8\1 | % 27
  a'8\1 a'8\1 a'8\1 a'8\1 a'8\1 a'8\1 b'8\1 cs''8\1 | % 28
  cs''8\1( d''8\1) r8 b'8\1 b'8\1( a'8\1) r8 cs'8\3 | % 29
  d'2.\3 r4 \bar "|." % 30
}

% Accompaniment (voice 2, stems down): bass and chord tones under long notes.
% Always below the melody; nothing below open low G (G3).
accompVoice = \fixed c {
  % 1-4
  g4\4 r8 r8 g4\4 r8 r8 | % 1
  g4\4 r4 g4\4 r4 | % 2
  a4\4 r8 r8 a4\4 r8 r8 | % 3
  a4\4 r4 a4\4 r4 | % 4
  \break
  % 5-8
  g8\4 r8 g2.\4 | % 5
  a4\4 a2\4 r4 | % 6
  g8\4 r8 g2.\4 | % 7
  a4\4 a2\4 r4 | % 8
  \break
  % 9-12
  g4\4 a4\4 g4\4 a4\4 | % 9
  g4\4 r4 g4\4 r4 | % 10
  <a\4 d'\3 fs'\2>2 <g\4 c'\3 e'\2>2 | % 11
  <g\4 c'\3 e'\2>4 r4 <g\4 d'\3>4 r4 | % 12
  \break
  % 13-16
  <a\4 d'\3>4 r4 a4\4 r4 | % 13
  g8\4 r8 a8\4 r8 g4\4 r4 | % 14
  <a\4 d'\3 fs'\2>2 <g\4 c'\3 e'\2>2 | % 15
  <g\4 c'\3 e'\2>4 r4 <g\4 d'\3>4 r4 | % 16
  \break
  % 17-18 + bridge 1-2
  a4\4 r4 a4\4 r4 | % 17
  g2\4 a4\4 r4 \bar "||" | % 18
  \break
  g4\4 r4 a4\4 r4 | % 19
  <a\4 d'\3>4. r8 a4\4 a4\4 | % 20
  a8\4 r8 a8\4 r8 a8\4 r8 a8\4 r8 | % 21
  a2\4 a4\4 r4 \bar "||" | % 22
  \break
  \key d \major
  d'4\3 r4 g4\4 r4 | % 23
  g4\4 r4 a4\4 r4 | % 24
  d'4\3 r4 g4\4 r4 | % 25
  a2\4 a4\4 r4 | % 26
  \break
  a8\4 r8 a8\4 r8 a8\4 r8 a8\4 r8 | % 27
  a8\4 r8 a8\4 r8 a8\4 r8 a8\4 r8 | % 28
  d'4\3 r4 a4\4 r8 a8\4 | % 29
  <a\4 fs'\2 a'\1>2. r4 \bar "|." % 30
}

harmony = \chordmode {
  g1 | % 1
  g1 | % 2
  d1:7 | % 3
  d1:7 | % 4
  g1 | % 5
  d1:7 | % 6
  g1 | % 7
  d1:7 | % 8
  g2 d2:7 | % 9
  g1 | % 10
  d2 c2 | % 11
  c2 g2 | % 12
  d1:7 | % 13
  g1 | % 14
  d2 c2 | % 15
  c2 g2 | % 16
  d1:7 | % 17
  g2 d2:7 | % 18
  g2 d2 | % 19
  d2 a2:7 | % 20
  d2 a2:7 | % 21
  a1:7 | % 22
  d1 | % 23
  g2 a2 | % 24
  d2 g2 | % 25
  a1 | % 26
  a1 | % 27
  a2 a2:7 | % 28
  d2 a2 | % 29
  d1 | % 30
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
      \override FretBoard.size = #1.0
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
    #(layout-set-staff-size 16.5)
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
% Audio is rendered from this block and must match the tab. Tempo (MIDI only, not printed): quarter = 120.


% ------------------------------------------------------------------
% Melody: Mozart, K. 525, first movement; checked against the Mutopia violin I part and the mfiles edition, with a pitch-and-rhythm check against the IMSLP violin I part. Themes I and II of the exposition only.
% ------------------------------------------------------------------
