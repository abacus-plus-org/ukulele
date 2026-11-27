\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Five Little Ducks - Traditional, toddler style (low-G, linear GCEA).
% RIGHTS: traditional / public. 'Five Little Ducks' has no named author on the Music For All Library (Diller-Quaile) score, the Nancy Music sheet ('traditional') or Raffi's own lyric sheet ('Traditional'), and the Diller-Quaile page calls it an American folksong. No print before 1931 was found; the earliest recordings found are Patsy Biscoe (1978) and Raffi (1982). Raffi and Whiteley's 'traditional arrangement' carries a Homeland Publishing copyright, which covers their arrangement, not the traditional song. Wording and tune follow the Diller-Quaile score only; no modern arrangement is copied.
% Key of C, 4/4, chords C, F and G. The eight-bar tune is printed once (verse 1, five ducks) inside a repeat sign, with the last verse (all five come back) after it; verses 2-5 are listed as text. The MIDI and audio play the whole countdown. Range C4 to C5; lowest note C4 (MIDI 60).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 103) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional.
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Five Little Ducks" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Children's Song"
  language      = "English"
  era           = "Traditional"
  songkey       = "C"
  timesig       = "4/4"
  occasion      = "Kids; Counting & Learning"
  technique     = "Strumming; Basic Open Chords; Moderate Tempo; String Skipping"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain (check)"
  tags          = "Children's Song; English; Traditional; Strumming; Basic Open Chords; Moderate Tempo; String Skipping; C; 4/4; Kids; Counting & Learning; Public Domain (check)"
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
}

melody = \relative c' {
  \repeat volta 5 {
  g'4 e8 e8 c4 c'4 | b4 a4 g2 | g4 c,8 c8 f4 e4 | e4 d4 d4 r8 f8 |
  \break
  g8 g8 e4 c4 c'4 | b4 a4 g4. \fermata g8 | c4 c,4 f4 e8 f8 | e4 d4 c2
  }
  \break
  g'4 e8 e8 c4 c'4 | b4 a4 g2 | g4 c,8 c8 f4 e4 | e4 d4 d4 r8 f8 |
  \break
  g8 g8 e4 c4 c'4 | b4 a4 g4. \fermata g8 | c4 c,8 c8 f4 e8 f8 | e4 d4 c2 \bar "|."
}

harmony = \chordmode {
  \repeat volta 5 { c1 | f2 c2 | c2 f2 | g1 | c1 | f2 c2 | c2 f2 | g2 c2 } c1 | f2 c2 | c2 f2 | g1 | c1 | f2 c2 | c2 f2 | g2 c2
}

words = \lyricmode {
  Five lit -- tle ducks went out one day. O -- ver the hills and far a -- way. The moth -- er duck said, “Quack! Quack! Quack! Quack!” But on -- ly four lit -- tle ducks came back.
  Sad moth -- er duck went out one day. O -- ver the hills and far a -- way. The moth -- er duck said, “Quack! Quack! Quack! Quack!” And all of the five lit -- tle ducks came back.
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
% Melody: the Raffi / Diller-Quaile tune; checked against the Diller-Quaile score, written in C.
% ------------------------------------------------------------------
\markup \column {
  \vspace #0.8
  \line { \bold "Verses 2–5." "Sing the music above again for each verse (the repeat sign)," }
  \line { "changing the number each time. After verse 5 (one little duck)," }
  \line { "sing the last verse, which is the music printed at the bottom of page 1." }
  \vspace #0.8
  \column { \line { \bold "2." "Four little ducks went out one day," } \line { \hspace #2.5 "Over the hills and far away." } \line { \hspace #2.5 "The mother duck said, “Quack! Quack! Quack! Quack!”" } \line { \hspace #2.5 "But only three little ducks came back." } \vspace #0.6 }
  \column { \line { \bold "3." "Three little ducks went out one day," } \line { \hspace #2.5 "Over the hills and far away." } \line { \hspace #2.5 "The mother duck said, “Quack! Quack! Quack! Quack!”" } \line { \hspace #2.5 "But only two little ducks came back." } \vspace #0.6 }
  \column { \line { \bold "4." "Two little ducks went out one day," } \line { \hspace #2.5 "Over the hills and far away." } \line { \hspace #2.5 "The mother duck said, “Quack! Quack! Quack! Quack!”" } \line { \hspace #2.5 "But only one little duck came back." } \vspace #0.6 }
  \column { \line { \bold "5." "One little duck went out one day," } \line { \hspace #2.5 "Over the hills and far away." } \line { \hspace #2.5 "The mother duck said, “Quack! Quack! Quack! Quack!”" } \line { \hspace #2.5 "But none of the five little ducks came back." } \vspace #0.6 }
}
