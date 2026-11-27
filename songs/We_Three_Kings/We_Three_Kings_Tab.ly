\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% We Three Kings - Words and music: John Henry Hopkins Jr. (1857; published 1863 as Three Kings of Orient), toddler style (low-G, linear GCEA).
% RIGHTS: public. Words and music by John Henry Hopkins Jr. (1820-1891), written 1857 and published in his Carols, Hymns, and Songs (New York, 1863). Published before 1931 and the author died in 1891, so words and tune are public domain everywhere. No translation is involved; Hopkins's original text is used (Bethlehem plain; King, and God, and Sacrifice; Heav'n sings Hallelujah). Kyle Coughlin edition (christmasmusicsongs.com) was used only to read the notes, the rhythm and plain chord names; none of its layout is copied.
% Key of A (verses in F# minor, refrain in A), 3/8, no pickup. Chords F#m, C#7, E, E7, A, Bm and D. Five pages, one stanza per page with the refrain: 32 bars per page. Range E4 to E5 (the octave below would start at E3, under G3, so the written octave stays).
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4. = 50) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Words and music: John Henry Hopkins Jr. (1857; published 1863 as Three Kings of Orient).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "We Three Kings" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Christmas; Hymn & Spiritual"
  language      = "English"
  era           = "1800s"
  songkey       = "A"
  timesig       = "3/8"
  occasion      = "Christmas"
  technique     = "Strumming; 7th & Minor Chords; Waltz; Barre Chords; Up to Fret 7; Position Shifts (above fret 5)"
  versions      = "Letter Sheet; Audio; Letter Staff Sheet; Letter Tab Sheet"
  rights        = "Public Domain"
  tags          = "Christmas; Hymn & Spiritual; English; 1800s; Strumming; 7th & Minor Chords; Waltz; Barre Chords; Up to Fret 7; Position Shifts (above fret 5); A; 3/8; Public Domain"
  difficulty    = "5.0"
  difficultyraw = "7.70"
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
  \key a \major
  \time 3/8
}

melody = \relative c' {
  cs'4 b8 | \noPageBreak
  a4 fs8 | \noPageBreak
  gs8 a8 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  cs'4 b8 | \noPageBreak
  a4 fs8 | \noPageBreak
  gs8 a8 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  b4 b8 | \noPageBreak
  cs4 cs8 | \noPageBreak
  e8 d8 cs8 | \noPageBreak
  b8 cs8 b8 | \noPageBreak
  a4 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  gs4 b8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4 r8 | \noPageBreak
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4 r8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  b4 cs8 | \noPageBreak
  d4 cs8 | \noPageBreak
  b4 cs8 | \noPageBreak
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4. \bar "|"
  \pageBreak
  cs4 b8 | \noPageBreak
  a4 fs8 | \noPageBreak
  gs8 a8 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  cs'4 b8 | \noPageBreak
  a4 fs8 | \noPageBreak
  gs8 a8 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  b4 b8 | \noPageBreak
  cs4 cs8 | \noPageBreak
  e8 d8 cs8 | \noPageBreak
  b8 cs8 b8 | \noPageBreak
  a4 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  gs4 b8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4 r8 | \noPageBreak
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4 r8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  b4 cs8 | \noPageBreak
  d4 cs8 | \noPageBreak
  b4 cs8 | \noPageBreak
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4. \bar "|"
  \pageBreak
  cs4 b8 | \noPageBreak
  a4 fs8 | \noPageBreak
  gs8 a8 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  cs'4 b8 | \noPageBreak
  a4 fs8 | \noPageBreak
  gs8 a8 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  b4 b8 | \noPageBreak
  cs4 cs8 | \noPageBreak
  e8 d8 cs8 | \noPageBreak
  b8 cs8 b8 | \noPageBreak
  a4 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  gs4 b8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4 r8 | \noPageBreak
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4 r8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  b4 cs8 | \noPageBreak
  d4 cs8 | \noPageBreak
  b4 cs8 | \noPageBreak
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4. \bar "|"
  \pageBreak
  cs4 b8 | \noPageBreak
  a4 fs8 | \noPageBreak
  gs8 a8 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  cs'4 b8 | \noPageBreak
  a4 fs8 | \noPageBreak
  gs8 a8 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  \break
  a8 a8 a8 | \noPageBreak
  b4 b8 | \noPageBreak
  cs4 cs8 | \noPageBreak
  e8 d8 cs8 | \noPageBreak
  b8 cs8 b8 | \noPageBreak
  a4 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  gs4 b8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4 r8 | \noPageBreak
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4 r8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  b4 cs8 | \noPageBreak
  d4 cs8 | \noPageBreak
  b4 cs8 | \noPageBreak
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4. \bar "|"
  \pageBreak
  cs4 b8 | \noPageBreak
  a4 fs8 | \noPageBreak
  gs8 a8 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  cs'4 b8 | \noPageBreak
  a4 fs8 | \noPageBreak
  gs8 a8 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  b4 b8 | \noPageBreak
  cs4 cs8 | \noPageBreak
  e8 d8 cs8 | \noPageBreak
  b8 cs8 b8 | \noPageBreak
  a4 gs8 | \noPageBreak
  fs4 r8 | \noPageBreak
  gs4 b8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4 r8 | \noPageBreak
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4 r8 | \noPageBreak
  \break
  a4 a8 | \noPageBreak
  b4 cs8 | \noPageBreak
  d4 cs8 | \noPageBreak
  b4 cs8 | \noPageBreak
  a4 a8 | \noPageBreak
  a4 e8 | \noPageBreak
  a4 fs8 | \noPageBreak
  a4.  \bar "|."
}

harmony = \chordmode {
  fs4.:m fs4.:m cs4.:7 fs4.:m fs4.:m fs4.:m cs4.:7 fs4.:m fs4.:m e4. a4. a4. b4.:m cs4.:7 fs4.:m e4.:7 a4. a4. d4. a4. a4. a4. d4. a4. fs4.:m e4 a8 d4 a8 e4 a8 a4. a4. d4. a4. fs4.:m fs4.:m cs4.:7 fs4.:m fs4.:m fs4.:m cs4.:7 fs4.:m fs4.:m e4. a4. a4. b4.:m cs4.:7 fs4.:m e4.:7 a4. a4. d4. a4. a4. a4. d4. a4. fs4.:m e4 a8 d4 a8 e4 a8 a4. a4. d4. a4. fs4.:m fs4.:m cs4.:7 fs4.:m fs4.:m fs4.:m cs4.:7 fs4.:m fs4.:m e4. a4. a4. b4.:m cs4.:7 fs4.:m e4.:7 a4. a4. d4. a4. a4. a4. d4. a4. fs4.:m e4 a8 d4 a8 e4 a8 a4. a4. d4. a4. fs4.:m fs4.:m cs4.:7 fs4.:m fs4.:m fs4.:m cs4.:7 fs4.:m fs4.:m e4. a4. a4. b4.:m cs4.:7 fs4.:m e4.:7 a4. a4. d4. a4. a4. a4. d4. a4. fs4.:m e4 a8 d4 a8 e4 a8 a4. a4. d4. a4. fs4.:m fs4.:m cs4.:7 fs4.:m fs4.:m fs4.:m cs4.:7 fs4.:m fs4.:m e4. a4. a4. b4.:m cs4.:7 fs4.:m e4.:7 a4. a4. d4. a4. a4. a4. d4. a4. fs4.:m e4 a8 d4 a8 e4 a8 a4. a4. d4. a4.
}

words = \lyricmode {
  We three kings of O -- ri -- ent are, Bear -- ing gifts we tra -- verse a -- far,
  Field and foun -- tain, moor and moun -- _ tain, Fol -- low -- ing yon -- der star.
  O _ star of won -- der, star of night, Star with roy -- al beau -- ty bright,
  West -- ward lead -- ing, still pro -- ceed -- ing, Guide us to Thy per -- fect light.
  Born a King on Beth -- le -- hem plain, Gold I bring to crown Him a -- gain,
  King for -- ev -- er, ceas -- ing nev -- _ er, O -- ver us all to reign.
  O _ star of won -- der, star of night, Star with roy -- al beau -- ty bright,
  West -- ward lead -- ing, still pro -- ceed -- ing, Guide us to Thy per -- fect light.
  Frank -- in -- cense to of -- fer have I; In -- cense owns a De -- i -- ty nigh:
  Prayer and prais -- ing, all men rais -- _ ing, Wor -- ship Him, God on high.
  O _ star of won -- der, star of night, Star with roy -- al beau -- ty bright,
  West -- ward lead -- ing, still pro -- ceed -- ing, Guide us to Thy per -- fect light.
  Myrrh is mine; its bit -- ter per -- fume Breathes a life of gath -- er -- ing gloom;
  Sor -- row -- ing, sigh -- ing, bleed -- ing, dy -- _ ing, Sealed in the stone -- cold tomb.
  O _ star of won -- der, star of night, Star with roy -- al beau -- ty bright,
  West -- ward lead -- ing, still pro -- ceed -- ing, Guide us to Thy per -- fect light.
  Glo -- rious now be -- hold Him a -- rise, King, and God, and Sac -- _ ri -- fice;
  Heav'n sings Hal -- le -- lu -- jah: Hal -- _ le -- lu -- jah the earth re -- plies.
  O _ star of won -- der, star of night, Star with roy -- al beau -- ty bright,
  West -- ward lead -- ing, still pro -- ceed -- ing, Guide us to Thy per -- fect light.
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
% Melody: Hopkins, 1857; checked against Wikipedia's LilyPond score and the Coughlin edition. All five stanzas, with the refrain.
% ------------------------------------------------------------------
