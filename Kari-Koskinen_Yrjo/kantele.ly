\version "2.18.0"
\include "suomi.ly"

global = {
%  \numericTimeSignature
  \time 2/2
%  \autoBeamOff
  \key d \major
  \tempo 2 = 60
  \set Staff.midiInstrument = #"harpsichord"
}
      
\header {
    title = "Kantele"
    composer = "Yrjö Kari-Koskinen"
    enteredby = "Yrjö Kari-Koskinen"
    copyright = "This work is licensed under the Creative Commons Attribution 4.0 International License."
    tagline = "The source is available at https://ykarikos.github.io/sheet-music/"
}

\paper {
    indent = 0.0
}

upperOne = \relative c'' {
    
}

g-aug = \relative c'' {
    d8 cis h g
}

d-six = \relative c'' {
    d8 h a fis
}

a-eleven = \relative c'' {
    d8 a g e
}

d-add-two = \relative c'' {
    d8 fis, e d
}

lowerOne = \relative c' {
  \repeat volta 2 {
    \g-aug
    \g-aug |
    \g-aug
    \g-aug |
    \d-six
    \d-six |
    \d-six
    \d-six |
    \a-eleven
    \a-eleven |
    \a-eleven
    \a-eleven |
    \d-add-two
    \d-add-two |
  }
  \alternative {
    {
      \d-add-two
      d d e fis |
    }
    {
      \d-add-two
      <<d2 d'>>
    }
  }
  \bar "|."
}

\score { 
  \new GrandStaff <<
%    \new Staff <<
%      \new Voice = upper {
%        \global
%	\upperOne
%      }
%    >>
    \new Staff <<
      \new Voice = lower {
        \global
	\lowerOne
      }
    >>
  >>

  \midi { }
  
  \layout { }

}
