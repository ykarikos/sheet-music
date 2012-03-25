% Vesterinen: Agnus Dei
% Tenor I part

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
  \time 3/2 << { \stemDown ais1.( | h1) } \new Voice { \voiceTwo \stemUp h1.( | fis1) } >> r2 |
  R1. |
  \time 6/2 r1 h2 ais( h) cis | d( cis) r
  h ais( h) cis d( cis4) r4 
  h2 ais4( h) cis2 d4( cis) r4 
  h4 ais( h) cis d( cis1)( |
  \time 2/2 cis1) |
% 4 / 38
  r2 cis1 | h h2 cis | cis gis1 | h1 h |
% 5
  cis1 cis2 cis cis | r2 cis4 cis cis2 cis | cis1 cis4 r a2( | h) h h1 |
  c4 r c2. h4 | a( g) f( e) g2( | a h1) | c1. | r2 r a( | a) h c1 |
% 6
  ces2 r des( | des4) b c2. b4 | b2( g1) | f2 r1 r | R\breve |
  R\breve | R1. | R\breve | r2 f( g) | as g g | 
% 7  
  f f( e) | f1 g1. | r2 \quiTollis g4( |
% 8
  g1.)  | b2( a1) | a1. c4 r r2 | d( c1) | b c2 c |
  a1 a2 | c1 d1. | R1*5/2 | R\breve | d1 cis2 |
% 9
}

TenOneLyrics = \lyricmode {
  A -- gnus, A -- gnus De -- i
  qui tol -- lis, qui tol -- lis pec -- ca -- ta mun -- di
  mi -- se -- re -- re, no -- bis, mi -- se -- re -- re,
  mi -- se -- re -- re, no -- bis.
  A -- gnus
  A -- gnus De -- i,
  A -- gnus de -- i,
  A -- gnus de -- i,
  A -- gnus de -- i
  
  qui tol -- lis pec -- ca -- ta mun -- di

  mi -- se -- re -- re, mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re, mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re, mi -- se -- re -- re no -- bis,
  qui tol -- lis pec -- ca -- ta mun -- di
  
  qui tol -- lis pec -- ca -- ta mun -- di,
  qui tol -- lis pec -- ca -- ta mun -- di,
  qui tol -- lis pec -- ca -- ta mun -- di --
  
  qui tol -- lis,
  qui tol -- lis pec -- ca -- ta mun -- di,

  do -- na
}
