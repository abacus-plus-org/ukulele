\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% I've Been Working on the Railroad - Traditional ('Levee Song', Carmina Princetonia, 1894), toddler style (low-G, linear GCEA).
% RIGHTS: public for what is entered. The Railroad chorus ('I been workin' on de railroad ... Dinah, blow yo' horn') was published as 'Levee Song' in Carmina Princetonia (Martin R. Dennis & Co., 1894), traditional/anonymous, and recorded before 1931. NOT entered, because they cannot be shown to be before 1931: 'Dinah, won't you blow' (first found in print around 1950, Landeck, Songs to Grow On) and the kitchen words 'Someone's in the kitchen with Dinah' as sung today (tied to a 1944 popular song; the older 'Old Joe' words used 'house'). The scores read are modern arrangements; only the melody and the standard I-IV-V chords were taken.
% Key of F, 4/4, chords F, Bb, C and G7. One pass of the 1894 'Levee Song' chorus (16 bars, 4 bars per line, one page): 'I've been working on the railroad' through 'Dinah, blow your horn'. Range C4 to Bb4; the lowest melody note is C4 (MIDI 60), above G3. The 'Dinah, won't you blow' and 'Someone's in the kitchen with Dinah' sections of the modern combined song are left out (see notes).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 108) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional ('Levee Song', Carmina Princetonia, 1894).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "I've Been Working on the Railroad" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Folk & Americana"
  language      = "English"
  era           = "Traditional"
  songkey       = "F"
  timesig       = "4/4"
  occasion      = "Singalong; Campfire"
  technique     = "Strumming; More Open Chords; Moderate Tempo; Barre Chords"
  versions      = "Letter Sheet; Audio; Letter Tab Sheet; Letter Tab + Chord Sheet"
  rights        = "Public Domain"
  tags          = "Folk & Americana; English; Traditional; Strumming; More Open Chords; Moderate Tempo; Barre Chords; F; 4/4; Singalong; Campfire; Public Domain"
  difficulty    = "3.3"
  difficultyraw = "5.38"
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
  \key f \major
  \time 4/4
}

melody = \relative c' {
  f4. c8 f8 c8 f8 g8 | a2 f2 | bf4. bf8 f4 g4 | a2. r4 |
  \break
  f4. c8 f8 c8 f8 g8 | a2 f4 a8 a8 | a4 g4 g4 a4 | g2. r4 |
  \break
  g4. g8 fs8 g8 a8 g8 | f2 c2 | bf'4 bf8 bf8 f8 f8 g8 g8 | a2. r4 |
  \break
  d,4. e8 f8 e8 f8 d8 | c2 f2 | a4. bf8 a4 g4 | f2. r4 \bar "|."
}

harmony = \chordmode {
  f1 | f1 | bf1 | f1 | f1 | f1 | g1:7 | c1 | c1 | f1 | bf1 | f1 | bf1 | f1 | c1 | f1
}

words = \lyricmode {
  I've been work -- ing on the rail -- road, all the live -- long day.
  I've been work -- ing on the rail -- road, just to pass the time a -- way.
  Can't you hear the whis -- tle blow -- ing, rise up so ear -- ly in the morn;
  can't you hear the cap -- tain shout -- ing, Di -- nah, blow your horn!
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
% Melody: traditional; checked against standard American lead sheets. American words.
% ------------------------------------------------------------------
