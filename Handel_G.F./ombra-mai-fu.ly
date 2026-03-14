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
}

\paper {
    indent = 0.0
}

upperOne = \relative c' {
  % intro
  << { es2.\p( } \\ { <b g>4 <b g>4 <b g>4 } >> | << { es4) } \\ { as,4 } >> <d as> <c as>8. b16 | <b g>2. |
  c4 <d as> << { es16 f g8 } \\ { g,8 <es' b>8 } >> | <f d b>2. |
  << { c'2.\f } \\ { <f, d>4 <f d> <f d> } >> | <b g es>2 r4 | \break

  << { as2.\p } \\ { <d, as>4 <d as> <d as> } >> | <g es b>2 r4 |
  <es' g,>\f <es f,> <d b es,> | << { c4. b8 b4( } \\ { <as es>2 <as d,>4 } >> |
  << { b8) a b a b a } \\ { <es c>4 <es c> <es c> } >> |
  << { <b' f>2( b4) } \\ {d,4 b8. as16 es'4} >> |
  << {as!8 g f4. es8 } \\ { <es c>4 es <d b> } >> | \break

  <es g,>2 r4 |

  % verse
  <g b,>\p <g b,> <g b,> | <d b> <d b> <d b> |
  es es2( | <es) b>4 <d b> << {c8. b16} \\ {as4} >> |
  \clef bass <b g es>2. | 
  \clef treble <c as>4 <d as> es16 f <g es b>8 | \break

  << { <f d>4. <es c>8 } \\ {b2} >> <f' d b>4 |
  <c' f, d> <c f, d> <d f,> | << {es4. b8 b4} \\ {<b es,>4 es, es} >> |
  << {r8 c' as4. g8 } \\ { <es as,>4 <es c> <d b>} >> |
  <g es b>4 <g es b> <g es b> |
  << {as4 as as} \\ {<es as,>4 <d as> <c as>8. b16} >> |
  << {b'4 es, es} \\ {b2.} >> | \pageBreak

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
  << {b'4. c8 b4} \\ {<f d>4 <f d> <g es>} >> | \break

  << {as!8\< g f4. d'8} \\ {<es, c>4 es d8 <b' f>} >> |
  << {<es es,>2.^\fermata_\f} \\ {b4 as8 g as4_\fermata} >> |
  << {f16\p g as8 g4 f8. es16} \\ {<es c>4 d4( <d) f,>} >> | <es g,>2. |

  % outro
  << { es'4\f es d} \\ { <b es,>4 <b es,> <b es,>} >> | \break
  << { c4. b8 b4 } \\ { <as es>4 <as es> <f d> } >> |
  << { b8 a a4. a8 } \\ { <es c>4 <es c> <es c> } >> |
  << { <b' f>4. <c as!>8 <b g>4 } \\ {b,4 d es} >> |
  << {<as f>8 <g es> f4. es8 } \\ { c4 es <d b> } >> |
  <es g,>2. \bar "|."
%  << {} \\ {} >> |
}

lowerOne = \relative c, {
  % intro
  es4 es es | <f' f,> <f f,> <d f,> | << { es2. } \\ { g,4 g g} >> |
  <es' as,>4 <f f,> es, | b' b b | as as as | g g g |
  f f f | es es es | <b'' es,> <as f> g | as as, b | c c c | b d <g es> |
  as, <f' b,> b,, | es2 r4 |

  % verse
  es'4 es es | b b b | <g' c,> <g c,> <g c,> | <g g,> <g g,> <es as,> |
  es, es es | <es' as,> <f f,> <g es,> | b, b b | as as as | g g g |
  as f b | es, es es | f f f |
  << {g'2.} \\ {g,4 g g} >> | <es' c>4 d es | as, as' g |
  <as f> f es | d g as | <as f> g <g g,> |
  <es as,> <f f,> <f f,> | <f b,> es es, |
  b' b <f' as,> | as g f | es es f | g g, g | as as b | c c c | b as' g |
  as b b, | c2._\fermata |
  as4 <b' b,> b,, | es4 es f |

  % outro
  g g g | as as b | c c c | d b es |
  as, <f' b,> b,, | es2. \bar "|."
}

vocalPart = \relative c'' {
  % intro
  R2.*14 |

  % verse
  r4 b2(^\p | b2.)( | b4) g4 f8.( es16) | es2. | R2.*2 |
  c4 d es16( f g8) | f4. es8 f4 |
  c'4 c d | es4. b8 b4 | r8 c8 as4. g8 | g2 es4( |
  es) d c8.( b16) | b2. |

  as'4 as g | f4. es8 es4 | d' d c | h4. c16( h) c4 |
  r8 f, d4. c8 | c4 as'2( | as4) g8( f) g4 |
  f8. es16 f4 c'( | c) b as8.( g16) | g2 r4 |

  es' es d | c4. b8 b4 | b8( a8) a4. a8 | b4. c8 b4 |
  as8(^\< g) f4. d'8 | es2.^\fermata^\f |
  f,16(^\p g as8) g4( f8.) es16 | es2. | 
  R2.*6 \bar "|."
}

vocalLyrics = \lyricmode {
  Om -- bra mai fù di ve -- ge -- ta -- bi -- le
  ca -- ra_ed a -- ma -- bi -- le so -- a -- ve più,
  om -- bra mai fù di ve -- ge -- ta -- bi -- le
  ca -- ra_ed a -- ma -- bi -- le so -- a -- ve più,
  ca -- ra_ed a -- ma -- bi -- le
  om -- bra mai fù
  di ve -- ge -- ta -- bi -- le
  ca -- ra_ed a -- ma -- bi -- le so -- a -- ve più,
  so -- a -- ve più. 
}

\score {
  <<
    \new Staff \with {
      \RemoveAllEmptyStaves
    } <<
      \new Voice = vocal \transpose es f {
        \global
        \vocalPart
      }
      \new Lyrics \lyricsto vocal \vocalLyrics
    >>
    \new GrandStaff <<
      \new Staff <<
        \new Voice = upper \transpose es f {
          \global
	  \upperOne
        }
      >>
      \new Staff <<
        \new Voice = lower \transpose es f {
          \global
	  \clef bass
	  \lowerOne
        }
      >>
    >>
  >>

  \midi { }

  \layout {
    \context {
      \Score
      \override NonMusicalPaperColumn.page-break-permission = ##t
    }
  }
}
