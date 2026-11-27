\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Angels We Have Heard on High - Words: James Chadwick (1862), English paraphrase of the French carol Les anges dans nos campagnes; tune: Gloria, traditional French carol, toddler style (low-G, linear GCEA).
% RIGHTS: public. Words: James Chadwick (1824-1882), Roman Catholic Bishop of Hexham and Newcastle, wrote this English paraphrase in 1862 (Wikipedia, citing Hymnology Archive); he died in 1882, so it is public domain everywhere. The French original (J'entends la sur ces collines, Pere Roche, Marseille 1805; Les anges dans nos campagnes, 1842) is anonymous and also public domain. Tune: Gloria, a traditional French carol (19th century). Edward Shippen Barnes's 1937 arrangement is the familiar American setting; its harmony is not used here, only the traditional tune as printed in it. Kyle Coughlin edition (christmasmusicsongs.com) was used only to read the notes, the rhythm and plain chord names; none of its layout is copied.
% Key of F, 4/4, no pickup, chords F, Am, C, C7, D, Gm and Bb. Three pages, one verse each, with the Gloria refrain twice on every page: 21 bars per verse. Range C4 to D5 (the octave below would go under G3, so the written octave stays).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 110) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Words: James Chadwick (1862), English paraphrase of the French carol Les anges dans nos campagnes; tune: Gloria, traditional French carol.
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Angels We Have Heard on High" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Christmas; Hymn & Spiritual"
  language      = "English"
  era           = "1800s"
  songkey       = "F"
  timesig       = "4/4"
  occasion      = "Christmas; Singalong"
  technique     = "Strumming; 7th & Minor Chords; Frequent Chord Changes; Moderate Tempo; Barre Chords"
  versions      = "Letter Sheet; Audio; Letter Staff Sheet; Letter Tab Sheet"
  rights        = "Public Domain"
  tags          = "Christmas; Hymn & Spiritual; English; 1800s; Strumming; 7th & Minor Chords; Frequent Chord Changes; Moderate Tempo; Barre Chords; F; 4/4; Singalong; Public Domain"
  difficulty    = "3.9"
  difficultyraw = "6.12"
  % end tags
}

\paper {
  #(set-paper-size "letter")
  top-margin = 15
  bottom-margin = 15
  left-margin = 18
  right-margin = 18
  system-system-spacing.basic-distance = #6
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
  a'4 a4 a4 c4 | \noPageBreak
  c4. bf8 a2 | \noPageBreak
  a4 g4 a4 c4 | \noPageBreak
  a4. g8 f2 | \noPageBreak
  \break
  a4 a4 a4 c4 | \noPageBreak
  c4. bf8 a2 | \noPageBreak
  a4 g4 a4 c4 | \noPageBreak
  a4. g8 f2 | \noPageBreak
  \break
  c'2 d8 c8 bf8 a8 | \noPageBreak
  bf2 c8 bf8 a8 g8 | \noPageBreak
  a2 bf8 a8 g8 f8 | \noPageBreak
  g4. c,8 c2 | \noPageBreak
  \break
  f4 g4 a4 bf4 | \noPageBreak
  a2 g2 | \noPageBreak
  c2 d8 c8 bf8 a8 | \noPageBreak
  bf2 c8 bf8 a8 g8 | \noPageBreak
  \break
  a2 bf8 a8 g8 f8 | \noPageBreak
  g4. c,8 c2 | \noPageBreak
  f4 g4 a4 bf4 | \noPageBreak
  a2 g2 | \noPageBreak
  f1 \bar "|"
  \pageBreak
  a4 a4 a4 c4 | \noPageBreak
  c4. bf8 a2 | \noPageBreak
  a4 g4 a4 c4 | \noPageBreak
  a4. g8 f2 | \noPageBreak
  \break
  a4 a4 a4 c4 | \noPageBreak
  c4. bf8 a2 | \noPageBreak
  a4 g4 a4 c4 | \noPageBreak
  a4. g8 f2 | \noPageBreak
  \break
  c'2 d8 c8 bf8 a8 | \noPageBreak
  bf2 c8 bf8 a8 g8 | \noPageBreak
  a2 bf8 a8 g8 f8 | \noPageBreak
  g4. c,8 c2 | \noPageBreak
  \break
  f4 g4 a4 bf4 | \noPageBreak
  a2 g2 | \noPageBreak
  c2 d8 c8 bf8 a8 | \noPageBreak
  bf2 c8 bf8 a8 g8 | \noPageBreak
  \break
  a2 bf8 a8 g8 f8 | \noPageBreak
  g4. c,8 c2 | \noPageBreak
  f4 g4 a4 bf4 | \noPageBreak
  a2 g2 | \noPageBreak
  f1 \bar "|"
  \pageBreak
  a4 a4 a4 c4 | \noPageBreak
  c4. bf8 a2 | \noPageBreak
  a4 g4 a4 c4 | \noPageBreak
  a4. g8 f2 | \noPageBreak
  \break
  a4 a4 a4 c4 | \noPageBreak
  c4. bf8 a2 | \noPageBreak
  a4 g4 a4 c4 | \noPageBreak
  a4. g8 f2 | \noPageBreak
  \break
  c'2 d8 c8 bf8 a8 | \noPageBreak
  bf2 c8 bf8 a8 g8 | \noPageBreak
  a2 bf8 a8 g8 f8 | \noPageBreak
  g4. c,8 c2 | \noPageBreak
  \break
  f4 g4 a4 bf4 | \noPageBreak
  a2 g2 | \noPageBreak
  c2 d8 c8 bf8 a8 | \noPageBreak
  bf2 c8 bf8 a8 g8 | \noPageBreak
  \break
  a2 bf8 a8 g8 f8 | \noPageBreak
  g4. c,8 c2 | \noPageBreak
  f4 g4 a4 bf4 | \noPageBreak
  a2 g2 | \noPageBreak
  f1  \bar "|."
}

harmony = \chordmode {
  f2 a2:m c2:7 f2 f4 c4 f2 f4 c4:7 f2 f2 a2:m c2:7 f2 f4 c4 f2 f4 c4:7 f2 f2 d2 g2:m c2 f2 bf2 c2 c2:7 f4 c4 f4 bf4 f2 c2 f2 d2 g2:m c2 f2 bf2 c2 c2:7 f4 c4 f4 bf4 f2 c2:7 f1 f2 a2:m c2:7 f2 f4 c4 f2 f4 c4:7 f2 f2 a2:m c2:7 f2 f4 c4 f2 f4 c4:7 f2 f2 d2 g2:m c2 f2 bf2 c2 c2:7 f4 c4 f4 bf4 f2 c2 f2 d2 g2:m c2 f2 bf2 c2 c2:7 f4 c4 f4 bf4 f2 c2:7 f1 f2 a2:m c2:7 f2 f4 c4 f2 f4 c4:7 f2 f2 a2:m c2:7 f2 f4 c4 f2 f4 c4:7 f2 f2 d2 g2:m c2 f2 bf2 c2 c2:7 f4 c4 f4 bf4 f2 c2 f2 d2 g2:m c2 f2 bf2 c2 c2:7 f4 c4 f4 bf4 f2 c2:7 f1
}

words = \lyricmode {
  An -- gels we have heard on high Sweet -- ly sing -- ing o'er the plains,
  And the moun -- tains in re -- ply Ech -- o -- ing their joy -- ous strains.
  Glo -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ri -- a in ex -- cel -- sis De -- o,
  Glo -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ri -- a in ex -- cel -- sis De -- o. _
  Shep -- herds, why this ju -- bi -- lee? Why your joy -- ous strains pro -- long?
  What the glad -- some ti -- dings be Which in -- spire your heav'n -- ly song?
  Glo -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ri -- a in ex -- cel -- sis De -- o,
  Glo -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ri -- a in ex -- cel -- sis De -- o. _
  Come to Beth -- le -- hem and see Him whose birth the an -- gels sing;
  Come, a -- dore on bend -- ed knee Christ the Lord, the new -- born King.
  Glo -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ri -- a in ex -- cel -- sis De -- o,
  Glo -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ri -- a in ex -- cel -- sis De -- o. _
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
    #(layout-set-staff-size 15)
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
% Melody: traditional French tune, Chadwick's English words; checked against the Barnes hymnal setting and the mfiles MIDI (both in F), and the Coughlin G edition. Three standard stanzas; 'heav'nly song' as commonly sung.
% ------------------------------------------------------------------
