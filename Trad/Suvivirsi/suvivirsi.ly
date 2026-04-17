\version "2.24.0"
\include "suomi.ly"

#(set-global-staff-size 20)

global = { 
%  \numericTimeSignature
  \time 4/4 
}

\header {
  title = "Suvivirsi"
  subtitle = "Den blomstertid nu kommer"
  composer = "Ruotsalainen kansansävelmä"
  mutopiacomposer = "Traditional"
  maintainer = "Yrjö Kari-Koskinen"
  copyright = "This work is licensed under the Creative Commons Attribution 4.0 International License."
  tagline = ""
}

\paper {
%  indent = 0
  left-margin = 2\cm
  right-margin = 2\cm
}


SopMusic = \transpose es f \relative c'' {
  \key es \major

  \partial 4 <g b,>4
  \repeat volta 2 {
    << { g4 f } \\ { b,2 } >>
    <es g,>4 <d b> | <es b>( <f d>) <g es>^\fermata <g es> |
    <b f> <b g> <as es> <as d,> | 
    \alternative {
      { <g es>2. <g b,>4 | \break } 
      { <g es>2. <b es,>4 | }
    }
  }

  << { c4 b as } \\ { es2 es8[ d] } >> <g b,>4 |
  << { f2 } \\ { b,4 a8[ es'] } >>
  <f d>4^\fermata <g es> | <as es> <as f> <g f> <g es> | <f d>2. <f b,>4 | \break
  << { g4 f } \\ { b,2 } >> <es g,>4 <d b> |
  << { c2 } \\ { b4 as } >> <c g>4^\fermata <b g> |
  <c as> <es b> <es c> << { d4 } \\ {b8[ as]} >>  |
  <es' b g>2.^\fermata
  \bar "|."
}

BassMusic = \transpose es f \relative c, {
  \key es \major
  \clef bass
  es4 | es' d c b | g b es c | d es f b, | es2. es,4 |
  es'2. g4 | as g f es | d c b es | c d es2 | b2. d4 |
  es d c g | as f' <e c> es | as, g as b | es,2.
}

\score {
  \new GrandStaff <<
    \new Staff <<
      \new Voice = "Sop" { 
        \global \SopMusic
      }
    >>
    \new Staff <<
      \new Voice = "Bass" {
        \global \BassMusic
      }
    >>
  >>
  \midi { 
    \tempo 4 = 70
  }
  \layout {
    ragged-last = ##t
  }
}