\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Down by the Bay - Traditional (camp song; printed in the UK in 1918), toddler style (low-G, linear GCEA).
% RIGHTS: public. The tune is traditional (it is also a Greek folk song, and the sea/bay and watermelon words with the 'cow with a green eyebrow' rhyme were printed in the UK in 1918 and 1930); Raffi's 1976 recording is credited 'Traditional'. Raffi has said he wrote new rhymes (goose/moose, whale/polka-dot tail, fly/tie, bear/hair, llamas/pajamas), and those cannot be dated before 1976, so only the refrain and the documented 1918/1930/1969 'cow with a green eyebrow' rhyme are used here. The sheets read were used for pitches only.
% Key of C, 4/4, 3-beat pick-up, chords C, G7 and F. One verse, 17 bars: refrain, the 'cow with a green eyebrow' rhyme (pre-1930 text), then 'Down by the bay'.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 104) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (camp song; printed in the UK in 1918).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Down by the Bay" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Children's Song"
  language      = "English"
  era           = "Traditional"
  songkey       = "C"
  timesig       = "4/4"
  occasion      = "Kids; Campfire; Singalong"
  technique     = "Strumming; Basic Open Chords; Moderate Tempo"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Children's Song; English; Traditional; Strumming; Basic Open Chords; Moderate Tempo; C; 4/4; Kids; Campfire; Singalong; Public Domain"
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
  \partial 2.
}

melody = \relative c' {
  g4 a g | c1 | r4 g8 g a a g g | b1 |
  \break
  r4 g a g | b1 | r4 g a b | c1 |
  \break
  r4 c b bf | a1 | r4 c b8 b a4 | g1 | r2 r4 c8 d |
  \break
  e8 ds e ds e4 c8 d | e8 ds e( ds e2) | f4 e2 d4 | c4 g a g | c1 |
  \bar "|."
}

harmony = \chordmode {
  s2. | c1 | c1 | g1:7 | g1:7 | g1:7 | g1:7 | c1 | c1 | f1 | f1 | c1 | c1 | c1 | c1 | g1:7 | c1 | c1 |
}

words = \lyricmode {
  Down by the bay, where the wa -- ter -- me -- lons grow,
  Back to my home I dare not go,
  For if I do my moth -- er will say,
  Did you ev -- er see a cow with a green eye -- brow,
  down by the bay? Down by the bay.
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
% Melody: traditional; checked against commonly printed children's lead sheets.
% ------------------------------------------------------------------
