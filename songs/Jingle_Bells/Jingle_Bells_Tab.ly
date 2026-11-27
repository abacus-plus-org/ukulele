\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"
\storePredefinedDiagram #default-fret-table \chordmode { d:7 } #ukulele-tuning "2-1;o;2-2;o;"  % D7 = 2-0-2-0 (house shape)

% ------------------------------------------------------------------
% Jingle Bells - James Lord Pierpont, 1857 ('The One Horse Open Sleigh'), toddler style (low-G, linear GCEA).
% RIGHTS: public. 'The One Horse Open Sleigh' (now 'Jingle Bells'), words and music by James Lord Pierpont (1822-1893), published by Oliver Ditson, Boston, 1857 (copyright expired long before 1931). The scores read are modern arrangements (Kyle Coughlin 2013, FluteTunes); only the traditional melody was taken from them, not their layout. Chords are the standard I-IV-V7 changes.
% Key of G, 4/4, chords G, C, Am, D, D7 and A7. Two verses, each followed by the chorus (64 bars, 4 bars per line, no forced page breaks). Range D4 to E5; the lowest note is D4 (MIDI 62), so every note is above G3.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 104) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: James Lord Pierpont, 1857 ('The One Horse Open Sleigh').
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Jingle Bells" \vspace #2.4 }
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
  difficulty    = "2.9"
  difficultyraw = "4.88"
  % end tags
}

\paper {
  #(set-paper-size "letter")
  top-margin = 15
  bottom-margin = 15
  left-margin = 18
  right-margin = 18
  system-system-spacing.basic-distance = #9
  system-system-spacing.padding = #3
  markup-system-spacing.padding = #4
  score-markup-spacing.padding = #9
  markup-markup-spacing.padding = #3
  ragged-bottom = ##t
  ragged-last-bottom = ##t
  #(define fonts (set-global-fonts #:roman "TeX Gyre Heros" #:sans "TeX Gyre Heros"
                   #:factor (/ staff-height pt 20)))
}

lowG = \stringTuning <g c' e' a'>

global = {
  \key g \major
  \time 4/4
}

melody = \relative c' {
  d4 b'4 a4 g4 | d2. d8 d8 | d4 b'4 a4 g4 | e1 |
  \break
  e4 c'4 b4 a4 | fs1 | d'4 d4 c4 a4 | b1 |
  \break
  d,4 b'4 a4 g4 | d1 | d4 b'4 a4 g4 | e2. e4 |
  \break
  e4 c'4 b4 a4 | d4 d4 d4 d4 | e4 d4 c4 a4 | g2 r2 |
  \break
  b4 b4 b2 | b4 b4 b2 | b4 d4 g,4. a8 | b1 |
  \break
  c4 c4 c4. c8 | c4 b4 b4 b8 b8 | b4 a4 a4 b4 | a2 d2 |
  \break
  b4 b4 b2 | b4 b4 b2 | b4 d4 g,4. a8 | b1 |
  \break
  c4 c4 c4. c8 | c4 b4 b4 b8 b8 | d4 d4 c4 a4 | g1 |
  \break
  d4 b'4 a4 g4 | d4 d2 d4 | d4 b'4 a4 g4 | e1 |
  \break
  e4 c'4 b4 a4 | fs4 fs2. | d'4 d4 c4 a4 | b2 b2 |
  \break
  d,4 b'4 a4 g4 | d4 d2. | d4 b'4 a4 g4 | e4 e2 e4 |
  \break
  e4 c'4 b4 a4 | d4 d4 d4 d4 | e4 d4 c4 a4 | g2 r2 |
  \break
  b4 b4 b2 | b4 b4 b2 | b4 d4 g,4. a8 | b1 |
  \break
  c4 c4 c4. c8 | c4 b4 b4 b8 b8 | b4 a4 a4 b4 | a2 d2 |
  \break
  b4 b4 b2 | b4 b4 b2 | b4 d4 g,4. a8 | b1 |
  \break
  c4 c4 c4. c8 | c4 b4 b4 b8 b8 | d4 d4 c4 a4 | g1 \bar "|."
}

harmony = \chordmode {
  g1 | g1 | g1 | c1 | a1:m | d1:7 | d1:7 | g1 | g1 | g1 | g1 | c1 | a1:m | d1 | d1:7 | g1 | g1 | g1 | g2 c2 | g1 | c1 | g1 | a1:7 | d1 | g1 | g1 | g2 c2 | g1 | c1 | g1 | d1:7 | g1 | g1 | g1 | g1 | c1 | a1:m | d1:7 | d1:7 | g1 | g1 | g1 | g1 | c1 | a1:m | d1 | d1:7 | g1 | g1 | g1 | g2 c2 | g1 | c1 | g1 | a1:7 | d1 | g1 | g1 | g2 c2 | g1 | c1 | g1 | d1:7 | g1
}

words = \lyricmode {
  Dash -- ing through the snow, in a one horse o -- pen sleigh, O'er the fields we go, laugh -- ing all the way, Bells on bob -- tail ring, mak -- ing spir -- its bright, What
  fun it is to ride and sing a sleigh -- ing song to -- night!
  Jin -- gle bells, jin -- gle bells, jin -- gle all the way! Oh what fun it is to ride in a one horse o -- pen sleigh, hey! Jin -- gle bells, jin -- gle bells, jin -- gle all the way! Oh what fun it is to ride in a one horse o -- pen sleigh.
  A day or two a -- go, I thought I'd take a ride, And soon Miss Fan -- ny Bright was seat -- ed by my side, The horse was lean and lank, mis -- for -- tune seemed his lot, he
  got in -- to a drift -- ed bank and we, we got up -- sot.
  Jin -- gle bells, jin -- gle bells, jin -- gle all the way! Oh what fun it is to ride in a one horse o -- pen sleigh, hey! Jin -- gle bells, jin -- gle bells, jin -- gle all the way! Oh what fun it is to ride in a one horse o -- pen sleigh.
}

\score {
  <<
    \new ChordNames \with {
      \override ChordName.font-size = #4
      \override ChordName.font-series = #'bold
    } { \set chordChanges = ##t \harmony }

    \new FretBoards \with {
      stringTunings = #ukulele-tuning
      \override FretBoard.size = #1.3
      \override FretBoard.fret-diagram-details.finger-code = #'none
    } { \set chordChanges = ##t \harmony }

    \new StaffGroup <<
            
      
      \new TabStaff \with {
        stringTunings = \lowG
        \override TabNoteHead.font-size = #-1
      } { \clef moderntab
        \new TabVoice = "melody" { \global
          \melody
        }
      }
      \new Lyrics \lyricsto "melody" { \words }
    >>
  >>
  \layout {
    #(layout-set-staff-size 18)
    indent = #0
    \context {
      \Lyrics
      \override LyricText.font-name = "TeX Gyre Heros"
      \override LyricText.font-size = #1.1
      \override LyricSpace.minimum-distance = #1.0
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1.5
      \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #1.5
    }
    \context {
      \Score
      \override MetronomeMark.padding = #3.5
      \override MetronomeMark.outside-staff-padding = #2.5
      % Only the explicit \break commands start a new line.
      \override NonMusicalPaperColumn.line-break-permission = ##f
      
    }
    \context {
      \TabStaff
      }
    \context {
      \FretBoards
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #3
    }
  }
}

% ------------------------------------------------------------------
% Melody: Pierpont, 1857; checked against the Coughlin and other public-domain editions.
% ------------------------------------------------------------------
