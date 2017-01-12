\version "2.18.0"

% Vesterinen: Agnus Dei
% Alto part

AltoMusic = \relative c'' {
  \set Staff.instrumentName = #"Alto"
% 1
  a\breve\p( a1.) | \time 4/2 e\breve(\< | e1.)\> r2\! |
  \time 5/2 r1. a1 | \time 3/2 e1. | g1.\< |
  \time 5/2 h1\>( e,1.) | r1\! a1. | \time 4/2 a\breve |
  \time 3/2 a1 a2\cresc | \time 4/2 a1 a2 a |
% 2
  e1 gis | \time 5/2 e1.\mf g1 | r1\pp c,1.( |
  \time 3/2 c2) b1 | << { b1 b4  } \new Voice { \voiceTwo as1 b4 } >> r4 |
  r2\p c h! | << {a!1\> h4 } \new Voice { \voiceTwo h1 h4 } >> r4\! |
  r2\mp c g | g1 g2 |
  \time 5/2 c1( c1.)( | c1) c1.\< |
  \time 3/2 r2\f c g' |
% 3
  g1 g4 r4 | r2 f g | g1 g2 |
  \time 4/2 es2(\> d1.) |
  \time 3/2 h1.\p |
  \time 5/2 R\breve*5/4 | \time 3/2 R1. |
  h1. | << 
    { \slurUp cis2( d1)\< }
    \new Voice 
    { \voiceTwo h1.} 
  >> |
  r1\! r2\mf h ais( h) | cis d( cis) r h ais( |
% 4
  h) cis d( cis4) r4 
  h2 ais4( h) cis2 d4( cis) r4 
  h4 ais( h) cis d( \slurDown cis2)(-\subP |  
  \time 2/2 \slurDown cis1)( |
% 4 / 38
  \time 3/2 \slurDown cis1.)( |
  \time 4/2 \slurDown cis\breve)( |
  \time 3/2 \slurDown cis1.)( |
  \time 4/2 cis\breve) |
% 5
  cis'1-\subF cis2 cis cis | r2 cis4 cis cis2 cis | cis1 cis4 r cis,2(-\subP |
  cis) dis e1 | es2 r f( | f4) f e!2 d | e1. | e1. |
  r2 r\pp c( | c) c f1 |
% 6
  es2 r es( | es4) des f2 d | c1. | f2 r1 f1 | f\breve |
  r1 f | e1. | f1 f( | f1.)\> | R1.\!
% 7
  R1. | R1*5/2-\tweak X-offset #13 \mf | \quiTollis g2.( |
% 8
  g1.)\< | c,2(\f d1) | d1. f4 r r2 | c2( f1) | f f2 f | 
  d d1 | d fis1. | r1\p d e2 | f1 e2 r2 | 
  d1 << { \stemDown d2 } \new Voice { \voiceTwo \stemUp e2 } >> |
% 9
  << { \stemDown e1 } \new Voice { \voiceTwo \stemUp f1 } >> e2 |
  r2\mp d a' | a1 g2 | d2( a'1.) | e2 r2 r\p d( |
  d) d des1 | cis4 r cis2. dis4 e2 | es r c( | c) c ces1 |
% 10
  h4 r h2. cis4 d1 | des4 r r2\mf es( | es4) f ges2 f | es( d1) |
  es1\< r2 | b'(\f a1) | b2 r | g( fis1) | g4 r r2 |
% 11
  << { \stemDown d'2( cis1) } \new Voice { \voiceTwo \stemUp d1. } >> |
  d4 r r2 | h( ais1) | h r2 |
  fis2( eis1) | fis1.(\> | fis1)\mf fis2 | cis1 r2 | R1.-\tweak X-offset #4 \mp |
  <<
    { \stemDown dis2( eis1) }
  \new Voice
    { \voiceTwo \stemUp \slurUp fis2( s1) }
  >> |
% 12
  fis\breve\> | r1-\tweak X-offset #3 \p gis( | gis) gis | gis1.\< gis2\> r2\! |
  h,1.(\pp ais\breve) | h\breve( h1.)\fermata |
}

AltoLyrics = \lyricmode {
  A -- gnus, A -- gnus De -- i
  qui tol -- lis, qui tol -- lis pec -- ca -- ta mun -- di
  mi -- se -- re -- re, mi -- se -- re -- re,
  mi -- se -- re -- re, no -- bis, mi -- se -- re -- re,
  mi -- se -- re -- re, no -- bis.
  A -- gnus
  A -- gnus De -- i,
  A -- gnus De -- i,
  A -- gnus De -- i,
  A -- gnus De -- i
  
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

  do -- na no -- bis do -- na no -- bis, 
  do -- na no -- bis pa -- cem,
  do -- na no -- bis,
  do -- na no -- bis,
  do -- na no -- bis,
  do -- na no -- bis pa -- cem,

  pa -- cem, pa -- cem,
  pa -- cem, pa -- cem,
  pa -- cem, pa -- cem,
  pa -- cem,

  Do -- na no -- bis pa -- cem.
}
