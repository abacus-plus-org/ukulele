% Tab house style, matching the Music Tablature Guide.
% Loads rhythm-tab.ily (stems down, circled half and whole notes with the
% dot outside the circle, rests on the tab, beams, T-A-B clef) and sets
% fret numbers in TeX Gyre Heros Bold at font-size -2, with whiteout so
% the string line breaks around each number.

\version "2.24.4"

\include "rhythm-tab.ily"

\layout {
  \context {
    \TabVoice
    \override TabNoteHead.font-size = #-2
    \override TabNoteHead.font-name = "TeX Gyre Heros Bold"
    \override TabNoteHead.whiteout = ##t
  }
}
