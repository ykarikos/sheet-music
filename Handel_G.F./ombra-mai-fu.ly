\version "2.24.0"
\include "suomi.ly"

global = {
%  \numericTimeSignature
  \time 3/4
%  \autoBeamOff
   \key es \major
%  \set Staff.midiInstrument = #"voice oohs"
}
      
\header {
    title = "Ombra mai fu"
    subtitle = "Serse"
    composer = "George Frideric Händel"
    enteredby = "Yrjö Kari-Koskinen"
%    tagline = "foo"
}

\paper {
    indent = 0.0
}

upperOne = \relative c' {
  es2. |
}

lowerOne = \relative c, {
  es4 es es |
}

\score { 
  \new GrandStaff <<
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
