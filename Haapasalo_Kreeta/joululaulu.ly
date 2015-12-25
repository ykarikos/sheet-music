\version "2.18.0"
\include "suomi.ly"

global = {
%  \numericTimeSignature
  \time 3/4
%  \autoBeamOff
   \key d \minor
%  \set Staff.midiInstrument = #"voice oohs"
}
      
\header {
    title = "Kreeta Haapasalon joululaulu"
    subtitle = "Tuli tuikkaa pärehessä"
    composer = "Kreeta Haapasalo"
    enteredby = "Yrjö Kari-Koskinen"
%    tagline = "foo"
}

\paper {
    indent = 0.0
}

start = \relative c' {
  d8 d f4 d | cis8 d e4 cis | 
  e8 f g4 e | f8 g a4 f |
}

end = \relative c' {
  \time 2/4 d4 f8( e) |
  a,4 cis | d2 |
}

upperOne = \relative c' {
  \start
  \end
  \time 3/4 \start
  d8 e f4 d | cis8 e g4 f |
  \end
  \bar "|."
}

lowerOne = \relative c {
  f4 a2 | g4 a2 | 
  a8 h cis2 | d2. |
  b2 | a4 g | f2 |

  f8 f a2 | g4 a2 | 
  a8 h cis2 | d2. |
  f,8 g a2 | a2. | 
  b2 | a4 g | f2 |
  
}

\score { 
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = upper {
        \global
	\upperOne
      }
    >>
    \new Staff <<
      \new Voice = lower {
        \global
	\clef bass
	\lowerOne
      }
    >>
  >>

  \midi { }
  
  \layout { }

}
