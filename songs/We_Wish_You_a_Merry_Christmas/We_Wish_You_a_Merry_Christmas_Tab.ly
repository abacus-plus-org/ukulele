\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% We Wish You a Merry Christmas - Traditional English (West Country carol, Roud 230), toddler style (low-G, linear GCEA).
% RIGHTS: public, with one caveat. The carol is traditional (West Country, Roud 230; the greeting itself is recorded from the 1700s). The tune used here, however, is first found in print in Arthur Warrell's 1935 Oxford University Press arrangement (Warrell died 1939), and IMSLP notes the arrangement is probably still protected in the United States (95 years from publication, to the end of 2030). The melody and the four verses (Village Carols, Roud 230 wording) are entered as the traditional tune and text; Warrell's harmonization and his 'I wish you' lyric wording are NOT used (chords are original, chosen from the common F-major changes).
% Key of F, 3/4, chords F, Gm, G7, C, C7 and Dm (all open shapes). One pickup beat, then three pages: page 1 = 'We wish you a merry Christmas' + 'Good tidings' (16 bars), page 2 = the 'figgy pudding' and 'We won't go' verses (16 bars), page 3 = the closing 'We wish you a merry Christmas' (8 bars). The pickup of each section sits at the end of the bar before it, so the first word of the next section ('Oh', 'We') closes the previous page. Range C4 to C5.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 140) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional English (West Country carol, Roud 230).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "We Wish You a Merry Christmas" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Christmas"
  language      = "English"
  era           = "Traditional"
  songkey       = "F"
  timesig       = "3/4"
  occasion      = "Christmas; Singalong; Kids"
  technique     = "Strumming; 7th & Minor Chords; Waltz; Fast Tempo"
  versions      = "Letter Sheet; Audio; Letter Tab Sheet; Letter Tab + Chord Sheet"
  rights        = "Public Domain (check)"
  tags          = "Christmas; English; Traditional; Strumming; 7th & Minor Chords; Waltz; Fast Tempo; F; 3/4; Singalong; Kids; Public Domain (check)"
  difficulty    = "3.5"
  difficultyraw = "5.62"
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
  \time 3/4
  \partial 4
}

melody = \relative c' {
  c4 | f4 f8 g8 f8 e8 | d4 d4 d4 | g4 g8 a8 g8 f8 | e4 c4 c4 |
  \break
  a'4 a8 bf8 a8 g8 | f4 d4 c8 c8 | d4 g4 e4 | f2 c4 |
  \break
  f4 f4 f4 | e2 e4 | f4 e4 d4 | c2 g'4 |
  \break
  a4 g4 f4 | c'4 c,4 c8 c8 | d4 g4 e4 | f2 c4 |
  \pageBreak
  f4 f8 g8 f8 e8 | d4 d4 d4 | g4 g8 a8 g8 f8 | e4 c4 c4 |
  \break
  a'4 a8 bf8 a8 g8 | f4 d4 c8 c8 | d4 g4 e4 | f2 c4 |
  \break
  f4 f8 g8 f8 e8 | d4 d4 d4 | g4 g8 a8 g8 f8 | e4 c4 c4 |
  \break
  a'4 a8 bf8 a8 g8 | f4 d4 c8 c8 | d4 g4 e4 | f2 c4 |
  \pageBreak
  f4 f8 g8 f8 e8 | d4 d4 d4 | g4 g8 a8 g8 f8 | e4 c4 c4 |
  \break
  a'4 a8 bf8 a8 g8 | f4 d4 c8 c8 | d4 g4 e4 | f2.  \bar "|."
}

harmony = \chordmode {
  s4 | f2. | g2.:m | g2.:7 | c2. | d2.:m | d2:m f4 | g2:m c4:7 | f2. | f2. | c2. | g2.:7 | c2. | f2. | f2. | g2:m c4:7 | f2. | f2. | g2.:m | g2.:7 | c2. | d2.:m | d2:m f4 | g2:m c4:7 | f2. | f2. | g2.:m | g2.:7 | c2. | d2.:m | d2:m f4 | g2:m c4:7 | f2. | f2. | g2.:m | g2.:7 | c2. | d2.:m | d2:m f4 | g2:m c4:7 | f2. |
}

words = \lyricmode {
  We wish you a mer -- ry Christ -- mas we wish you a mer -- ry Christ -- mas we
  wish you a mer -- ry Christ -- mas and a hap -- py New Year, Good
  ti -- dings we bring to you and your kin, good
  ti -- dings for Christ -- mas and a hap -- py New Year, Oh,
  bring us a fig -- gy pud -- ding, oh bring us a fig -- gy pud -- ding, oh
  bring us a fig -- gy pud -- ding and a cup of good cheer, We
  won't go un -- til we get some, we won't go un -- til we get some, we
  won't go un -- til we get some, so bring some right here _ We
  wish you a mer -- ry Christ -- mas we wish you a mer -- ry Christ -- mas we
  wish you a mer -- ry Christ -- mas and a hap -- py New Year
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
% Melody: traditional West Country carol; checked against the Coughlin G and F editions and the Irish Fest ABC.
% ------------------------------------------------------------------
