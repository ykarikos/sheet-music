\version "2.18.0"

% Vesterinen: Agnus Dei
% Bass part

BassMusic = \relative c' {
  \set Staff.instrumentName = #"Basso"
  \clef bass
% 1
  r\breve\p a1. | \time 4/2 a\breve(\< | a1.)\> r2\! |
  \time 5/2 a1.( a1) | \time 3/2 a1. | a1.\< |
  \time 5/2 a1\>( a1.) | r1\! a2( g1) | \time 4/2 a1\< a4\> r4\! r2 | 
  \time 3/2 a2( g1)\cresc | \time 4/2 g1 g2 g2 |
% 2
  a1 h1 | \time 5/2 h1.\mf c1( | c1)(\> c1.)\pp | 
  \time 3/2 R1. | R | R | R |
  r2\mp c, b | << { b1 b2 } \new Voice { \voiceTwo a1 b2 } >>  |
  \time 5/2 c1( c1.)( | h1) c1.\< |
  \time 3/2 r2\f c b
% 3
  as1 b4 r4 | r2 c h | a1 b2 | 
  \time 4/2 c\breve\> | \time 3/2 h1.\p |
  \time 5/2 r1 h1. |
  \time 3/2 << 
    { \stemDown \slurDown h1.( h1) } 
    \new Voice 
    { \voiceOne cis1.( | d1) } 
  >> r2 | R1. |
  \stemNeutral
  \time 6/2 h2-\tweak X-offset #-5 \mf ais( h) cis d( cis) r
  h ais( h) cis d( cis4) r4 
  h2 ais4( h) cis2 d4( cis) r4 
  h4 ais( h) cis d( cis\breve)(-\subP |
  \time 2/2 cis1)( |
% 4 / 38
  \time 3/2 cis1.)( |
  \time 4/2 cis\breve)( |
  \time 3/2 cis1.)( |
  \time 4/2 cis\breve) |
% 5
  cis'1-\subF h2 a h | r2 cis4 his ais2 his | cis( his)  cis4 r4 a2(-\subP | 
  a) a, a1 | c2 r2 f2( | f4) f, f2 g | d'( h1) | a1. | r2 r\pp f( | f) f f1 |
% 6
  as2 r des( | des4) des b2 b | as( g1) | f2 r1 r1 | 
  R\breve | R\breve | R1. R\breve |
  r2\mp f'( e\!) | d e e |
% 7
  f e1 | f1\< f,1. | r1.-\tweak X-offset #8 \mf
  \quiTollis 
% 8
  g4(\< g2) |
  g2(\f fis1) | g1. a4 r4 r2 | b2( c1) | d1 c2 c |
  b2 a1 | g1 g'1. | 
  R1*5/2 | R\breve | R1. |
% 9
  R1. | r2\mp d c | b1 c2 | d( cis1.) | d2 r r\p b( |
  b) b b1 | a4 r r2 r1 | r2 r as( | as) as ces1 |
% 10
  g4 r r1 r | r2 r\mf ces( | ces4) ces ces2 des | as( b1) |
  es,1\< r2 | es'2(\f f1) | c2 r | c4( d8 e d1) | g,4 r r2 |
% 11
  g2( a1) | e'4 r r2 | e8( cis dis e fis1) | h, r2 |
  h2( cis1) | fis,1 r2-\tweak X-offset #2 \mf |
  dis'2( eis1) | fis1.(\> | fis)(\mp | fis)( |
% 12
  fis\breve)\> | R\breve\! | gis,1-\tweak X-offset #-5 \p fis |
  e1.\< fis2\> r\! |
  gis1.(\pp gis\breve) | gis\breve( gis1.)\fermata |
}

BassLyrics = \lyricmode {
  A -- gnus, A -- gnus De -- i
  qui tol -- lis, qui tol -- lis pec -- ca -- ta mun -- di
  mi -- se -- re -- re, no -- bis, mi -- se -- re -- re,
  mi -- se -- re -- re, no -- bis.
  A -- gnus
  A -- gnus de -- i,
  A -- gnus de -- i,
  A -- gnus de -- i,
  A -- gnus de -- i

  mi -- se -- re -- re, mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re, mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re, mi -- se -- re -- re no -- bis,
  
  qui tol -- lis pec -- ca -- ta mun -- di,
  qui tol -- lis pec -- ca -- ta mun -- di,
  qui tol -- lis pec -- ca -- ta mun -- di,
  qui tol -- lis pec -- ca -- ta mun -- di,

  qui tol -- lis
  qui tol -- lis pec -- ca -- ta mun -- di,

  do -- na no -- bis pa -- cem,
  do -- na no -- bis,
  do -- na no -- bis,
  do -- na no -- bis pa -- cem,

  pa -- cem, pa -- cem,
  pa -- cem, pa -- cem,
  pa -- cem, pa -- cem,

  Do -- na no -- bis pa -- cem.
}
