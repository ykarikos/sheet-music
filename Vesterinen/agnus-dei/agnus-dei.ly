\version "2.18.0"
\include "suomi.ly"

#(set-global-staff-size 18)

global = { 
  \numericTimeSignature
  \time 7/2 
%  \autoBeamOff
  \key a \minor
  \set Staff.midiInstrument = #"voice oohs"
}

\header {
  title = \markup { \fontsize #4 \bold "Agnus Dei" }
  subtitle = "mixed choir a cappella"
  composer = "Johannes Vesterinen, 5.11.2006"
  enteredby = "Yrjö Kari-Koskinen"
%  copyright = "This work is licensed under the Creative Commons Attribution 4.0 International License."
%  tagline = "The source is available at https://ykarikos.github.io/sheet-music/"
  tagline = ""
}

\paper {
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 15\mm
  right-margin = 15\mm
  #(define fonts
      (make-pango-font-tree "Big Caslon"
                            "Nimbus Sans"
                            "Luxi Mono"
                            (/ staff-height pt 20)))
}

\include "common.ly"
\include "soprano-one.ly"
\include "soprano-two.ly"
\include "alto.ly"
\include "tenor-one.ly"
\include "tenor-two.ly"
\include "bass.ly"

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "SopOne" {
        \tempo 2 = 70
	\global
        \SopOneMusic
      }
      \new Lyrics \lyricsto "SopOne" {
        \SopOneLyrics
      }
    >>
    \new Staff <<
      \new Voice = "SopTwo" {
        \global
        \SopTwoMusic
      }
      \new Lyrics \lyricsto "SopTwo" {
        \SopTwoLyrics
      }
    >>
    \new Staff <<
      \new Voice = "Alto" {
        \global
        \AltoMusic
      }
      \new Lyrics \lyricsto "Alto" {
        \AltoLyrics
      }
    >>
    \new Staff <<
      \new Voice = "TenOne" {
        \global
        \TenOneMusic
      }
      \new Lyrics \lyricsto "TenOne" {
        \TenOneLyrics
      }
    >>
    \new Staff <<
      \new Voice = "TenTwo" {
        \global
        \TenTwoMusic
      }
      \new Lyrics \lyricsto "TenTwo" {
        \TenTwoLyrics
      }
    >>
    \new Staff <<
      \new Voice = "Bass" {
        \global
        \BassMusic
      }
      \new Lyrics \lyricsto "Bass" {
        \BassLyrics
      }
    >>
  >>
  \midi { 
    \tempo 2 = 70
  }
  \layout { }
}