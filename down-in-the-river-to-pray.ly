\version "2.12.2"
\include "suomi.ly"

#(set-global-staff-size 18)

global = { 
%  \numericTimeSignature
  \time 2/4 
%  \autoBeamOff
  \key f \major
  \set Staff.midiInstrument = #"voice oohs"
}

\header {
  title = "Down in the River to Pray"
  subtitle = "Tennessee, USA"
  composer = "Trad."
%  poet = ""
%  tagline = ""
}

\paper {
%  indent = 0
}


SopOneMusic = \relative c' {
  \set Staff.instrumentName = #"Soprano I"
  r8 c c d | f f16 f f f f8 | f4 g16 g g a | g8 f a g | f d c a |
  c8. d16 f8 d | f a g4 | f16 f8 d16 c4( | c2) |

  g'4 g8 f | a c g16( f8.) | a8 g f4 | f16 f8. d16( c8.) |
  g'4 g8 f | a c g16( f8.) | a8 g16 f  f f d8 | c2 |
}

SopOneLyrics = \lyricmode {

}

SopTwoMusic = \relative c'' {
  \set Staff.instrumentName = #"Soprano II"
% 1

}

SopTwoLyrics = \lyricmode {
}

AltoMusic = \relative c'' {
  \set Staff.instrumentName = #"Alto"
% 1
}

AltoLyrics = \lyricmode {
}

TenoreMusic = \relative c' {
  \set Staff.instrumentName = #"Tenore I"
  \clef "treble_8"
% 1

}

TenoreLyrics = \lyricmode {
}

BarytoneMusic = \relative c' {
  \set Staff.instrumentName = #"Barytone"
  \clef bass
% 1

}

BarytoneLyrics = \lyricmode {

}

BassMusic = \relative c' {
  \set Staff.instrumentName = #"Basso"
  \clef bass
% 1
}

BassLyrics = \lyricmode {
}


\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "SopOne" {
        \tempo 4 = 70
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
      \new Voice = "Tenore" {
        \global
        \TenoreMusic
      }
      \new Lyrics \lyricsto "Tenore" {
        \TenoreLyrics
      }
    >>
    \new Staff <<
      \new Voice = "Barytone" {
        \global
        \BarytoneMusic
      }
      \new Lyrics \lyricsto "Barytone" {
        \BarytoneLyrics
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
    }
  }
  \layout { }
}