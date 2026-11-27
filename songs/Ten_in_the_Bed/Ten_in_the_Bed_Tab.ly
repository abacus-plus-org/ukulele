\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Ten in the Bed - Traditional, toddler style (low-G, linear GCEA).
% RIGHTS: traditional / public. 'Ten in the Bed' (Roll Over) is an anonymous children's counting song: ItsyBitsyKids and mfiles list it as Traditional, Music You Can Read as an American folk song, and no author or copyright claimant turns up. The earliest printed children's version is Sing Out! 11:3 (1961, 'Roll Over'), after a 1958-59 Folkways recording, so public-domain status rests on its being traditional rather than on a pre-1931 print. The 1988 Penny Dale picture book is a separate adaptation and is not used. Modern sheets were read only to check the notes.
% Key of C, 4/4, chords C and G. The six-bar tune is printed once (verse 1, ten in the bed) inside a repeat sign, with the last verse (one in the bed, Good night) after it; verses 2-9 are listed as text after the music. The MIDI and audio play the whole countdown. Range G3 to G4; lowest note G3 (MIDI 55).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 93) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional.
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Ten in the Bed" \vspace #2.4 }
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
  \repeat volta 9 {
  \partial 4 g8 g8 | c4 c8 c8 c4 g8 g8 | c8 c8 c4 c4 g'4 | e4 c2 g'4 |
  \break
  e4 c2 g8 g8 | c4 c4 c8 c8 g4 | c4 c4 c4
  }
  \break
  \partial 4 g8 g8 | c4 c8 c8 c4 g8 g8 | c8 c8 c4 c4 g'4 | c,1 \bar "|."
}

harmony = \chordmode {
  \repeat volta 9 { g4 c2. g4 c2. g4 c2. g4 c2. g4 c2. g4 c2. } g4 c2. g4 c2. g4 c1
}

words = \lyricmode {
  There were ten in the bed and the lit -- tle one said, Roll o -- ver, roll o -- ver! So they all rolled o -- ver and one fell out.
  There was one in the bed and the lit -- tle one said, Good night!
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
% Melody: traditional; checked against mfiles, the BBC/Wikipedia wording, and the ItsyBitsyKids sheet. Ends with "Good night!"
% ------------------------------------------------------------------
\markup \column {
  \vspace #0.8
  \line { \bold "Verses 2–9." "Sing the music above again for each verse (the repeat sign)," }
  \line { "changing the number each time. After verse 9 (two in the bed), sing the last verse," }
  \line { "which is the music printed at the bottom of page 1." }
  \vspace #0.8
  \column { \line { \bold "2." "There were nine in the bed and the little one said," } \line { \hspace #2.5 "“Roll over, roll over!”" } \line { \hspace #2.5 "So they all rolled over and one fell out." } \vspace #0.6 }
  \column { \line { \bold "3." "There were eight in the bed and the little one said," } \line { \hspace #2.5 "“Roll over, roll over!”" } \line { \hspace #2.5 "So they all rolled over and one fell out." } \vspace #0.6 }
  \column { \line { \bold "4." "There were seven in the bed and the little one said," } \line { \hspace #2.5 "“Roll over, roll over!”" } \line { \hspace #2.5 "So they all rolled over and one fell out." } \vspace #0.6 }
  \column { \line { \bold "5." "There were six in the bed and the little one said," } \line { \hspace #2.5 "“Roll over, roll over!”" } \line { \hspace #2.5 "So they all rolled over and one fell out." } \vspace #0.6 }
  \column { \line { \bold "6." "There were five in the bed and the little one said," } \line { \hspace #2.5 "“Roll over, roll over!”" } \line { \hspace #2.5 "So they all rolled over and one fell out." } \vspace #0.6 }
  \column { \line { \bold "7." "There were four in the bed and the little one said," } \line { \hspace #2.5 "“Roll over, roll over!”" } \line { \hspace #2.5 "So they all rolled over and one fell out." } \vspace #0.6 }
  \column { \line { \bold "8." "There were three in the bed and the little one said," } \line { \hspace #2.5 "“Roll over, roll over!”" } \line { \hspace #2.5 "So they all rolled over and one fell out." } \vspace #0.6 }
  \column { \line { \bold "9." "There were two in the bed and the little one said," } \line { \hspace #2.5 "“Roll over, roll over!”" } \line { \hspace #2.5 "So they all rolled over and one fell out." } \vspace #0.6 }
}
