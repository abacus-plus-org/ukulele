\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Melody checked against (see notes at end of file):
%  - ABC (key G, melodica.keyboardweb.de/alouette) transposed down a fifth to C
%  - Wikimedia Commons LilyPond source (key G), pianumero.com letter notes
% Alouette - one couplet (la tête), toddler style (low-G, linear GCEA).
% Refrain in C, verse on G7, then the refrain again.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Alouette" \vspace #0.8 }
  subtitle = ""
  % credit: Traditionnel (Canada français)
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Children's Song; Folk & Americana"
  language      = "French"
  era           = "Traditional"
  songkey       = "C"
  timesig       = "4/4"
  occasion      = "Kids; Singalong"
  technique     = "Strumming; Basic Open Chords; Frequent Chord Changes; Moderate Tempo"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Children's Song; Folk & Americana; French; Traditional; Strumming; Basic Open Chords; Frequent Chord Changes; Moderate Tempo; C; 4/4; Kids; Singalong; Public Domain"
  difficulty    = "2.3"
  difficultyraw = "4.00"
  % end tags
}

\paper {
  #(set-paper-size "a4")
  top-margin = 15
  bottom-margin = 15
  left-margin = 18
  right-margin = 18
  system-system-spacing.basic-distance = #12
  system-system-spacing.padding = #3
  markup-system-spacing.padding = #4
  score-markup-spacing.padding = #4
  ragged-bottom = ##t
  ragged-last-bottom = ##t
  #(define fonts (set-global-fonts #:roman "TeX Gyre Heros" #:sans "TeX Gyre Heros"
                   #:factor (/ staff-height pt 20)))
}

lowG = \stringTuning <g c' e' a'>


global = {
  \key c \major
  \time 4/4
}

refrain = \relative c' {
  c4. d8 e4 e |
  d8 c d e c4 g |
  c4. d8 e4 e |
  d8 c d e c2 |
}

refrainChords = \chordmode { c1 | g2:7 c2 | c1 | g2:7 c2 | }

refrainWords = \lyricmode {
  A -- lou -- et -- te, gen -- til -- le~A -- lou -- et -- te,
  A -- lou -- et -- te, je te plu -- me -- rai.
}

% Couplet, after the published tune:
% 1st phrase climbs the scale, 2nd phrase comes back down, then the
% "et la tete" / "Alouette" pairs jump from the high G (E string, fret 3)
% to the low G (open low-G string), and "Ah!" is held on the high G.
climbBar = \relative c' { c8 d e f g g g4 | }
fallBar  = \relative c' { g'8 a g f e d c r | }
pairBar  = \relative c'' { g8 g g4 g,8 g g4 | }
ahBar    = \relative c'' { g1\fermata | }

% ---------------- Couplet 1 : la tête ----------------
\score {
  <<
    \new ChordNames \with {
      \override ChordName.font-size = #4
      \override ChordName.font-series = #'bold
    } { \set chordChanges = ##t \refrainChords \chordmode { c1 | g2:7 c2 | g1:7 | g1:7 | g1:7 | } }

    \new FretBoards \with {
      stringTunings = #ukulele-tuning
      \override FretBoard.size = #1.6
      \override FretBoard.fret-diagram-details.finger-code = #'none
    } { \set chordChanges = ##t \refrainChords \chordmode { c1 | g2:7 c2 | g1:7 | g1:7 | g1:7 | } }

    \new StaffGroup <<
            
      
      \new TabStaff \with {
        stringTunings = \lowG
        \override TabNoteHead.font-size = #-1
      } { \clef moderntab
        \new TabVoice = "melody" { \global
          \omit Score.MetronomeMark \tempo 4 = 104
          \mark \markup \box \bold "Refrain"
          \refrain
          \break
          \mark \markup \box \bold "Couplet"
          \climbBar
          \fallBar
          \pairBar
          \break
          \pairBar
          \ahBar
          \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
          \mark \markup \italic \bold "D.C. au Refrain"
          \bar "|."
        }
      }
      \new Lyrics \lyricsto "melody" { \refrainWords
          Je te plu -- me -- rai la tête,
          je te plu -- me -- rai la tête,
          et la tête, et la tête,
          A -- lou -- ette, A -- lou -- ette,
          Ah! }
    >>
  >>
  \layout {
    #(layout-set-staff-size 22)
    indent = #0
    \context {
      \Lyrics
      \override LyricText.font-name = "TeX Gyre Heros"
      \override LyricText.font-size = #1.5
      \override LyricSpace.minimum-distance = #1.0
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1.5
      \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #1.5
    }
    \context {
      \Score
      \override MetronomeMark.padding = #3.5
      \override MetronomeMark.outside-staff-padding = #2.5
      \override RehearsalMark.self-alignment-X = #LEFT
      \override RehearsalMark.padding = #2
      % Only the explicit \break commands start a new line (3 couplet bars per line).
      \override NonMusicalPaperColumn.line-break-permission = ##f
    }
    \context {
      \TabStaff
      }
  }
}

% ---------------- MIDI (melody + chords, plays refrain, couplet, refrain) ----------------


% ------------------------------------------------------------------
% Melody: traditional; checked against the melodica.keyboardweb.de ABC (in G) and the Wikimedia Commons LilyPond source, transposed to C. One couplet (la tête).
% ------------------------------------------------------------------
