\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% BINGO - Traditional (Scottish/English, 1780s; American "Bingo" form 1900s), toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional; the 'There was a farmer had a dog' form is from the early 1900s, with older Scottish/English roots, Roud 833). Full first verse entered, American wording.
% Key of C, 4/4, chords C, F and G7. One pickup beat, 12 bars, 4 bars per line, pitched low (G3 to E4, using the low-G string). First verse only, spelled B-I-N-G-O (the clap verses are left out).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 100) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (Scottish/English, 1780s; American "Bingo" form 1900s).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "BINGO" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Children's Song"
  language      = "English"
  era           = "Traditional"
  songkey       = "C"
  timesig       = "4/4"
  occasion      = "Kids; Action Song; Singalong"
  technique     = "Strumming; Basic Open Chords; Moderate Tempo"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Children's Song; English; Traditional; Strumming; Basic Open Chords; Moderate Tempo; C; 4/4; Kids; Action Song; Singalong; Public Domain"
  difficulty    = "1.2"
  difficultyraw = "2.55"
  % end tags
}

\paper {
  #(set-paper-size "a4")
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
  \key c \major
  \time 4/4
  \partial 4
}

melody = \relative c' {
  g4 | c c g g | a a g g | c c d d | e2 c2 |
  \break
  e2 e2 | f4 f f2 | d2 d2 | e4 e e2 |
  \break
  c2 c2 | d4 d d c | b g a b | c2 c4 r4 |
  \bar "|."
}

harmony = \chordmode {
  s4 | c1 | f1 | c1 | c1 | c1 | f1 | g1:7 | c1 | c1 | g1:7 | g1:7 | c1 |
}

words = \lyricmode {
  There was a far -- mer had a dog
  and Bin -- go was his name -- o.
  B I N G O, B I N G O, B I N G O,
  and Bin -- go was his name -- o.
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
% Melody: traditional; checked against the mfiles lead sheet.
% ------------------------------------------------------------------
