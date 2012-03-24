% Vesterinen: Agnus Dei
% Bass part

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
  as1 b4 r4 | r2 c h | a1 b2 | 
  \time 4/2 c\breve | \time 3/2 h1. |
  \time 5/2 r1 h1. |
  \time 3/2 << { \stemDown h1.( h1) } \new Voice { \voiceOne \stemUp cis1.( | d1) } >>
  r2 | R1. |
  \time 6/2 h2 ais( h) cis d( cis) r
  h ais( h) cis d( cis4) r4 
  h2 ais4( h) cis2 d4( cis) r4 
  h4 ais( h) cis d( cis\breve)( |
  \time 2/2 cis1)( |
% 4 / 38
  \time 3/2 cis1.)( |
  \time 4/2 cis\breve)( |
  \time 3/2 cis1.)( |
  \time 4/2 cis\breve) |
% 5
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
}
