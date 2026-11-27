\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% O Holy Night - Music: Adolphe Adam (Cantique de Noël, 1847); words: Placide Cappeau, English by John Sullivan Dwight (1855), toddler style (low-G, linear GCEA).
% RIGHTS: public. Music: Adolphe Adam (1803-1856), Cantique de Noël, 1847. French words: Placide Cappeau (1808-1877), Minuit, chrétiens, 1847. English words: John Sullivan Dwight (1812-1893), published 1855 in Dwight's Journal of Music; this is a free adaptation rather than a literal translation, and it is old enough to be public domain everywhere (published 1855, author dead since 1893). The 1871 G. Schirmer printing (Social Evenings) already carries Dwight's text. Kyle Coughlin edition (christmasmusicsongs.com) was used only to read the notes, the rhythm and plain chord names; none of its layout is copied.
% Key of F, 6/8, no pickup. Chords F, Bb, C, C7, F7, Am, E7, Dm and Gm. Three pages, one stanza per page, each with the full refrain; pages 1-2 close with the hymnal ending (top note A5), page 3 with the popular high ending (top note C6). Range F4 to C6; the octave below would start at F3, under G3, so the written octave stays.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4. = 50) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Music: Adolphe Adam (Cantique de Noël, 1847); words: Placide Cappeau, English by John Sullivan Dwight (1855).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "O Holy Night" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Christmas; Hymn & Spiritual"
  language      = "English"
  era           = "1800s"
  songkey       = "F"
  timesig       = "6/8"
  occasion      = "Christmas"
  technique     = "Strumming; 7th & Minor Chords; 6/8 Lilt; Barre Chords; Position Shifts (above fret 5); Fret 12+"
  versions      = "Letter Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Christmas; Hymn & Spiritual; English; 1800s; Strumming; 7th & Minor Chords; 6/8 Lilt; Barre Chords; Position Shifts (above fret 5); Fret 12+; F; 6/8; Public Domain"
  difficulty    = "6.5"
  difficultyraw = "9.70"
  % end tags
}

\paper {
  #(set-paper-size "letter")
  top-margin = 15
  bottom-margin = 15
  left-margin = 18
  right-margin = 18
  system-system-spacing.basic-distance = #5
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
  \time 6/8
}

melody = \relative c' {
  a'4. a4 a8 | \noPageBreak
  c4.~ c4 c8 | \noPageBreak
  d4 d8 bf4 d8 | \noPageBreak
  f2. | \noPageBreak
  c4 c8 a4 g8 | \noPageBreak
  f4. a4 bf8 | \noPageBreak
  c4. bf4 g8 | \noPageBreak
  f2.~ | \noPageBreak
  f2.~ | \noPageBreak
  f4. r4. | \noPageBreak
  \break
  a4. a4 a8 | \noPageBreak
  c4.~ c4 c8 | \noPageBreak
  d4 d8 bf4 d8 | \noPageBreak
  f2. | \noPageBreak
  c4 c8 b4 a8 | \noPageBreak
  e'4. c4 d8 | \noPageBreak
  e4. f4 e8 | \noPageBreak
  a,2.~ | \noPageBreak
  a4. r4 c8 | \noPageBreak
  c4. d4. | \noPageBreak
  g,4. c4. | \noPageBreak
  \break
  d4 c8 f4 a,8 | \noPageBreak
  d4. c4 c8 | \noPageBreak
  c4. d4. | \noPageBreak
  g,4. c4. | \noPageBreak
  d4 c8 f4 a,8 | \noPageBreak
  c2. | \noPageBreak
  f2.~ | \noPageBreak
  f4. e4 d8 | \noPageBreak
  e2.~ | \noPageBreak
  e4. e4. | \noPageBreak
  \break
  g2.~ | \noPageBreak
  g4 d8 d4 d8 | \noPageBreak
  f2. | \noPageBreak
  f4. r4 f8 | \noPageBreak
  a2. | \noPageBreak
  g4.~ g4 c,8 | \noPageBreak
  f2.~ | \noPageBreak
  f4. e4 d8 | \noPageBreak
  c2.~ | \noPageBreak
  c4 c8 d4 c8 | \noPageBreak
  c2.~ | \noPageBreak
  c4. f4. | \noPageBreak
  \break
  g2.~ | \noPageBreak
  g4. r4 c,8 | \noPageBreak
  a'2.~ | \noPageBreak
  a4. g4. | \noPageBreak
  f2. | \noPageBreak
  e4. f4 g8 | \noPageBreak
  f2.~ | \noPageBreak
  f4. r4. \bar "|"
  \pageBreak
  a,4. a4 a8 | \noPageBreak
  c4.~ c4 c8 | \noPageBreak
  d4 d8 bf4 d8 | \noPageBreak
  f2. | \noPageBreak
  c4 c8 a4 g8 | \noPageBreak
  f4. a4 bf8 | \noPageBreak
  c4. bf4 g8 | \noPageBreak
  f2.~ | \noPageBreak
  f2.~ | \noPageBreak
  f4. r4. | \noPageBreak
  \break
  a4. a4 a8 | \noPageBreak
  c4.~ c4 c8 | \noPageBreak
  d4 d8 bf4 d8 | \noPageBreak
  f2. | \noPageBreak
  c4 c8 b4 a8 | \noPageBreak
  e'4. c4 d8 | \noPageBreak
  e4. f4 e8 | \noPageBreak
  a,2.~ | \noPageBreak
  a4. r4 c8 | \noPageBreak
  c4. d4. | \noPageBreak
  g,4. c4. | \noPageBreak
  \break
  d4 c8 f4 a,8 | \noPageBreak
  d4. c4 c8 | \noPageBreak
  c4. d4. | \noPageBreak
  g,4. c4. | \noPageBreak
  d4 c8 f4 a,8 | \noPageBreak
  c2. | \noPageBreak
  f2.~ | \noPageBreak
  f4. e4 d8 | \noPageBreak
  e2.~ | \noPageBreak
  e4. e4. | \noPageBreak
  \break
  g2.~ | \noPageBreak
  g4 d8 d4 d8 | \noPageBreak
  f2. | \noPageBreak
  f4. r4 f8 | \noPageBreak
  a2. | \noPageBreak
  g4.~ g4 c,8 | \noPageBreak
  f2.~ | \noPageBreak
  f4. e4 d8 | \noPageBreak
  c2.~ | \noPageBreak
  c4 c8 d4 c8 | \noPageBreak
  c2.~ | \noPageBreak
  c4. f4. | \noPageBreak
  \break
  g2.~ | \noPageBreak
  g4. r4 c,8 | \noPageBreak
  a'2.~ | \noPageBreak
  a4. g4. | \noPageBreak
  f2. | \noPageBreak
  e4. f4 g8 | \noPageBreak
  f2.~ | \noPageBreak
  f4. r4. \bar "|"
  \pageBreak
  a,4. a4 a8 | \noPageBreak
  c4.~ c4 c8 | \noPageBreak
  d4 d8 bf4 d8 | \noPageBreak
  f2. | \noPageBreak
  c4 c8 a4 g8 | \noPageBreak
  f4. a4 bf8 | \noPageBreak
  c4. bf4 g8 | \noPageBreak
  f2.~ | \noPageBreak
  f2.~ | \noPageBreak
  f4. r4. | \noPageBreak
  \break
  a4. a4 a8 | \noPageBreak
  c4.~ c4 c8 | \noPageBreak
  d4 d8 bf4 d8 | \noPageBreak
  f2. | \noPageBreak
  c4 c8 b4 a8 | \noPageBreak
  e'4. c4 d8 | \noPageBreak
  e4. f4 e8 | \noPageBreak
  a,2.~ | \noPageBreak
  a4. r4 c8 | \noPageBreak
  c4. d4. | \noPageBreak
  g,4. c4. | \noPageBreak
  \break
  d4 c8 f4 a,8 | \noPageBreak
  d4. c4 c8 | \noPageBreak
  c4. d4. | \noPageBreak
  g,4. c4. | \noPageBreak
  d4 c8 f4 a,8 | \noPageBreak
  c2. | \noPageBreak
  f2.~ | \noPageBreak
  f4. e4 d8 | \noPageBreak
  e2.~ | \noPageBreak
  e4. e4. | \noPageBreak
  \break
  g2.~ | \noPageBreak
  g4 d8 d4 d8 | \noPageBreak
  f2. | \noPageBreak
  f4. r4 f8 | \noPageBreak
  a2. | \noPageBreak
  g4.~ g4 c,8 | \noPageBreak
  f2.~ | \noPageBreak
  f4. e4 d8 | \noPageBreak
  c2.~ | \noPageBreak
  c4 c8 d4 c8 | \noPageBreak
  c2.~ | \noPageBreak
  c4. f4. | \noPageBreak
  \break
  g2.~ | \noPageBreak
  g4. c,4. | \noPageBreak
  c'2.~ | \noPageBreak
  c4 bf8 a4 g8 | \noPageBreak
  f2. | \noPageBreak
  e4. f4 g8 | \noPageBreak
  f2.~ | \noPageBreak
  f2.~ | \noPageBreak
  f2.  \bar "|."
}

harmony = \chordmode {
  f2. f2. bf2. f2. f2. f2. c2. f2. f2. f2. f2. f2. bf2. f2. f2.:7 a2.:m e2.:7 a2.:m a2.:m c2.:7 c2.:7 f2. f2. c2.:7 c2.:7 f2. f2. d2.:m d2.:m a2.:m a2.:m g2.:m g2.:m d2.:m d2.:m f2. c2. f2. bf2. f2. c2.:7 f2. f2. c2. c2. f2. bf2. f2. c2.:7 f2. f2. f2. f2. bf2. f2. f2. f2. c2. f2. f2. f2. f2. f2. bf2. f2. f2.:7 a2.:m e2.:7 a2.:m a2.:m c2.:7 c2.:7 f2. f2. c2.:7 c2.:7 f2. f2. d2.:m d2.:m a2.:m a2.:m g2.:m g2.:m d2.:m d2.:m f2. c2. f2. bf2. f2. c2.:7 f2. f2. c2. c2. f2. bf2. f2. c2.:7 f2. f2. f2. f2. bf2. f2. f2. f2. c2. f2. f2. f2. f2. f2. bf2. f2. f2.:7 a2.:m e2.:7 a2.:m a2.:m c2.:7 c2.:7 f2. f2. c2.:7 c2.:7 f2. f2. d2.:m d2.:m a2.:m a2.:m g2.:m g2.:m d2.:m d2.:m f2. c2. f2. bf2. f2. c2.:7 f2. f2. c2. c2. f2. bf2. f2. c2.:7 f2. f2. f2.
}

words = \lyricmode {
  O ho -- ly night, the stars are bright -- ly shin -- ing, It is the night of the dear Sav -- iour's birth.
  Long lay the world in sin and er -- ror pin -- ing, Till He ap -- peared and the soul felt its worth.
  A thrill of hope, the wea -- ry world re -- joic -- es, For yon -- der breaks a new and glo -- rious morn!
  Fall on your knees! O hear the an -- gel voic -- es! O night _ di -- vine, O _ night when Christ was born!
  O night di -- vine! O night, O night di -- vine!
  Led by the light of faith se -- rene -- ly beam -- ing, With glow -- ing hearts by His cra -- dle we stand.
  So led by light of a star sweet -- ly gleam -- ing, Here came the wise men from O -- ri -- ent land.
  The King of kings lay thus in low -- ly man -- ger, In all our tri -- als born to be our friend.
  He knows our need, to our weak -- ness no stran -- ger. Be -- hold _ your King, be -- _ fore Him low -- ly bend!
  Be -- hold your King, be -- fore Him low -- ly bend!
  Tru -- ly He taught us to love one an -- oth -- er; His law is love and His gos -- pel is peace.
  Chains shall He break, for the slave is our broth -- er; And in His name all op -- pres -- sion shall cease.
  Sweet hymns of joy in grate -- ful cho -- rus raise we, Let all with -- in us praise His ho -- ly name.
  Christ is the Lord! Then ev -- er, ev -- er praise we! His pow'r _ and glo -- ry _ ev -- er -- more pro -- claim!
  His pow'r and glo -- ry _ _ ev -- er -- more pro -- claim!
}

\score {
  <<
    \new ChordNames \with {
      \override ChordName.font-size = #4
      \override ChordName.font-series = #'bold
    } { \set chordChanges = ##t \harmony }

    \new FretBoards \with {
      stringTunings = #ukulele-tuning
      \override FretBoard.size = #1.2
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
    #(layout-set-staff-size 13)
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
% Melody: Adam / Dwight; checked against public-domain hymn editions. Written in F, a half step above the familiar E recording.
% ------------------------------------------------------------------
