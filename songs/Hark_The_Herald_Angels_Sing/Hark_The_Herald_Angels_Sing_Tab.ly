\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"
\storePredefinedDiagram #default-fret-table \chordmode { d:7 } #ukulele-tuning "2-1;o;2-2;o;"  % D7 = 2-0-2-0 (house shape)

% ------------------------------------------------------------------
% Hark! The Herald Angels Sing - Music: Felix Mendelssohn (1840, Festgesang), adapted by William H. Cummings (1855-57); words: Charles Wesley (1739), altered by George Whitefield (1753), Martin Madan (1760) and Hymns Ancient and Modern (1861), toddler style (low-G, linear GCEA).
% RIGHTS: public. Music: Felix Mendelssohn (1809-1847), the second chorus of his Festgesang (1840), fitted to Wesley's words by William H. Cummings (1831-1915) in 1855-1857; the composer died in 1847 and the adaptation is from the 1850s, so the music is public domain. Words: Charles Wesley (1707-1788), first published 1739 as 'Hark how all the welkin rings'; changed to 'Hark! the herald angels sing' by George Whitefield (1753); the four-line refrain form and further changes by Martin Madan (1760) and by Hymns Ancient and Modern (1861); all of this is from the 18th and 19th centuries and public domain. The three stanzas on the sheet are the commonly sung eight-line stanzas in the standard American text, which follows the A&M 1861 wording ('Pleased as man with man to dwell', 'heaven-born Prince of Peace'); the printed 1982 Lutheran Worship setting on openhymnal.org differs slightly ('Pleased with us in flesh to dwell', 'heavenly-born'). Kyle Coughlin's edition (copyright 2013) was used only to read the tune, the rhythm and plain chord names.
% Key of F, 4/4, chords F, C, C7, Bb, Dm, G7, Am, Gm and D7, no pickup. Three pages, one verse each: 20 bars (four 5-bar lines) per verse, the music repeated on every page with the refrain line 'Hark! the herald angels sing' closing each verse. Range C4 to D5, the low octave on low-G (lowest note C4, well above G3).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 93) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Music: Felix Mendelssohn (1840, Festgesang), adapted by William H. Cummings (1855-57); words: Charles Wesley (1739), altered by George Whitefield (1753), Martin Madan (1760) and Hymns Ancient and Modern (1861).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Hark! The Herald Angels Sing" \vspace #2.4 }
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
  technique     = "Strumming; 7th & Minor Chords; Barre Chords"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Christmas; Hymn & Spiritual; English; 1800s; Strumming; 7th & Minor Chords; Barre Chords; F; 4/4; Singalong; Public Domain"
  difficulty    = "3.3"
  difficultyraw = "5.42"
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
  c4 f4 f4. e8 | f4 a4 a4 g4 | c4 c4 c4. bf8 | a4 g4 a2 | c,4 f4 f4. e8 |
  \break
  f4 a4 a4 g4 | c4 g4 g4. e8 | e4 d4 c2 | c'4 c4 c4 f,4 | bf4 a4 a4 g4 |
  \break
  c4 c4 c4 f,4 | bf4 a4 a4 g4 | d'4 d4 d4 c4 | bf4 a4 bf2 | g4 a8 bf8 c4. f,8 |
  \break
  f4 g4 a2 | d4. d8 d4 c4 | bf4 a4 bf2 | g4 a8 bf8 c4. f,8 | f4 g4 f2 |
  \pageBreak
  c4 f4 f4. e8 | f4 a4 a4 g4 | c4 c4 c4. bf8 | a4 g4 a2 | c,4 f4 f4. e8 |
  \break
  f4 a4 a4 g4 | c4 g4 g4. e8 | e4 d4 c2 | c'4 c4 c4 f,4 | bf4 a4 a4 g4 |
  \break
  c4 c4 c4 f,4 | bf4 a4 a4 g4 | d'4 d4 d4 c4 | bf4 a4 bf2 | g4 a8 bf8 c4. f,8 |
  \break
  f4 g4 a2 | d4. d8 d4 c4 | bf4 a4 bf2 | g4 a8 bf8 c4. f,8 | f4 g4 f2 |
  \pageBreak
  c4 f4 f4. e8 | f4 a4 a4 g4 | c4 c4 c4. bf8 | a4 g4 a2 | c,4 f4 f4. e8 |
  \break
  f4 a4 a4 g4 | c4 g4 g4. e8 | e4 d4 c2 | c'4 c4 c4 f,4 | bf4 a4 a4 g4 |
  \break
  c4 c4 c4 f,4 | bf4 a4 a4 g4 | d'4 d4 d4 c4 | bf4 a4 bf2 | g4 a8 bf8 c4. f,8 |
  \break
  f4 g4 a2 | d4. d8 d4 c4 | bf4 a4 bf2 | g4 a8 bf8 c4. f,8 | f4 g4 f2  \bar "|."
}

harmony = \chordmode {
  f2. c4 | f2. c4 | f2 bf2 | f4 c4:7 f2 | f2. c4 | d2:m g2:7 | a4:m g4 c2 | a4:m g4:7 c2 | f1 | bf4 f2 c4 | f1 | bf4 f2 c4 | bf1 | g4:m d4:7 g2:m | c2:7 f2 | f4 c4:7 f2 | bf2. d4:7 | g4:m d4:7 g2:m | c2:7 f2 | f4 c4:7 f2 | f2. c4 | f2. c4 | f2 bf2 | f4 c4:7 f2 | f2. c4 | d2:m g2:7 | a4:m g4 c2 | a4:m g4:7 c2 | f1 | bf4 f2 c4 | f1 | bf4 f2 c4 | bf1 | g4:m d4:7 g2:m | c2:7 f2 | f4 c4:7 f2 | bf2. d4:7 | g4:m d4:7 g2:m | c2:7 f2 | f4 c4:7 f2 | f2. c4 | f2. c4 | f2 bf2 | f4 c4:7 f2 | f2. c4 | d2:m g2:7 | a4:m g4 c2 | a4:m g4:7 c2 | f1 | bf4 f2 c4 | f1 | bf4 f2 c4 | bf1 | g4:m d4:7 g2:m | c2:7 f2 | f4 c4:7 f2 | bf2. d4:7 | g4:m d4:7 g2:m | c2:7 f2 | f4 c4:7 f2 |
}

words = \lyricmode {
  Hark! The her -- ald an -- gels sing, _ Glo -- ry to the new -- born King;
  Peace on earth, and mer -- cy mild, _ God and sin -- ners re -- con -- ciled!
  Joy -- ful, all ye na -- tions rise, _ Join the tri -- umph of the skies; _
  With th'an -- gel -- ic host pro -- claim, Christ is _ born in Beth -- le -- hem!
  Hark! the her -- ald an -- gels sing, Glo -- ry _ to the new -- born King!
  Christ, by high -- est Heav'n a -- dored; _ Christ the ev -- er -- last -- ing Lord;
  Late in time, be -- hold Him come, _ Off -- spring of a Vir -- gin's womb.
  Veiled in flesh the God -- head see; _ Hail th'in -- car -- nate De -- i -- ty, _
  Pleased as man with man to dwell, Je -- sus _ our Em -- man -- u -- el.
  Hark! the her -- ald an -- gels sing, Glo -- ry _ to the new -- born King!
  Hail the heav'n -- born Prince of Peace! _ Hail the Sun of Right -- eous -- ness!
  Light and life to all He brings, _ Ris'n with heal -- ing in His wings.
  Mild He lays His glo -- ry by, _ Born that man no more may die. _
  Born to raise the sons of earth, Born to _ give them se -- cond birth.
  Hark! the her -- ald an -- gels sing, Glo -- ry _ to the new -- born King!
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
% Melody: Mendelssohn, adapted by Cummings; Wesley/Whitefield words. Checked against the Coughlin and Open Hymnal editions.
% ------------------------------------------------------------------
