\version "2.12.2"
\include "suomi.ly"

#(set-global-staff-size 18)

global = { 
  \time 7/2 
  \autoBeamOff
  \key a \minor
  \set Staff.midiInstrument = #"voice oohs"
}

\header {
  title = "Agnus Dei"
  subtitle = "sekakuorolle a cappella"
  composer = "Johannes Vesterinen, 2006"
%  poet = ""
%  tagline = ""
}

\paper {
%  indent = 0
}


SopOneMusic = \relative c'' {
  \set Staff.instrumentName = #"Soprano I"
% 1
  a\breve\p( a1.) | \time 4/2 a\breve( | a1.) r2 |
  \time 5/2 r1. a1 | \time 3/2 a1. | c1.\< |
  \time 5/2 c1\>( h1.) | r1\! a1. | \time 4/2 c1\< h4\> r4\! r2 |
  \time 3/2 a1. | \time 4/2 c1 h2 h |
% 2
  a1 a | \time 5/2 a1. h1 | r1 c,1.( |
  \time 3/2 c2) d1 | << {d1 d4 } \new Voice { \voiceTwo es1 d4 } >> r4 |
  r2 c d | << { d1 d4 } \new Voice { \voiceTwo es1 d4 } >> r4 |
  r2 c c | c1 c2 |
  \time 5/2 c1( h1.)( | h1) h1. |
  \time 3/2 r2 c' d |
% 3
  << { es1 d4 } \new Voice { \voiceOne d1 d4 } >> r4 |
}

SopOneLyrics = \lyricmode {
  A -- gnus, A -- gnus De -- i
  qui tol -- lis, qui tol -- lis pec -- ca -- ta mun -- di
  mi -- se -- re -- re, mi -- se -- re -- re,
  mi -- se -- re -- re, no -- bis, mi -- se -- re -- re,
}

SopTwoMusic = \relative c'' {
  \set Staff.instrumentName = #"Soprano II"
% 1
  r\breve\p a1. | \time 4/2 gis\breve( | a1.) r2 |
  \time 5/2 a1.( a1) | \time 3/2 gis2( a1) | a1.\< |
  \time 5/2 a1\>( a1.) | r1\! a2( h1) | \time 4/2 h1\< gis4\> r4\! r2 |
  \time 3/2 a2( h1) | \time 4/2 h1 h2 a |
% 2
  a1 a2( gis) | \time 5/2 a1. a1 | r1 c,1.( |
  \time 3/2 c2) c1 | c c4 r |
  r2 c c | c1 c2( | c1.)( | c1) r2 |
  \time 5/2 c1( h1.)( | h1) c1. |
  \time 3/2 r2 c' c |
% 3
  c1 c2( | c2.) g4 c2 | c1 c2 | 
  \time 4/2 g\breve | 
  \time 3/2 h1. |
  \time 5/2 R\breve*5/4 | \time 3/2 R1. |
}

SopTwoLyrics = \lyricmode {
  A -- gnus, A -- gnus De -- i
  qui tol -- lis, qui tol -- lis pec -- ca -- ta mun -- di
  mi -- se -- re -- re,  mi -- se -- re -- re,
  no -- bis, mi -- se -- re -- re,
  mi -- se -- re -- re no -- bis.
}

AltoMusic = \relative c'' {
  \set Staff.instrumentName = #"Alto"
% 1
  a\breve\p( a1.) | \time 4/2 e\breve( | e1.) r2 |
  \time 5/2 r1. a1 | \time 3/2 e1. | g1.\< |
  \time 5/2 h1\>( e,1.) | r1\! a1. | \time 4/2 a\breve |
  \time 3/2 a1 a2 | \time 4/2 a1 a2 a |
% 2
  e1 gis | \time 5/2 e1. g1 | r1 c,1.( |
  \time 3/2 c2) b1 | << { b1 b4  } \new Voice { \voiceTwo as1 b4 } >> r4 |
  r2 c h! | << {a!1 h4 } \new Voice { \voiceTwo h1 h4 } >> r4 |
  r2 c g | g1 g2 | 
  \time 5/2 c1( c1.)( | c1) c1. |
  \time 3/2 r2 c g' | 
% 3
  g1 g4 r4 | r2 f g | g1 g2 |
  \time 4/2 es2( d1.) |
  \time 3/2 h1. |
  \time 5/2 R\breve*5/4 | \time 3/2 R1. |
}

AltoLyrics = \lyricmode {
  A -- gnus, A -- gnus De -- i
  qui tol -- lis, qui tol -- lis pec -- ca -- ta mun -- di
  mi -- se -- re -- re, mi -- se -- re -- re,
  mi -- se -- re -- re, no -- bis, mi -- se -- re -- re,
  mi -- se -- re -- re, no -- bis.
}

TenOneMusic = \relative c' {
  \set Staff.instrumentName = #"Tenore I"
  \clef "treble_8"
% 1
  r\breve\p a1. | \time 4/2 h\breve\<( | c1.\>) r2\! | 
  \time 5/2 a1.( a1) | \time 3/2 a2( c1) | e1.\< |
  \time 5/2 e1\>( d1.) | r1\! a2( d1) | \time 4/2 c1\< e4\> r4\! r2 |
  \time 3/2 a,1. | \time 4/2 a1 a2 a |
% 2
  c1 e | \time 5/2 d1. d1 | R1*5/2 | 
  \time 3/2 R1. | R | R | R |
  r2 c, d | << {es1 d2 } \new Voice { \voiceTwo d1 d2 } >> |
  \time 5/2 c1( h1.)( | h1)  c1. |
  \time 3/2 r2 c' c | 
%3 
  b1 f4 r4 | r2 d' c | b1 f2 |
  \time 4/2 c'\breve |
  \time 3/2 h4 r r2 h( |
  \time 5/2 h1)( h1.) |
  \time 3/2 << {ais1.( | h1) r2 } { h1.( | fis1) r2 } >> |
  R1. |
  \time 6/2 r1 h2 ais( h) cis | d( cis) r
}

TenOneLyrics = \lyricmode {
  A -- gnus, A -- gnus De -- i
  qui tol -- lis, qui tol -- lis pec -- ca -- ta mun -- di
  mi -- se -- re -- re, no -- bis, mi -- se -- re -- re,
  mi -- se -- re -- re, no -- bis.
  A -- gnus
  A -- gnus De -- i,
}

TenTwoMusic = \relative c' {
  \set Staff.instrumentName = #"Tenore II"
  \clef "treble_8"
% 1
  a\breve\p( a1.) | \time 4/2 a\breve( | d1.) r2 |
  \time 5/2 r1. a1 | \time 3/2 h1. | d1.\< |
  \time 5/2 a1\>( h1.) | r1\! a1. | \time 4/2 h1 h4 r4 r2 | 
  \time 3/2 a1. | \time 4/2 f1 g2 a |
% 2
  d1 h1 | \time 5/2 c1. c1( | c1)( c1.) | 
  \time 3/2 R1. | R | R | R |
  r2 c, c | c1 c2 |
  \time 5/2 c1( h1.)( | h1) c1. |
  \time 3/2 r2 c' g | 
% 3
  f1 es4 r4 | 
}

TenTwoLyrics = \lyricmode {
  A -- gnus, A -- gnus De -- i
  qui tol -- lis, qui tol -- lis pec -- ca -- ta mun -- di
  mi -- se -- re -- re, no -- bis, mi -- se -- re -- re,
}

BassMusic = \relative c' {
  \set Staff.instrumentName = #"Basso"
  \clef bass
% 1
  r\breve\p a1. | \time 4/2 a\breve( | a1.) r2 |
  \time 5/2 a1.( a1) | \time 3/2 a1. | a1. |
  \time 5/2 a1( a1.) | r1 a2( g1) | \time 4/2 a1 a4 r4 r2 | 
  \time 3/2 a2( g1) | \time 4/2 g1 g2 g2 |
% 2
  a1 h1 | \time 5/2 h1. c1( | c1)( c1.) | 
  \time 3/2 R1. | R | R | R |
  r2 c, b | << { b1 b2 } \new Voice { \voiceTwo a1 b2 } >>  |
  \time 5/2 c1( c1.)( | h1) c1. |
  \time 3/2 r2 c b
% 3
  as1 b4 r4 |
}

BassLyrics = \lyricmode {
  A -- gnus, A -- gnus De -- i
  qui tol -- lis, qui tol -- lis pec -- ca -- ta mun -- di
  mi -- se -- re -- re, no -- bis, mi -- se -- re -- re,
}


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