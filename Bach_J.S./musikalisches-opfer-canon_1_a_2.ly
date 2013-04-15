\version "2.14.2"
\include "suomi.ly"

global = {
%  \numericTimeSignature
  \time 2/2
%  \autoBeamOff
   \key c \minor
%  \set Staff.midiInstrument = #"voice oohs"
}
      
\header {
    title = "Musikalisches Opfer (BWV 1079)"
    subtitle = "Canon 1 a 2, super thema regium"
    composer = "Johann Sebastian Bach"
    enteredby = "Yrjö Kari-Koskinen (31.3.1685–28.7.1750)"
%    tagline = "foo"
}

\paper {
    indent = 0.0
}

upperOne = \relative c' {
    c2 es | g as | h, r4 g'4( |
    g) fis2 f4( | f) e2 es4( | 
    es) d des c | h g c f |
    es2 d | c es |

    g8 f g c g es d es |
    f g a h c es, f g |
    as d, es f g f es d |
    es f g as b as g f |
    g as b c des b as g |
    a h c d es c h a |
    h c d es f d g, d' |
    c d es f es d c h |
    c4 g es c 
}

lowerOne = \relative c {
    c4 es g c
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
