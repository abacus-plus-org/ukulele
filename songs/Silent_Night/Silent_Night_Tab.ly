\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"
\storePredefinedDiagram #default-fret-table \chordmode { d:7 } #ukulele-tuning "2-1;o;2-2;o;"  % D7 = 2-0-2-0 (house shape)

% ------------------------------------------------------------------
% Silent Night - Music: Franz Xaver Gruber (1818); words: Joseph Mohr (1816/1818), English by John Freeman Young (1859), toddler style (low-G, linear GCEA).
% RIGHTS: public. Music: Franz Xaver Gruber (1787-1863), composed 1818. Words: Joseph Mohr (1792-1848), 1816/1818. English text: stanzas 1-3 of the standard American version, translated by John Freeman Young (1820-1885) and first published in his pamphlet Carols for Christmas Tide (New York: Daniel Dana Jr., 1859), reprinted in the Sunday-School Service and Tune Book (1863). All three are far older than 1931 and their authors died before 1890, so the text is in the public domain in the US and everywhere else. Not included: the 'Wondrous star, lend thy light' stanza. Its origin could not be pinned to a dated publication here: the Army and Navy Hymnal (1920) prints a related stanza by Jane Montgomery Campbell (d. 1878) that ends 'Jesus our Saviour is here', while the common modern ending 'Christ the Savior is born' is anonymous and undated, and Hymnary lists the 2 and 4 stanza translators only as 'Anonymous'. Coughlin's arrangement and chords are not used beyond the shared tune and the plain chord names.
% Key of G, 3/4, chords G, C, D7 and D (all open shapes), no pickup. Three pages, one verse each, 24 bars per page (four 6-bar lines); the last two bars are one tied low G. 'Si-lent', 'vir-gin', 'Glo-ries stream from', 'hosts sing', 'redeem-ing' and the repeated 'Sleep' / 'Christ' / 'Jesus' hold one syllable over two notes (shown with _). Range G3 to C5.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 72) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Music: Franz Xaver Gruber (1818); words: Joseph Mohr (1816/1818), English by John Freeman Young (1859).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Silent Night" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Christmas; Hymn & Spiritual"
  language      = "English"
  era           = "1800s"
  songkey       = "G"
  timesig       = "3/4"
  occasion      = "Christmas; Lullaby & Bedtime; Singalong"
  technique     = "Strumming; More Open Chords; Waltz"
  versions      = "Letter Sheet; Audio; Letter Staff Sheet; Letter Tab Sheet; Letter Tab + Chord Sheet; Alternate Versions"
  rights        = "Public Domain"
  tags          = "Christmas; Hymn & Spiritual; English; 1800s; Strumming; More Open Chords; Waltz; G; 3/4; Lullaby & Bedtime; Singalong; Public Domain"
  difficulty    = "1.7"
  difficultyraw = "3.23"
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
  d4. e8 d4 | b2. | d4. e8 d4 | b2. | a'2 a4 | fs2. |
  \break
  g2 g4 | d2. | e2 e4 | g4. fs8 e4 | d4. e8 d4 | b2. |
  \break
  e2 e4 | g4. fs8 e4 | d4. e8 d4 | b2. | a'2 a4 | c4. a8 fs4 |
  \break
  g2. | b2. | g4 d4 b4 | d4. c8 a4 | g2.~ | g2. |
  \pageBreak
  d'4. e8 d4 | b2. | d4. e8 d4 | b2. | a'2 a4 | fs2. |
  \break
  g2 g4 | d2. | e2 e4 | g4. fs8 e4 | d4. e8 d4 | b2. |
  \break
  e2 e4 | g4. fs8 e4 | d4. e8 d4 | b2. | a'2 a4 | c4. a8 fs4 |
  \break
  g2. | b2. | g4 d4 b4 | d4. c8 a4 | g2.~ | g2. |
  \pageBreak
  d'4. e8 d4 | b2. | d4. e8 d4 | b2. | a'2 a4 | fs2. |
  \break
  g2 g4 | d2. | e2 e4 | g4. fs8 e4 | d4. e8 d4 | b2. |
  \break
  e2 e4 | g4. fs8 e4 | d4. e8 d4 | b2. | a'2 a4 | c4. a8 fs4 |
  \break
  g2. | b2. | g4 d4 b4 | d4. c8 a4 | g2.~ | g2.  \bar "|."
}

harmony = \chordmode {
  g2. | g2. | g2. | g2. | d2.:7 | d2.:7 | g2. | g2. | c2. | c2. | g2. | g2. | c2. | c2. | g2. | g2. | d2.:7 | d2. | g2. | g2. | g2. | d2.:7 | g2. | g2. | g2. | g2. | g2. | g2. | d2.:7 | d2.:7 | g2. | g2. | c2. | c2. | g2. | g2. | c2. | c2. | g2. | g2. | d2.:7 | d2. | g2. | g2. | g2. | d2.:7 | g2. | g2. | g2. | g2. | g2. | g2. | d2.:7 | d2.:7 | g2. | g2. | c2. | c2. | g2. | g2. | c2. | c2. | g2. | g2. | d2.:7 | d2. | g2. | g2. | g2. | d2.:7 | g2. | g2. |
}

words = \lyricmode {
  Si -- _ lent night, ho -- _ ly night,
  All is calm, all is bright,
  Round yon vir -- _ gin mo -- ther and Child,
  Ho -- ly In -- fant so ten -- der and mild,
  Sleep in hea -- ven -- ly peace, _ Sleep _ in hea -- ven -- ly peace.
  Si -- _ lent night, ho -- _ ly night,
  Shep -- herds quake at the sight;
  Glo -- ries stream _ from hea -- ven a -- far,
  Heaven -- ly hosts _ sing Al -- le -- lu -- ia!
  Christ the Sa -- vior is born, _ Christ _ the Sa -- vior is born!
  Si -- _ lent night, ho -- _ ly night,
  Son of God, love's pure light;
  Ra -- di -- ant beams from Thy ho -- ly face
  With the dawn of re -- deem _ ing grace,
  Je -- sus, Lord, at Thy birth, _ Je _ sus, Lord, at Thy birth.
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
    #(layout-set-staff-size 17.28)
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
% Melody: Gruber, 1818; words by Mohr, English by Young, 1859. Checked against the Coughlin editions and the Open Hymnal ABC. American spelling 'Savior'. Young's first three stanzas.
% ------------------------------------------------------------------
