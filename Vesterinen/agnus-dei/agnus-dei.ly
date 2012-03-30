\version "2.12.3"
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
  title = "Agnus Dei"
%  title = \markup { \override #'(font-name . "URW Chancery L") "Agnus Dei" }
  subtitle = "sekakuorolle a cappella"
  composer = "Johannes Vesterinen, 2006"
%  poet = ""
%  tagline = ""
}

\paper {
%  indent = 0
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
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 70 2)
    }
  }
  \layout { }
}