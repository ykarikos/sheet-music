\version "2.18.0"
\include "suomi.ly"

#(set-global-staff-size 18)

global = {
%  \numericTimeSignature
  \time 3/4
%  \autoBeamOff
  \key a \minor
  \clef bass
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
  a,4 cis | d2
}

upperOne = \transpose d a, \relative c' {
  \start
  \end
  \time 3/4 \start
  d8 e f4 d | cis8 e g4 f |
  \end
  \bar "|."
}

lowerOne = \transpose d a, \relative c {
  f4 a2 | g4 a2 | 
  a8 h cis2 | d2. |
  b2 | a4 g | f2 |

  f4 a2 | g4 a2 | 
  a8 h cis2 | d2. |
  f,8 g a2 | a2. | 
  b2 | a4 g | f2
}

stanzaOneLyrics = \lyricmode {
  \set stanza = "1."
  Tu -- li tuik -- kaa pä -- re -- hes -- sä,
  ei oo sii -- nä pe -- re -- hes -- sä
  lam -- pun lois -- to -- a.

  Sy -- dä -- mel -- lä toi -- vo -- val -- la
  a -- las -- ton -- na pal -- ja -- hal -- la
  viet -- tää lap -- set lat -- ti -- al -- la
  jou -- lun aat -- to -- a.
}

stanzaTwoLyrics = \lyricmode {
  \set stanza = "2."
  ”Jou -- lu -- juh -- lan kal -- lis aat -- to
  taa -- sen meil -- lä on nyt taat -- to,
  vaan ei syö -- tä -- vää”,

  lau -- sui lap -- set i -- säl -- len -- sä
  pyyh -- \skip 1 kein pois kyy -- ne -- leen -- sä,
  su -- rui -- sas -- ti sy -- dä -- men -- sä
  vie -- lä ty -- kyt -- tää.
}

stanzaThreeLyrics = \lyricmode {
  \set stanza = "3."
  I -- sä ko -- hot -- taa -- pi pään -- sä
  sa -- nat hä -- nen sy -- dän -- tän -- sä
  ko -- vin lii -- kut -- taa.

  Sa -- noo ”Eh -- kä Luo -- ja suo -- pi,
  et -- tä äi -- ti koh -- ta tuo -- pi
  lei -- pää meil -- le, jol -- la saam -- me
  näl -- jän sam -- mut -- taa.”
}

stanzaFourLyrics = \lyricmode {
  \set stanza = "4."
  Äi -- ti si -- säl -- le jo as -- tuu, 
  i -- lon kyy -- ne -- lis -- tä kas -tuu, 
  sil -- mät kaik -- ki -- en,

  kun hän heil -- le lei -- pä -- pa -- lan 
  ja -- kaa kul -- le -- kin ja ka -- lan.
  Mi -- hin, mi -- hin ver -- ra -- ta -- han, 
  i -- lo lap -- si -- en?
}

stanzaFiveLyrics = \lyricmode {
  \set stanza = "5."
  Kat -- sos kuin -- ka pol -- vil -- lan -- sa
  y -- lis -- tä -- vät Ju -- ma -- laan -- sa,
  vii -- si pie -- nois -- ta.

  Van -- hem -- mat -- kin kas -- voil -- len -- sa,
  lan -- kee -- vat ja Luo -- jal -- len -- sa
  kan -- ta -- vat he kii -- tok -- sen -- sa
  kaik -- ki i -- los -- ta.
}

\score { 
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = upper {
        \global
      	\upperOne
      }
      \new Lyrics \lyricsto "upper" \stanzaOneLyrics
      \new Lyrics \lyricsto "upper" \stanzaTwoLyrics
      \new Lyrics \lyricsto "upper" \stanzaThreeLyrics
      \new Lyrics \lyricsto "upper" \stanzaFourLyrics
      \new Lyrics \lyricsto "upper" \stanzaFiveLyrics
    >>
    \new Staff <<
      \new Voice = lower {
        \global
      	\lowerOne
      }
      \new Lyrics \lyricsto lower {
        Uuu...
      }
    >>
  >>

  \midi { }
  
  \layout { }

}
