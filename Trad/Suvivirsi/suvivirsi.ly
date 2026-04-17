\version "2.18.0"
\include "suomi.ly"

#(set-global-staff-size 18)

global = { 
%  \numericTimeSignature
  \time 4/4 
}

\header {
  title = "Suvivirsi"
  composer = "Ruotsalainen kansansävelmä"
  mutopiacomposer = "Traditional"
  maintainer = "Yrjö Kari-Koskinen"
  copyright = "This work is licensed under the Creative Commons Attribution 4.0 International License."
  tagline = "The source is available at https://ykarikos.github.io/sheet-music/"
}

\paper {
%  indent = 0
}


SopMusic = \relative c'' {
  \key es \major

  \partial 4 <g b,>4
  \repeat volta 2 {
    << { g4 f } \\ { b,2 } >>
    <es g,>4 <d b> | <es b>( <f d>) <g es>^\fermata <g es> |
    <b f> <b g> <as es> <as d,> | 
  }
  \alternative {
    { <g es>2. <g b,>4 }
    { <g es>2. <b es,>4 }
  } {}

  << { c4 b as } \\ { es2 es8[ d] } >> <g b,>4 |
  << { f2 } \\ { b,4 a8[ es'] } >>
  <f d>4^\fermata <g es> | <as es> <as f> <g f> <g es> | <f d>2. <f b,>4 |
  << { g4 f } \\ { b,2 } >> <es g,>4 <d b> |
  << { c2 } \\ { b4 as } >> <c g>4^\fermata <b g> |
  <c as> <es b> <es c> << { d4 } \\ {b8[ as]} >>  |
  <es' b g>2.^\fermata
  \bar "|."
}

stanzaOneLyrics = \lyricmode {
  Jo jou- tui ar- mas ai- ka ja su- vi su- loi- nen. Kau-
}

stanzaOneVoltaLyrics = \lyricmode {
  \skip 1
  nii- sti jo- ka paik- kaa ko- ris- taa kuk- ka-
  \skip 1 \skip 1
  nen. Nyt siu- na- us- taan suo- pi taas läm- pö au- rin- gon.
  Se luon- non uu- deks' luo- pi, sen kut- suu e- lo- hon.
}


BassMusic = \relative c, {
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
  }
}