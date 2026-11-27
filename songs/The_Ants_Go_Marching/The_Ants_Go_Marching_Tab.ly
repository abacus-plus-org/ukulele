\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% The Ants Go Marching - Traditional (children's song to the tune of "When Johnny Comes Marching Home", 1863), toddler style (low-G, linear GCEA).
% RIGHTS: public tune (Patrick Gilmore, 'When Johnny Comes Marching Home', 1863, itself an older tune). The children's words (ants, 'the little one stops to...') are a traditional/camp-song text that is printed everywhere as 'Traditional'; Wikipedia mentions a Barney-special adaptation by Robert D. Singleton, so the words are not guaranteed to be free of any claim.
% Key of D minor, 6/8 with a one-quaver pick-up, chords Dm, F, A7, C7 and Gm. Five verses of 25 bars (one by one to five by five), the standard children's words.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4. = 66) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditional (children's song to the tune of "When Johnny Comes Marching Home", 1863).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "The Ants Go Marching" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Children's Song"
  language      = "English"
  era           = "Traditional"
  songkey       = "Dm"
  timesig       = "6/8"
  occasion      = "Kids; Counting & Learning; Campfire"
  technique     = "Strumming; 7th & Minor Chords; 6/8 Lilt"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain (check)"
  tags          = "Children's Song; English; Traditional; Strumming; 7th & Minor Chords; 6/8 Lilt; Dm; 6/8; Kids; Counting & Learning; Campfire; Public Domain (check)"
  difficulty    = "2.6"
  difficultyraw = "4.40"
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
  \key d \minor
  \time 6/8
  \partial 8
}

melody = \relative c' {
  a8 |
  d4 d8 d4 e8 | f4 e8 f4 d8 | c4.~ c8 r8 a8 | c4.~ c8 r8 a8 |
  \break
  d4 d8 d4 e8 | f4 e8 f4 g8 | a4.~ a8 r8 f8 | a4.~ a8 r8 f16( g16) |
  \break
  a4 a8 a8( g8) f8 | g4 g8 g4 e8 | f8 f f f( e) d | e4 e8 e4 r8 |
  \break
  R2. | r4. r8 f8 g8 | a4. g4. | f4. e4. |
  \break
  d4.~ d8 a8 a8 | d4.~ d8 a8 a8 | d4.~ d8 a8 a8 | d2. |
  \break
  d4. a4. | b4. cs4. | d4. a4. | b4. cs4. | d4.~ d4 a8 |
  \break
  d4 d8 d4 e8 | f4 e8 f4 d8 | c4.~ c8 r8 a8 | c4.~ c8 r8 a8 |
  \break
  d4 d8 d4 e8 | f4 e8 f4 g8 | a4.~ a8 r8 f8 | a4.~ a8 r8 f16( g16) |
  \break
  a4 a8 a8( g8) f8 | g4 g8 g4 e8 | f8 f f f( e) d | e4 e8 e4 r8 |
  \break
  R2. | r4. r8 f8 g8 | a4. g4. | f4. e4. |
  \break
  d4.~ d8 a8 a8 | d4.~ d8 a8 a8 | d4.~ d8 a8 a8 | d2. |
  \break
  d4. a4. | b4. cs4. | d4. a4. | b4. cs4. | d4.~ d4 a8 |
  \break
  d4 d8 d4 e8 | f4 e8 f4 d8 | c4.~ c8 r8 a8 | c4.~ c8 r8 a8 |
  \break
  d4 d8 d4 e8 | f4 e8 f4 g8 | a4.~ a8 r8 f8 | a4.~ a8 r8 f16( g16) |
  \break
  a4 a8 a8( g8) f8 | g4 g8 g4 e8 | f8 f f f( e) d | e4 e8 e4 r8 |
  \break
  R2. | r4. r8 f8 g8 | a4. g4. | f4. e4. |
  \break
  d4.~ d8 a8 a8 | d4.~ d8 a8 a8 | d4.~ d8 a8 a8 | d2. |
  \break
  d4. a4. | b4. cs4. | d4. a4. | b4. cs4. | d4.~ d4 a8 |
  \break
  d4 d8 d4 e8 | f4 e8 f4 d8 | c4.~ c8 r8 a8 | c4.~ c8 r8 a8 |
  \break
  d4 d8 d4 e8 | f4 e8 f4 g8 | a4.~ a8 r8 f8 | a4.~ a8 r8 f16( g16) |
  \break
  a4 a8 a8( g8) f8 | g4 g8 g4 e8 | f8 f f f( e) d | e4 e8 e4 r8 |
  \break
  R2. | r4. r8 f8 g8 | a4. g4. | f4. e4. |
  \break
  d4.~ d8 a8 a8 | d4.~ d8 a8 a8 | d4.~ d8 a8 a8 | d2. |
  \break
  d4. a4. | b4. cs4. | d4. a4. | b4. cs4. | d4.~ d4 a8 |
  \break
  d4 d8 d4 e8 | f4 e8 f4 d8 | c4.~ c8 r8 a8 | c4.~ c8 r8 a8 |
  \break
  d4 d8 d4 e8 | f4 e8 f4 g8 | a4.~ a8 r8 f8 | a4.~ a8 r8 f16( g16) |
  \break
  a4 a8 a8( g8) f8 | g4 g8 g4 e8 | f8 f f f( e) d | e4 e8 e4 r8 |
  \break
  R2. | r4. r8 f8 g8 | a4. g4. | f4. e4. |
  \break
  d4.~ d8 a8 a8 | d4.~ d8 a8 a8 | d4.~ d8 a8 a8 | d2. |
  \break
  d4. a4. | b4. cs4. | d4. a4. | b4. cs4. | d4.~ d4 r8 |
  \bar "|."
}

harmony = \chordmode {
  s8 | d2.:m | d2.:m | f2. | f2. | d2.:m | d2.:m | f2. | a2.:7 | f2. | c2.:7 | d2.:m | a2.:7 | a2.:7 | a2.:7 | d4.:m g4.:m | d4.:m a4.:7 | d2:m a4:7 | d2:m a4:7 | d2:m a4:7 | d2.:m | d2.:m | a2.:7 | d2.:m | a2.:7 | d2.:m | d2.:m | d2.:m | f2. | f2. | d2.:m | d2.:m | f2. | a2.:7 | f2. | c2.:7 | d2.:m | a2.:7 | a2.:7 | a2.:7 | d4.:m g4.:m | d4.:m a4.:7 | d2:m a4:7 | d2:m a4:7 | d2:m a4:7 | d2.:m | d2.:m | a2.:7 | d2.:m | a2.:7 | d2.:m | d2.:m | d2.:m | f2. | f2. | d2.:m | d2.:m | f2. | a2.:7 | f2. | c2.:7 | d2.:m | a2.:7 | a2.:7 | a2.:7 | d4.:m g4.:m | d4.:m a4.:7 | d2:m a4:7 | d2:m a4:7 | d2:m a4:7 | d2.:m | d2.:m | a2.:7 | d2.:m | a2.:7 | d2.:m | d2.:m | d2.:m | f2. | f2. | d2.:m | d2.:m | f2. | a2.:7 | f2. | c2.:7 | d2.:m | a2.:7 | a2.:7 | a2.:7 | d4.:m g4.:m | d4.:m a4.:7 | d2:m a4:7 | d2:m a4:7 | d2:m a4:7 | d2.:m | d2.:m | a2.:7 | d2.:m | a2.:7 | d2.:m | d2.:m | d2.:m | f2. | f2. | d2.:m | d2.:m | f2. | a2.:7 | f2. | c2.:7 | d2.:m | a2.:7 | a2.:7 | a2.:7 | d4.:m g4.:m | d4.:m a4.:7 | d2:m a4:7 | d2:m a4:7 | d2:m a4:7 | d2.:m | d2.:m | a2.:7 | d2.:m | a2.:7 | d2.:m |
}

words = \lyricmode {
  The ants go mar -- ching one by one hur -- rah, hur -- rah,
  The ants go mar -- ching one by one hur -- rah, hur -- rah,
  The ants go mar -- ching one by one, the lit -- tle one stops to suck his thumb,
  and they all go mar -- ching down, to the ground to get out of the rain.
  Boom! Boom! Boom! Boom! Boom! Boom! Boom! Boom! Boom!
  The ants go mar -- ching two by two hur -- rah, hur -- rah,
  The ants go mar -- ching two by two hur -- rah, hur -- rah,
  The ants go mar -- ching two by two, the lit -- tle one stops to tie his shoe,
  and they all go mar -- ching down, to the ground to get out of the rain.
  Boom! Boom! Boom! Boom! Boom! Boom! Boom! Boom! Boom!
  The ants go mar -- ching three by three hur -- rah, hur -- rah,
  The ants go mar -- ching three by three hur -- rah, hur -- rah,
  The ants go mar -- ching three by three, the lit -- tle one stops to climb a tree,
  and they all go mar -- ching down, to the ground to get out of the rain.
  Boom! Boom! Boom! Boom! Boom! Boom! Boom! Boom! Boom!
  The ants go mar -- ching four by four hur -- rah, hur -- rah,
  The ants go mar -- ching four by four hur -- rah, hur -- rah,
  The ants go mar -- ching four by four, the lit -- tle one stops to shut the door,
  and they all go mar -- ching down, to the ground to get out of the rain.
  Boom! Boom! Boom! Boom! Boom! Boom! Boom! Boom! Boom!
  The ants go mar -- ching five by five hur -- rah, hur -- rah,
  The ants go mar -- ching five by five hur -- rah, hur -- rah,
  The ants go mar -- ching five by five, the lit -- tle one stops to take a dive,
  and they all go mar -- ching down, to the ground to get out of the rain.
  Boom! Boom! Boom! Boom! Boom! Boom! Boom! Boom! Boom!
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
% Melody: traditional (the 'When Johnny Comes Marching Home' family); checked against commonly printed children's lead sheets.
% ------------------------------------------------------------------
