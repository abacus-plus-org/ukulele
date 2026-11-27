\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"
\storePredefinedDiagram #default-fret-table \chordmode { d:7 } #ukulele-tuning "2-1;o;2-2;o;"  % D7 = 2-0-2-0 (house shape)

% ------------------------------------------------------------------
% Over the River and Through the Wood - Traditional (19th-century tune; words by Lydia Maria Child, 1844), toddler style (low-G, linear GCEA).
% RIGHTS: public. Words: Lydia Maria Child, 'The New-England Boy's Song about Thanksgiving Day', 1844 (public domain; she died in 1880); the sung changes 'Grandmother's house' for her 'Grandfather's house' and a few trimmed lines are not copyrightable. Tune: anonymous/traditional, 19th century (usually dated to the 1870s; a 1897 credit to Rev. Edwin Trotter is repeated in secondary sources but no pre-1931 score showing it was found, and either way it is long public domain); library song indexes list the composer as Anonymous/Unknown. The scores read for the notes (Dorfer, MusicEdMagic, Nancy Music, Music-for-Music-Teachers) are modern arrangements; only the traditional tune was taken from them, not their harmonies or layout.
% Key of G, 6/8, chords G, C, D and D7. 16 bars per verse (4 lines of 4 bars), 3 verses (6 stanzas of Lydia Maria Child's poem) with no forced page breaks. The low-G range is G3 to G4; no pickup. Words use 'Grandmother's house' and 'wood'.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4. = 60) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (19th-century tune; words by Lydia Maria Child, 1844).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Over the River and Through the Wood" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Holiday & Celebration; Children's Song"
  language      = "English"
  era           = "1800s"
  songkey       = "G"
  timesig       = "6/8"
  occasion      = "Thanksgiving; Kids"
  technique     = "Strumming; More Open Chords; 6/8 Lilt"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Holiday & Celebration; Children's Song; English; 1800s; Strumming; More Open Chords; 6/8 Lilt; G; 6/8; Thanksgiving; Kids; Public Domain"
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
  \time 6/8
}

melody = \relative c' {
  d8 d8 d8 d8 b8 c8 | d4 d8 d4 d8 | g8 g8 g8 fs4 e8 | d4. r4 d8 |
  \break
  c8 c8 c8 c4 c8 | b8 b8 b8 b4 b8 | a8 a8 a8 a4 b8 | a4. r4. |
  \break
  d8 d8 d8 d8 b8 c8 | d4 d8 d4 d8 | g4 g8 fs4 e8 | d4. r4 d8 |
  \break
  g4 g8 fs4 e8 | d4 b8 g4 a8 | b8 b8 c8 b4 a8 | g2. |
  \break
  d'8 d8 d8 d8 b8 c8 | d4 d8 d4 d8 | g8 g8 g8 fs4 e8 | d4. r4 d8 |
  \break
  c8 c8 c8 c4 c8 | b8 b8 b8 b4 b8 | a8 a8 a8 a4 b8 | a4. r4. |
  \break
  d8 d8 d8 d8 b8 c8 | d4 d8 d4 d8 | g8 g8 g8 fs4 e8 | d4. r4 d8 |
  \break
  g4 g8 fs4 e8 | d4 b8 g4 a8 | b8 b8 c8 b4 a8 | g2. |
  \break
  d'8 d8 d8 d8 b8 c8 | d4 d8 d4 d8 | g8 g8 g8 fs4 e8 | d4. r4 d8 |
  \break
  c8 c8 c8 c4 c8 | b8 b8 b8 b4 b8 | a8 a8 a8 a4 b8 | a4. r4. |
  \break
  d8 d8 d8 d8 b8 c8 | d4 d8 d4 d8 | g4 g8 fs4 e8 | d4. r4 d8 |
  \break
  g4 g8 fs4 e8 | d4 b8 g4 a8 | b8 b8 c8 b4 a8 | g4. g4. \bar "|."
}

harmony = \chordmode {
  g2. | g2. | c2. | g2. | d2.:7 | g2. | d2. | d2. | g2. | g2. | c2. | g2. | c2. | g2. | d2.:7 | g2. | g2. | g2. | c2. | g2. | d2.:7 | g2. | d2. | d2. | g2. | g2. | c2. | g2. | c2. | g2. | d2.:7 | g2. | g2. | g2. | c2. | g2. | d2.:7 | g2. | d2. | d2. | g2. | g2. | c2. | g2. | c2. | g2. | d2.:7 | g2.
}

words = \lyricmode {
  O -- ver the riv -- er and through the wood, To grand -- moth -- er's house we go; The
  horse knows the way to car -- ry the sleigh through the white and drift -- ed snow.
  O -- ver the riv -- er and through the wood, Oh how the wind does blow! It
  stings the toes and bites the nose, as o -- ver the ground we go.
  O -- ver the riv -- er and through the wood, To have a first rate play _ Oh,
  hear the bells ring, ting a ling ling _ Hur -- rah for Thanks -- giv -- ing Day!
  O -- ver the riv -- er and through the wood, To grand -- moth -- er's house a -- way! We
  would not stop for doll or top, for 'tis Thanks -- giv -- ing Day _
  O -- ver the riv -- er and through the wood, Now grand -- moth -- er's cap I spy! Hur --
  rah for the fun, is the pud -- ding done, hur -- rah for the pump -- kin pie!
  O -- ver the riv -- er and through the wood, Trot fast, my dap -- ple gray! Spring
  o'er _ the ground, like a hunt -- ing hound, for 'tis Thanks -- giv -- ing Day!
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
% Melody: traditional (the Child setting of Mrs. Child's poem); checked against standard American lead sheets.
% ------------------------------------------------------------------
