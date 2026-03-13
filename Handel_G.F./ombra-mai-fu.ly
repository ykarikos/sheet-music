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
    title = "Ombra mai fù"
    subtitle = "Serse"
    composer = "George Frideric Händel"
    enteredby = "Yrjö Kari-Koskinen"
%    tagline = "foo"
}

\paper {
    indent = 0.0
}

upperOne = \relative c' {
  % intro
  << { es2.( } \\ { <b g>4 <b g>4 <b g>4 } >> | << { es4) } \\ { as,4 } >> <d as> <c as>8. b16 | <b g>2. |
  c4 <d as> << { es16 f g8 } \\ { g,8 <es' b>8 } >> | <f d b>2. |
  << { c'2. } \\ { <f, d>4 <f d> <f d> } >> | <b g es>2 r4 |
  << { as2. } \\ { <d, as>4 <d as> <d as> } >> | <g es b>2 r4 |
  <es' g,> <es f,> <d b es,> | << { c4. b8 b4( } \\ { <as es>2 <as d,>4 } >> |
  << { b8) a b a b a } \\ { <es c>4 <es c> <es c> } >> |
  << { <b' f>2( b4) } \\ {d,4 b8. a16 es'4} >> |
  << {as!8 g f4. es8 } \\ { <es c>4 es <d b> } >> |
  <es g,>2 r4 |

  % verse
}

lowerOne = \relative c, {
  es4 es es | <f' f,> <f f,> <d f,> | << { es2. } \\ { g,4 g g} >> |
  <es' as,>4 <f f,> es, | b' b b | as as as | g g g |
  f f f | es es es | <b'' es,> <as f> g | as as, b | c c c | b d <g es> |
  as, <f' b,> b,, | es2 r4 |

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
