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
  \set Staff.shortInstrumentName = "S1"
  r8 c c d | f f16 f f f f8 | f4 g16 g g a | g8 f a g | f d c a |
  c8. d16 f8 d | f a g4 | f16 f8 d16 c4( | c2) |

  g'4 g8 f | a c g16( f8.) | a8 g f4 | f16 f8. d16( c8.) |
  g'4 g8 f | a c g16( f8.) | a8 g16 f  f f d8 | c2

  \bar "||:"
  r8 f f a | a a16 a a a a8 | a4 b16 b b b | b8 a c b | a g f d |
  f8. a16 a8 g | a c c4 | b16 b8 b16 a4( | a2) \mark "Fine" 
  \bar "||" 

  c4 c8 a | d f c16( a8.) | c8 c d4 | d16 d8( c16) c4 |
  c4 c8 a | d f c16( a8.) | c8 b16 a  b b g8 | f2 
  \bar "|."
}

SopOneLyrics = \lyricmode {
  As I went down in the ri -- ver to pray,
  stu -- dy -- ing a -- bout that good old way
  and who shall wear the star -- ry crown, 
  good Lord, show me the way.

  Oh, sis -- ters, let's go down, let's go down
  come on down. Oh, sis -- ters let's go down,
  down in the ri -- ver to pray.
}

SopTwoMusic = \relative c' {
  \set Staff.instrumentName = #"Soprano II"
  \set Staff.shortInstrumentName = "S2"
  \set Staff.midiMaximumVolume = #0.3

  R2 * 17 
  \bar "||:"
  r8 c c d | f f16 f f f f8 | f4 g16 g g a | g8 f a g | f d c a |
  c8. d16 f8 d | f a g4 | f16 f8 d16 c4( | c2) |

  g'4 g8 f | a c g16( f8.) | a8 g f4 | f16 f8. d16( c8.) |
  g'4 g8 f | a c g16( f8.) | a8 g16 f  f f d8 | c2
 
}

AltoMusic = \relative c' {
  \set Staff.instrumentName = #"Alto"
  \set Staff.shortInstrumentName = "A"
% 1
  R2 * 9 |
  e4 e8 d | f a d,16( c8.) | f8 d d4 | d16 d8( c16) c4 |
  e4 e8 d | f a d,16( c8.) | f8 d16 c b b b8 | a2 |

  r8 c c d | c c16 c c c c8 | c4 e16 e e f | e8 f f d | c d c a |
  c8. d16 c8 d | f16( d) c8 c4 | b16 b8 b16 a4( | a2) |
  
  e'4 e8 d | f a d,16( c8.) | f8 d d4 | d16 d8( c16) c4 |
  e4 e8 d | f a d,16( c8.) | f8 d16 c  b b b8 | a2
}

AltoLyrics = \lyricmode {
  Oh, sis -- ters, let's go down, let's go down
  come on down. Oh, sis -- ters let's go down,
  down in the ri -- ver to pray.
}

TenoreMusic = \relative c' {
  \set Staff.instrumentName = #"Tenore"
  \set Staff.shortInstrumentName = "T"
  \clef "treble_8"
  R2 * 17 |

  r8 c c b | a a16 a a a a8 | a4 b16 b b b | b8 a c b | a a a a |
  a8. a16 a8 g | a c c4 | b16 b8 b16 a4( | a2) |
  
  c4 c8 a | d f c16( a8.) | c8 c b4 | b16 b8. a4 |
  c4 c8 a | d f c16( a8.) | c8 b16 a b b b8 | a2
}

BarytoneMusic = \relative c {
  \set Staff.instrumentName = #"Barytone"
  \set Staff.shortInstrumentName = "Br"
  \clef bass
  R2 * 17 |

  r8 c c d | f f16 f f f f8 | f4 g16 g g a | g8 f a g | f d c a |
  c8. d16 f8 d | f a g4 | f16 f8 d16 c4( | c2) |
  
  g'4 g8 f | a c g16( f8.) | a8 g f4 | f16 f8. d16( c8.) |
  g'4 g8 f | a c g16( f8.) | a8 g16 f f f d8 | c2
}

BassMusic = \relative c {
  \set Staff.instrumentName = #"Basso"
  \set Staff.shortInstrumentName = "B"
  \clef bass
  R2 * 17 |
  r8 c c d | f,8 f16 f f f f8 | f4 c'16 c c c | c8 c f f | f d c a |
  f8. f16 f8 f | f c' c4 | b16 b8 g16 f4( | f2) |

  c'4 c8 c | f f f4 | f8 f b,4 | b16 b8. f4 |
  c'4 c8 c | f f f4 | f8 f16 f  b, b c8 | f,2
}



\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "SopOne" {
	\global
        \SopOneMusic
      }
     \new Lyrics \lyricsto "SopOne" {
       \SopOneLyrics
       \SopOneLyrics
     }
    >>
    \new Staff <<
      \new Voice = "SopTwo" {
        \global
        \SopTwoMusic
      }
     \new Lyrics \lyricsto "SopTwo" {
       \SopOneLyrics
     }
    >>
    \new Staff <<
      \new Voice = "Alto" {
        \global
        \AltoMusic
      }
     \new Lyrics \lyricsto "Alto" {
       \AltoLyrics
       \SopOneLyrics
     }
    >>
    \new Staff <<
      \new Voice = "Tenore" {
        \global
        \TenoreMusic
      }
      \new Lyrics \lyricsto "Tenore" {
	\SopOneLyrics
      }
    >>
    \new Staff <<
      \new Voice = "Barytone" {
        \global
        \BarytoneMusic
      }
      \new Lyrics \lyricsto "Barytone" {
	\SopOneLyrics
      }
    >>
    \new Staff <<
      \new Voice = "Bass" {
        \global
        \BassMusic
      }
      \new Lyrics \lyricsto "Bass" {
	\SopOneLyrics
      }
    >>
  >>
  \midi { 
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 70 4)
    }
  }
  \layout { 
    \context {
     \RemoveEmptyStaffContext
   }
    \context {
     \Score
     \override VerticalAxisGroup #'remove-first = ##t
    }
    \context {
      \ChoirStaff 
      % If only one non-empty staff in a system exists, still print the backet
      \override SystemStartBracket #'collapse-height = #1
    }
  }
}