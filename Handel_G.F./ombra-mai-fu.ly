\version "2.24.0"
\include "suomi.ly"

global = {
%  \numericTimeSignature
  \time 3/4
%  \autoBeamOff
   \key es \major
  \tempo "Larghetto"
  \set Staff.midiInstrument = #"harpsichord"
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
  << { es2.\p( } \\ { <b g>4 <b g>4 <b g>4 } >> | << { es4) } \\ { as,4 } >> <d as> <c as>8. b16 | <b g>2. |
  c4 <d as> << { es16 f g8 } \\ { g,8 <es' b>8 } >> | <f d b>2. |
  << { c'2.\f } \\ { <f, d>4 <f d> <f d> } >> | <b g es>2 r4 |
  << { as2.\p } \\ { <d, as>4 <d as> <d as> } >> | <g es b>2 r4 |
  <es' g,>\f <es f,> <d b es,> | << { c4. b8 b4( } \\ { <as es>2 <as d,>4 } >> |
  << { b8) a b a b a } \\ { <es c>4 <es c> <es c> } >> |
  << { <b' f>2( b4) } \\ {d,4 b8. as16 es'4} >> |
  << {as!8 g f4. es8 } \\ { <es c>4 es <d b> } >> |
  <es g,>2 r4 |

  % verse
  <g b,> <g b,> <g b,> | <d b> <d b> <d b> |
  es es2( | <es) b>4 <d b> << {c8. b16} \\ {as4} >> |
  \clef bass <b g es>2. |
  \clef treble <c as>4 <d as> es16 f <g es b>8 |

  << { <f d>4. <es c>8 } \\ {b2} >> <f' d b>4 |
  <c' f, d> <c f, d> <d f,> | << {es4. b8 b4} \\ {<b es,>4 es, es} >> |
  << {r8 c' as4. g8 } \\ { <es as,>4 <es c> <d b>} >> |
  <g es b>4 <g es b> <g es b> |
  << {as4 as as} \\ {<es as,>4 <d as> <c as>8. b16} >> |
  << {b'4 es, es} \\ {b2.} >> |

  <as' es>4 <as f b,> <g es b> |
  << {f4. es8 es4} \\ {<es c>4 <d b> b} >> |
  <d' as>4 <d as f> <c g c,> |
  << {h4. c16 h c4} \\ {<f, d>4 <f d> <es c>} >> |
  << {es8 f d4. c8} \\ {c4 c h} >> |
  << {c4 as'2(} \\ {c,4 c c } >> |
  << {as'4) g8 f g4} \\ {d4 <es b> <es b>} >> |
  << {<f d>8. <es c>16 <f d>4 c'4(} \\ {b,4 b d} >> |
  << {c'4) b as8. g16} \\ {<f d>4 es d} >> |
  << {g2 r4} \\ {<es b> es <as d,>} >> |
  << {es'4 es d} \\ {<b g>4 <b g> <b g>} >> |
  << {c4. b8 b4} \\ {<as es>4 <as es> <f d>} >> |
  << {b8 a a4. a8} \\ {<es c>4 <es c> <es c>} >> |
  << {b'4. c8 b4} \\ {<f d>4 <f d> <g es>} >> |
  << {as!8 g f4. d'8} \\ {<es, c>4 es d8 <b' f>} >> |
  << {<es es,>2.^\fermata} \\ {b4 as8 g as4_\fermata} >> |

%  << {} \\ {} >> |
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
