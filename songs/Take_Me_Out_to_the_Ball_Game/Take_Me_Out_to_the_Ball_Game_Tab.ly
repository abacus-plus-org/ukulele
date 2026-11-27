\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"
\storePredefinedDiagram #default-fret-table \chordmode { d:7 } #ukulele-tuning "2-1;o;2-2;o;"  % D7 = 2-0-2-0 (house shape)

% ------------------------------------------------------------------
% Take Me Out to the Ball Game - Albert Von Tilzer (music) and Jack Norworth (words), 1908, toddler style (low-G, linear GCEA).
% RIGHTS: public domain in the US. 1908 music and words (Von Tilzer, Norworth); the Library of Congress Copyright blog (March 2026) states the original and the revised (1927) lyrics are in the public domain. The piano arrangement's accompaniment is not used, only the melody and standard chords.
% Key of G, 3/4, chords G, C, D7, Am, E and A7. Range G3 to A4; lowest note G3 (MIDI 55). Verse 1 (Katie Casey, 1908) then the chorus. Chart is 32 bars of verse and 32 of chorus; verse 2 is not included.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 110) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Albert Von Tilzer (music) and Jack Norworth (words), 1908.
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Take Me Out to the Ball Game" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Standards & Jazz"
  language      = "English"
  era           = "1900s–1940s"
  songkey       = "G"
  timesig       = "3/4"
  occasion      = "Singalong"
  technique     = "Strumming; 7th & Minor Chords; Waltz; Moderate Tempo"
  versions      = "Letter Sheet; Audio; Letter Tab Sheet; Letter Tab + Chord Sheet"
  rights        = "Public Domain"
  tags          = "Standards & Jazz; English; 1900s–1940s; Strumming; 7th & Minor Chords; Waltz; Moderate Tempo; G; 3/4; Singalong; Public Domain"
  difficulty    = "2.7"
  difficultyraw = "4.60"
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
  \time 3/4
}

melody = \relative c' {
  d2 d4 | d4 c4 b4 | d2 d4 | d2. |
  \break
  e2 e4 | e4 d4 c4 | e2 e4 | e2. |
  \break
  fs2 fs4 | fs4 g4 a4 | e2 e4 | e4 fs4 a4 |
  \break
  e2.~ | e4 fs4 a4 | d,2.~ | d2 r4 |
  \break
  d2 d4 | d4 c4 b4 | d2 d4 | d2. |
  \break
  e2 e4 | e4 d4 c4 | e2 e4 | e2 d4 |
  \break
  cs2 cs4 | cs4 d4 e4 | fs2 d4 | a2 a4 |
  \break
  b4 cs4 d4 | e2 fs4 | d2.~ | d2 r4 |
  \break
  g,2 g'4 | e4 d4 b4 | d2. | a2. |
  \break
  g2 g'4 | e4 d4 b4 | d2.~ | d2 r4 |
  \break
  e4 ds4 e4 | b4 c4 d4 | e2 c4 | a2. |
  \break
  e'2 e4 | e4 fs4 g4 | a4 fs4 e4 | d4 b4 a4 |
  \break
  g2 g'4 | e4 d4 b4 | d2. | a2 a4 |
  \break
  g2 a4 | b4 c4 d4 | e2.~ | e4 e4 fs4 |
  \break
  g2. | g2. | g4 fs4 e4 | d4 cs4 d4 |
  \break
  e2. | fs2. | g2.~ | g2 r4 \bar "|."
}

harmony = \chordmode {
  g2. | g2. | g2. | g2. | c2. | c2. | c2. | c2. | d2.:7 | d2.:7 | c2. | d2.:7 | g2. | d2.:7 | g2. | g2. | g2. | g2. | g2. | g2. | c2. | c2. | c2. | c2. | a2.:7 | a2.:7 | d2.:7 | d2.:7 | g2. | d2.:7 | g2. | g2. | g2. | g2. | d2. | d2.:7 | g2. | g2. | d2. | d2.:7 | e2. | e2. | a2.:m | a2.:m | a2.:7 | a2.:7 | d2. | d2.:7 | g2. | g2. | d2. | d2. | g2. | g2.:7 | c2. | c2. | c2. | a2.:7 | g2. | g2. | a2.:7 | d2.:7 | g2. | g2.
}

words = \lyricmode {
  Ka -- tie Ca -- sey was base -- ball mad, Had the fev -- er and had it bad; Just to root for the home town crew, ev -- 'ry sou Ka -- tie blew. On a Sat -- ur -- day, her young beau called to see if she'd like to go, To see a show but Miss Kate said no, I'll tell you what you can do: Take me out to the ball game, Take me out with the crowd. Buy me some pea -- nuts and crack -- er jack, I don't care if I nev -- er get back, Let me root, root, root for the home team, If they don't win it's a shame. For it's one, two, three strikes, you're out, At the old ball game.
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
% Melody: Von Tilzer / Norworth, 1908; checked against early prints and standard lead sheets. Standard chorus.
% ------------------------------------------------------------------
