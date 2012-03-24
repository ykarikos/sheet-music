% Vesterinen: Agnus Dei
% Alto part

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
  h1. | << { cis2( d1) } \new Voice { \voiceTwo h1.} >> | 
  r1 r2 h ais( h) | cis d( cis) r h ais( |
  h) cis d( cis4) r4 
  h2 ais4( h) cis2 d4( cis) r4 
  h4 ais( h) cis d( cis2)( |  
  \time 2/2 cis1) |
% 4
}

AltoLyrics = \lyricmode {
  A -- gnus, A -- gnus De -- i
  qui tol -- lis, qui tol -- lis pec -- ca -- ta mun -- di
  mi -- se -- re -- re, mi -- se -- re -- re,
  mi -- se -- re -- re, no -- bis, mi -- se -- re -- re,
  mi -- se -- re -- re, no -- bis.
  A -- gnus
  A -- gnus de -- i,
  A -- gnus de -- i,
  A -- gnus de -- i,
  A -- gnus de -- i
}
