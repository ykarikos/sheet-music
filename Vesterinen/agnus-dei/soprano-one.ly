\version "2.18.0"

% Vesterinen: Agnus Dei
% Soprano I part

SopOneMusic = \relative c'' {
  \set Staff.instrumentName = #"Soprano I"
% 1
  a\breve\p( a1.) | \time 4/2 a\breve( | a1.) r2 |
  \time 5/2 r1. a1 | \time 3/2 a1. | h1.\< |
  \time 5/2 c1\>( h1.) | r1\! a1. | \time 4/2 c1\< h4\> r4\! r2 |
  \time 3/2 a1.\cresc | \time 4/2 c1 h2 h |
% 2
  a1 a | \time 5/2 a1.\mf h1 | r1\pp c,1.( |
  \time 3/2 c2) d1 | << {d1 d4 } \new Voice { \voiceTwo es1 d4 } >> r4 |
  r2\p c\< d | << { d1\> d4 } \new Voice { \voiceTwo es1 d4 } >> r4\! |
  r2\mp c c | c1 c2 |
  \time 5/2 c1( h1.)( | h1) h1.\< |
  \time 3/2 r2\f c' d |
% 3
  << { es1 d4 } \new Voice { \voiceOne d1 d4 } >> r4 |
  r2 c d | << { es1 d2 } \new Voice { \voiceOne d1 d2 } >> |
  \time 4/2  << { c\breve\> } \new Voice { \voiceOne c2( h1.) } >> |
  \time 3/2 h1.\p | 
  \time 5/2 R\breve*5/4 | \break
  \time 3/2 R1. |
  h1. | 
  << 
    { \stemDown ais2 \glissando h1\< } 
    \new Voice 
    { \voiceTwo \stemUp h2 \glissando fis1 } 
  >> |
  \time 6/2 r1\!^"Più mosso" r1 r2\mf h | ais( h) cis d( cis) r2 |
  h ais( h) cis d( cis4) r4 |
  h2 ais4( h) cis2 d4( cis) r4 
  h4 ais( h) |
  \time 2/2 cis d( cis2)(-\subP |
% 4 / 38
  \time 3/2 cis1.)(^"Tempo I" |
  \time 4/2 cis\breve)( |
  \time 3/2 cis1.)( |
  \time 4/2 cis\breve) |
% 5
  \time 5/2 cis1-\subF dis2 e dis |
  \time 4/2 r2 cis4 dis e2 dis | cis( his) cis4 r4 cis2(-\subP |   cis) cis cis1 | 
  \time 3/2 c2 r c( | c4) c a( g) a2 | a( gis1) | a1. |
  r2 r2\pp a( | 
  \time 4/2 a) a a1
% 6
  \time 3/2 as2 r2 f( | f4) g as2 g | f( e1)
  \time 5/2 f2 r1\p f1 |
  \time 4/2 f\breve | r1 f1 |
  \time 3/2 e2( f g) |
  \time 4/2 as1 g( |
  \time 3/2 g1.)\> | R1.\! |
% 7
  R1.^"Più mosso" | \time 5/2 r1 r2\mf
  f2( g)
  \time 6/2 as g g f f( e)
  f g r
  f4( g) as2 g4 g
  f2 f4( e) f2 g4 r4
  f( g) as g
  g f f( e) f 
  g2.( g1)( |
% 8
  \time 3/2 g1.)\< | g2(\f^"Tempo I" a1) |
  \time 5/2 << { \stemDown b1. } \new Voice { \voiceTwo \stemUp a1. } >>  a4 r4 r2 |
  \time 3/2 g2( a1) |
  \time 4/2 b a2 a |
  \time 3/2  << { \stemDown g2 g1 } \new Voice { \voiceTwo \stemUp g2 g( fis) } >> |
  \time 5/2 g1 a1. | R1*5/2 | 
  \time 4/2 R\breve |
  \time 3/2 R1. |
% 9
  R1. | r2\mp d e << { \stemDown e1 } \new Voice { \voiceTwo \stemUp f1 } >> e2 |
  \time 4/2 d( cis1.) | d2 r2 r1 |

  R\breve | r2\p cis2. cis4 c!2 | \time 3/2 c2 r2 r | \time 4/2 R\breve
% 10
  \time 5/2 r2 h2. h4 b1 | b4 r r2\mf ges( | ges4) ges es2 as | as( f1) |

  f1\< r2 | es'4(\f^"Più mosso" d8 es c1) | c2.( b8 a | g1) g2 | g4 r r2 |
% 11
  g'8( fis e fis e4. d8 e2) | 
  \time 2/2 e4( d8 e d cis h a |
  \time 3/2 h1) h2 | h1 r2 |
  h4.( ais8 gis1) | gis1 r2 | fis2(\mp eis1) | fis1.(\> | fis)(\p^"Tempo I" | fis)( |
% 12
  \time 4/2 fis\breve)\> | R\breve\! | gis1 ais | 
  \time 5/2 h1.\< ais2\> r2\! |
  \time 7/2 gis1.(\pp 
  << { \stemDown fisis\breve) } \new Voice { \voiceTwo \stemUp gis\breve } >> |
  gis\breve( gis1.)\fermata \bar "||"
}

SopOneLyrics = \lyricmode {
  A -- gnus, A -- gnus De -- i
  qui tol -- lis, qui tol -- lis pec -- ca -- ta mun -- di
  mi -- se -- re -- re, mi -- se -- re -- re,
  mi -- se -- re -- re, no -- bis, mi -- se -- re -- re,
  mi -- se -- re -- re, no -- bis.
  A -- gnus \skip 1
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
