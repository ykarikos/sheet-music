% Vesterinen: Agnus Dei
% Soprano I part

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
  r2 c d | << { es1 d2 } \new Voice { \voiceOne d1 d2 } >> |
  \time 4/2  << { c\breve } \new Voice { \voiceOne c2( h1.) } >> |
  \time 3/2 h1. | 
  \time 5/2 R\breve*5/4 |
  \time 3/2 R1. |
  h1. | << { \stemDown ais2( h1) } \new Voice { \voiceTwo \stemUp h2( fis1) } >> |
  \time 6/2 r1 r1 r2 h | ais( h) cis d( cis) r2 |
  h ais( h) cis d( cis4) r4 |
  h2 ais4( h) cis2 d4( cis) r4 
  h4 ais( h) |
  \time 2/2 cis d( cis2)( |
% 4 / 38
  \time 3/2 cis1.)( |
  \time 4/2 cis\breve)( |
  \time 3/2 cis1.)( |
  \time 4/2 cis\breve) |
% 5
  \time 5/2 cis1 dis2 e dis |
  \time 4/2 r2 cis4 dis e2 dis | cis( his) cis4 r4 cis2( |   cis) cis cis1 | 
  \time 3/2 c2 r c( | c4) c a( g) a2 | a( gis1) | a1. |
  r2 r2 a( | 
  \time 4/2 a) a a1
% 6
  \time 3/2 as2 r2 f( | f4) g as2 g | f( e1)
  \time 5/2 f2 r1 f1 |
  \time 4/2 f\breve | r1 f1 |
  \time 3/2 e2( f g) |
  \time 4/2 as1 g( |
  \time 3/2 g1.) | R1. |
% 7
  R1. | \time 5/2 r1 r2
  \quiTollis g2.( g1)( |
% 8
  \time 3/2 g1.) | g2( a1) |
  \time 5/2 << { \stemDown b1. } \new Voice { \voiceTwo \stemUp a1. } >>  a4 r4 r2 |
  \time 3/2 g2( a1) |
  \time 4/2 b a2 a |
  \time 3/2  << { \stemDown g2 g1 } \new Voice { \voiceTwo \stemUp g2 g( fis) } >> |
  \time 5/2 g1 a1. | R1*5/2 | 
  \time 4/2 R\breve |
  \time 3/2 R1. |
% 9
  R1. | r2 d e << { \stemDown e1 } \new Voice { \voiceTwo \stemUp f1 } >> e2 |
  d( cis1.) | d2 r2 r1 |
  R\breve | r2 cis2. cis4 c!2 | c2 r2 r | R\breve
% 10
  r2 h2. h4 b1 | b4 r r2 ges( | ges4) ges es2 as | as( f1) |
  f1 r2 | es'4( d8 es c1) | c2.( b8 a | g1) g2 | g4 r r2 |
% 11
  g'8( fis e fis e4. d8 e2) | 
  \time 2/2 e4( d8 e d cis h a |
  \time 3/2 h1) h2 | h1 r2 |
  h4.( ais8 gis1) | gis1 r2 | fis2( eis1) | fis1.( | fis)( | fis)( |
% 12
  \time 4/2 fis\breve) | R\breve | gis1 ais | 
  \time 5/2 h1. ais2 r2 |
  \time 7/2 gis1.( 
  << { \stemDown fisis\breve) } \new Voice { \voiceTwo \stemUp gis\breve } >> |
  gis\breve( gis1.) \bar "||"
}

SopOneLyrics = \lyricmode {
  A -- gnus, A -- gnus De -- i
  qui tol -- lis, qui tol -- lis pec -- ca -- ta mun -- di
  mi -- se -- re -- re, mi -- se -- re -- re,
  mi -- se -- re -- re, no -- bis, mi -- se -- re -- re,
  mi -- se -- re -- re, no -- bis.
  A -- gnus
  A -- gnus De -- i,
  A -- gnus De -- i,
  A -- gnus De -- i,
  A -- gnus De -- i --
  
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
  
  do -- na no -- bis pa -- cem,
  do -- na no -- bis,
  do -- na no -- bis,
  do -- na no -- bis pa -- cem,
  pa -- cem, pa -- cem,
  pa -- cem, pa -- cem,
  pa -- cem, pa -- cem,

  Do -- na no -- bis pa -- cem.
}
