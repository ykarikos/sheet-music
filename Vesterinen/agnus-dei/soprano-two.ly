% Vesterinen: Agnus Dei
% Soprano II part

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
  h1. | fis2( e1) | r1 r1 h'2 ais( | h) cis d( cis) r h |
  ais( h) cis d( cis4) r4 
  h2 ais4( h) cis2 d4( cis) r4 
  h4 ais( h) cis d( |
  \time 2/2 cis1) |
% 4 / 38
  r2 << { \stemDown cis,1 } \new Voice { \voiceTwo \stemUp cis2( dis) } >> |
  << { \stemDown dis1 } \new Voice { \voiceTwo \stemUp e1 } >> \stemUp dis2 dis |
  cis cis( his) | cis1 dis |
% 5
  cis'1 dis2 dis dis | r2 cis4 dis dis2 dis | cis1 cis4 r4 e,2( |
  e) e a1 | g2 r a( | a4) h c2 h | a1. | gis | r2 r a( | g) g g1 |
% 6
  as2 as2. g4 | f( es) des( c) f2 | f1 f2( | f1.)( f1) | e( f) |
  r1 r2 f | f1. | g1 g( | g1.) | R1. |
% 7
  R1. | r1 r1 \quiTollis g4( g1)( |
% 8
  g1.) | d2( g1) | g1. g1( | g) g2 | e e1 e2 |
  g a1 |
  << { \stemDown a1 } \new Voice { \voiceTwo \stemUp b1 } >> d1.( |
  d1)( d1.)( | d\breve)( | d1.)
% 9
}

SopTwoLyrics = \lyricmode {
  A -- gnus, A -- gnus De -- i
  qui tol -- lis, qui tol -- lis pec -- ca -- ta mun -- di
  mi -- se -- re -- re,  mi -- se -- re -- re,
  no -- bis, mi -- se -- re -- re,
  mi -- se -- re -- re no -- bis.
  A -- gnus
  A -- gnus de -- i,
  A -- gnus de -- i,
  A -- gnus de -- i,
  A -- gnus de -- i
  
  qui tol -- lis pec -- ca -- ta mun -- di

  mi -- se -- re -- re, mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re, mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re, mi -- se -- re -- re no -- bis,
  A -- gnus
  A -- gnus De -- i
  
  qui tol -- lis pec -- ca -- ta mun -- di,
  qui tol -- lis pec -- ca -- ta mun -- di,
  qui tol -- lis pec -- ca -- ta mun -- di --
  
  qui tol -- lis,
  qui tol -- lis pec -- ca -- ta mun -- di,
  
}