\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Up on the Housetop - Benjamin R. Hanby (1864; first published 1866 as 'Santa Claus'), toddler style (low-G, linear GCEA).
% RIGHTS: public. Benjamin R. Hanby (1833-1867) wrote the song about 1864; it was first published in October 1866 (Our Song Birds / Chapel Gems for Sunday Schools, Root & Cady, Chicago), so the music and Hanby's words are in the public domain in the US and everywhere (author died 1867; published before 1931). The three verses used are the standard American text printed in The Golden Book of Favorite Songs (c. 1915-1923), also pre-1931. Hanby's other original 1866 verses (Lazy Jim, Rover etc., partly by 'Paulina') are not used. The sheet adds no modern arrangement text.
% Key of C, 4/4, chords C, F, G, G7 (all open shapes), no pickup. Three pages, one verse each (8 bars) followed by the chorus (8 bars), 16 bars per page. The word 'top' (verse) and 'go' (chorus) are held over two notes (shown with _). Range C4 to A4.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 160) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Benjamin R. Hanby (1864; first published 1866 as 'Santa Claus').
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Up on the Housetop" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Christmas"
  language      = "English"
  era           = "1800s"
  songkey       = "C"
  timesig       = "4/4"
  occasion      = "Christmas; Kids"
  technique     = "Strumming; More Open Chords; Fast Tempo"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Christmas; English; 1800s; Strumming; More Open Chords; Fast Tempo; C; 4/4; Kids; Public Domain"
  difficulty    = "3.1"
  difficultyraw = "5.08"
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
  \key c \major
  \time 4/4
}

melody = \relative c' {
  g'4 g8 a8 g4 e8 d8 | c4 e4 g2 | a4 a4 g4 e4 | d4 g4 g2 |
  \break
  g4 g8 a8 g4 e8 d8 | c4 e4 g2 | a4 a8 a8 g8 g8 e4 | d4 g4 c,2 |
  \break
  f4 f4 a2 | g4 g8 g8 e2 | d4 f4 f2 | e4 g8 g8 c,4 e4 |
  \break
  g4 g8 a8 g4 e4 | f4 g4 a4 r4 | g4 g8 a8 g8 g8 e4 | d4 g4 c,4 r4 |
  \pageBreak
  g'4 g8 a8 g4 e8 d8 | c4 e4 g2 | a4 a4 g4 e4 | d4 g4 g2 |
  \break
  g4 g8 a8 g4 e8 d8 | c4 e4 g2 | a4 a8 a8 g8 g8 e4 | d4 g4 c,2 |
  \break
  f4 f4 a2 | g4 g8 g8 e2 | d4 f4 f2 | e4 g8 g8 c,4 e4 |
  \break
  g4 g8 a8 g4 e4 | f4 g4 a4 r4 | g4 g8 a8 g8 g8 e4 | d4 g4 c,4 r4 |
  \pageBreak
  g'4 g8 a8 g4 e8 d8 | c4 e4 g2 | a4 a4 g4 e4 | d4 g4 g2 |
  \break
  g4 g8 a8 g4 e8 d8 | c4 e4 g2 | a4 a8 a8 g8 g8 e4 | d4 g4 c,2 |
  \break
  f4 f4 a2 | g4 g8 g8 e2 | d4 f4 f2 | e4 g8 g8 c,4 e4 |
  \break
  g4 g8 a8 g4 e4 | f4 g4 a4 r4 | g4 g8 a8 g8 g8 e4 | d4 g4 c,4 r4  \bar "|."
}

harmony = \chordmode {
  c1 | c1 | f2 c2 | g1 | c1 | c1 | f2 c2 | g2 c2 | f1 | c1 | g1:7 | c1 | c1 | f1 | c1 | g2:7 c2 | c1 | c1 | f2 c2 | g1 | c1 | c1 | f2 c2 | g2 c2 | f1 | c1 | g1:7 | c1 | c1 | f1 | c1 | g2:7 c2 | c1 | c1 | f2 c2 | g1 | c1 | c1 | f2 c2 | g2 c2 | f1 | c1 | g1:7 | c1 | c1 | f1 | c1 | g2:7 c2 |
}

words = \lyricmode {
  Up on the house -- top _ rein -- deer pause, Out jumps good old San -- ta Claus;
  Down thro' the chim -- ney with lots of toys, All for the lit -- tle ones, Christ -- mas joys.
  Ho, ho, ho! Who would -- n't go? Ho, ho, ho! Who would -- n't go _
  Up on the house -- top, click, click, click, Down thro' the chim -- ney with good Saint Nick.
  First comes the stock -- ing of lit -- tle Nell; Oh, dear San -- ta, fill it well;
  Give her a dol -- ly that laughs and cries, One that will o -- pen and shut her eyes.
  Ho, ho, ho! Who would -- n't go? Ho, ho, ho! Who would -- n't go _
  Up on the house -- top, click, click, click, Down thro' the chim -- ney with good Saint Nick.
  Next comes the stock -- ing of lit -- tle Will; Oh, just see what a glorious fill!
  Here is a ham -- mer and lots of tacks, Al -- so a ball and a whip that cracks.
  Ho, ho, ho! Who would -- n't go? Ho, ho, ho! Who would -- n't go _
  Up on the house -- top, click, click, click, Down thro' the chim -- ney with good Saint Nick.
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
% Melody: Hanby; checked against the Coughlin C and G editions, the Golden Book, and the CanDo sheet.
% ------------------------------------------------------------------
