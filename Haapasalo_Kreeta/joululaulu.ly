\version "2.18.0"
\include "suomi.ly"

#(set-global-staff-size 18)

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

stanzaOneLyrics = \lyricmode {
  Tu -- li tuik -- kaa pä -- re -- hes -- sä,
  ei oo sii -- nä pe -- re -- hes -- sä
  lam -- pun lois -- to -- a.

  Sy -- dä -- mel -- lä toi -- vo -- val -- la
  a -- las -- ton -- na pal -- ja -- hal -- la
  viet -- tää lap -- set lat -- ti -- al -- la
  jou -- lun aat -- to -- a.
}

\score { 
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = upper {
        \global
      	\upperOne
      }
      \new Lyrics \lyricsto "upper" {
         \stanzaOneLyrics
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
