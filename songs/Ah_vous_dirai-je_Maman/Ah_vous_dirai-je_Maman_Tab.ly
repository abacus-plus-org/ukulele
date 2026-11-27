\version "2.24.4"
\language "english"
\include "predefined-ukulele-fretboards.ly"
\include "../../include/rhythm-tab-guide.ily"

% ------------------------------------------------------------------
% Ah! vous dirai-je, Maman - Traditionnel (air français, XVIIIe s.), toddler style (low-G, linear GCEA).
% RIGHTS: public (18th-c. French air; in Weckerlin 1885). Full first verse entered (widely sung 'Ce qui cause mon tourment' text).
% Key of C (same tune as Twinkle Twinkle). Chords C, F and G7. One verse, 12 bars, 4 bars per line.
% String numbers: \1 = A, \2 = E, \3 = C, \4 = G (low G = G3).
% Tempo (4 = 92) is a gentle toddler pace (MIDI only, not printed); adjust by ear. Credit: Traditionnel (air français, XVIIIe s.).
% ------------------------------------------------------------------

\header {
  title = \markup \column { \fontsize #4 "Ah! vous dirai-je, Maman" \vspace #2.4 }
  subtitle = ""
  copyright = ""
  tagline = ""
  % tags (metadata, not printed)
  category      = "Nursery Rhyme"
  language      = "French"
  era           = "1700s"
  songkey       = "C"
  timesig       = "4/4"
  occasion      = "Kids"
  technique     = "Strumming; Basic Open Chords"
  versions      = "A4 Sheet; Audio"
  rights        = "Public Domain"
  tags          = "Nursery Rhyme; French; 1700s; Strumming; Basic Open Chords; C; 4/4; Kids; Public Domain"
  difficulty    = "0.3"
  difficultyraw = "1.35"
  % end tags
}

\paper {
  #(set-paper-size "a4")
  top-margin = 15
  bottom-margin = 15
  left-margin = 18
  right-margin = 18
  system-system-spacing.basic-distance = #12
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
  c4 c g' g | a a g2 | f4 f e e | d d c2 |
  \break
  g'4 g f f | e e d2 | g4 g f f | e e d2 |
  \break
  c4 c g' g | a a g2 | f4 f e e | d d c2 |
  \bar "|."
}

harmony = \chordmode {
  c1 | f2 c2 | f2 c2 | g2:7 c2 | c1 | c2 g2:7 | c2 f2 | c2 g2:7 | c1 | f2 c2 | f2 c2 | g2:7 c2 |
}

words = \lyricmode {
  Ah! vous di -- rai -- je, ma -- man,
  Ce qui cau -- se mon tour -- ment.
  Pa -- pa veut que je rai -- sonne
  Com -- me une gran -- de per -- sonne.
  Moi je dis que les bon -- bons
  Va -- lent mieux que la rai -- son.
}

\score {
  <<
    \new ChordNames \with {
      \override ChordName.font-size = #4
      \override ChordName.font-series = #'bold
    } { \set chordChanges = ##t \harmony }

    \new FretBoards \with {
      stringTunings = #ukulele-tuning
      \override FretBoard.size = #1.6
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
    #(layout-set-staff-size 22)
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
% Melody: traditional French air; checked against Weckerlin 1885 (p. 16, in F) and the mfiles C-major Twinkle sheet. Widely sung first-verse text.
% ------------------------------------------------------------------
