%%% Adiós, Muchcachos
\include "suomi.ly"

\header {
  title = "Adiós, Muchachos"
%  subtitle = 
  composer = "Julio Cesar Sanders"
}

<< 
  \chords { 
    r4 |
    g4 h:7  | c2      | d:7     | g   |
    % 5
    g4 h:m7 | a2:m    | d4  d:7 | g2  |
    % 9
    g4 h:7  | c2      | d:7     | g   | 
    % 13
    g:7     | c4  c:m | g  a8:7 d:7 | g2 |
    % 17
    h:7     | e:m     | d:7     | g   |
    % 21
    c4 c:m  | g4. a8:m | d2:7   | g  |
    % 25
    h:7     | e:m     | d:7     | g   |
    % 29
    c4 c:m  | g4. gis8:dim | a4:m d:7 | g8 d g4 |
  }
  
\relative c'' {
  \time 2/4
  \key g \major
  \partial 4 r16 d d d |
  << {h'16( g) g g} {g d d d}>> << {a'( fis) fis fis} {dis dis dis dis} >>  |
  << {g8( e)} {e c} >> r16 << {a' a g } {fis fis e} >> |
  << {g8 fis} {e d!} >> r16 << {g g fis} {e e d} >> |
  << {e8 d} {c h} >> r16 d cis d |
  g d cis d fis d cis d |
  << {e8( c)} {c! a} >> r16 d cis d |
  fis d cis d e c h c |
  << {d8( h)} {h g}>> r16 d' d d |
  << {h'16( g) g g} {g d d d}>> << {a'( fis) fis fis} {dis dis dis dis} >>  |
  << {g8( e)} {e c} >> r16 << {a' a g } {fis fis e} >> |
  << {g8 fis} {e d!} >> r16 << {g g fis} {e e d} >> |
  << {e8 d} {c h} >> r16 g' g d |
  d( c c h \stemDown h a a g |
  d'8) c( c16) es( c a) |
  \stemNeutral a( g fis g) h8 a |
  g r16 h( c h ais h) \bar "||"
  g' fis8 h,16( c h ais h) |
  fis' e!8 d16( e d cis d) |
  g fis8 d16 e( fis g a!) |
  h8. g16( a g fis g) |
  h( a8 g16 es8.) c!16( |
  a' g8) d16( cis d fis e!) |
  e d8 d16 cis( d fis e |
  d8) r16 h( c! h ais h) |
  g' fis8 h,16( c h ais h) |
  fis' e8 d16( e d cis d) |
  g fis8 d16 e( fis g a!) |
  h8. g16( a g fis g) |
  h( a8 g16 es8.) c!16( |
  a' g8) d16( cis d fis e!) |
  d c!8 e16 << {h'8 a} {d, c} >>|
  <<g' h,>> r8 r4 \bar "|."
}
>>
  
%% Optional version number
\version "2.16.0"
