\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"
\storePredefinedDiagram #default-fret-table \chordmode { d:7 } #ukulele-tuning "2-1;o;2-2;o;"  % D7 = 2-0-2-0 (house shape)

% ------------------------------------------------------------------
% Head, Shoulders, Knees and Toes - Traditional (tune: William H. Hills, 1883), toddler style (low-G, linear GCEA).
% RIGHTS: public (traditional children's action song; the tune is 'There Is a Tavern in the Town', William H. Hills, 1883, public domain). Full lyrics entered.
% Key of G, 4/4, chords G, G7, C and D7. The song is sung to the tune of 'There Is a Tavern in the Town'. The low-G range is G3 to A4. The last 'knees and toes' stays up on the octave (G4), as the song is commonly sung, instead of dropping to G3 as in the 1883 tune.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 100) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (tune: William H. Hills, 1883).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Head, Shoulders, Knees and Toes" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Children's Song"
  language      = "English"
  era           = "Traditional"
  songkey       = "G"
  timesig       = "4/4"
  occasion      = "Kids; Action Song"
  technique     = "Strumming; More Open Chords; Moderate Tempo"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Children's Song; English; Traditional; Strumming; More Open Chords; Moderate Tempo; G; 4/4; Kids; Action Song; Public Domain"
  difficulty    = "1.8"
  difficultyraw = "3.40"
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
  \key g \major
  \time 4/4
}

melody = \relative c' {
  d2 e8 d cs d | b4 d8 d d2 |
  \break
  d2 e8 d cs d | a4 d8 d d c b a |
  \break
  g4 b d g | a8 g fs g e2 |
  \break
  fs2 fs8 d e fs | g4 g8 g g2 \bar "|."
}

harmony = \chordmode {
  g1 | g1 | g1 | d1:7 | g2 g2:7 | c1 | d1:7 | g1 |
}

words = \lyricmode {
  Head, shoul -- ders, knees and toes, knees and toes,
  Head, shoul -- ders, knees and toes, knees and toes, _ and _
  eyes and ears and mouth _ and _ nose.
  Head, shoul -- ders, knees and toes, knees and toes.
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
% Melody: traditional children's song (the 'London Bridge' family); checked against commonly printed lead sheets.
% ------------------------------------------------------------------
