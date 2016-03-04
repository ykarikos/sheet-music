\version "2.18.0"
\include "suomi.ly"

#(set-global-staff-size 18)

global = {
%  \numericTimeSignature
  \time 6/8
%  \autoBeamOff
  \key es \major
  \set Staff.midiInstrument = #"voice oohs"
}
      
\header {
    title = "Kesis böndel"
    subtitle = "Kesäpäivä Kangasalla"
    composer = "Säv. Gabriel Linsén"
    poet = "San. Sakari Topelius, stadinnos Sami Garam"
    enteredby = "Yrjö Kari-Koskinen"
    tagline = ""
}

\paper {
    indent = 0.0
	top-margin = 13\mm
	markup-system-spacing #'basic-distance = #16
    #(define fonts
        (make-pango-font-tree "Gill Sans"
                              "Nimbus Sans"
                              "Luxi Mono"
                              (/ staff-height pt 20)))
}

soprano = \relative c'' {
  \tempo "Andante sostenuto"
  \stemUp
  \slurUp
  \partial 8 g8 | g fis g as4 g8 | g4. es4 
  es8 | f e f g4 f8 | es4. r4

  g8 | g fis g as4 g8 | g4. es4 
  g8 | f b d d4 c8 | b4.( b4)

  b8 | b as g as4 f'8 | es4. b4 
  b8 | as g as c b as | g4.( g4)

  g8 | es'4 es8 es d h | d4. c4 
  c8 | b f g as as b | g4.( g4) 
  g8 | es'4 es8 es d h | c4. b4 

  es8 | g es b g g f | es4.( es4) \bar ".|"

}

alto = \relative c' {
  \stemDown
  \slurDown
  es8 | es es es es4 es8 | es4. b4
  b8 | d cis d es4 d8 | es4. s4
  es8 | es es es es4 es8 | es4. b4
  es8 | d f b a4 a8 | f4( d8 f4) 
  es8 | d d d d4 as'8 | g4. g4 
  g8 | f e f as( g) f | es4.( f4)
  f8 | es4 es8 f f f | f4. es4 
  es8 | es d es f f d | es4.( f4)
  f8 | es4 es8 f f f | es4. g4
  g8 | b g es d d d | es4.( es4)
}

tenor = \relative c' {
  \stemUp
  \slurUp
  b8 | b a b c4 b8 | b4. g4 
  g8 | b b b b( a) as | g4. r4 
  b8 | b a b c4 b8 | b4. g4
  b8 | b d f es4 es8 | d4( f,8 as4)

  g8 | f f e f4 b8 | b4. b4
  b8 | d d d d4 d8 | b4.( h4)

  h8 | c4 c8 h h d | h4. c4 
  as8 | g b b b b b | b4.( h4)

  h8 | c4 c8 h h d | c4. es4 
  es8 | es8 b g as as as | g4.( g4)
}

bass = \relative c {
  \stemDown
  \slurDown
  es8 | es es es es4 es8 | es4. es4
  es8 | b b b b4 b8 | es4. s4
  es8 | es es es es4 es8 | es4. es4
  es8 | f f f f4 f8 | b,4.( b4)

  b8 | b b b b4 b8 | es4. es4 
  es8 | b b b b4 b8 | es4 

  es8 d4 d8 | c4. g'4 g8 |

  as4. as4 
  as,8 | b b b b b b | es4

  es8 d4 d8 | c4. g'4 g8 |
  as4. b8( g) es | b b b b b b
  es4.( es4)
}

verseOne = \lyricmode {
  \set stanza = #"1. "
  Mä tsit -- taan tääl sai -- raan kor -- keel
  ja tsii -- gai -- len mes -- toil -- le.
  Tää re -- du mua kau -- as rou -- daa,
  nou hä -- tä mä kes -- tän sen.
  Mä lan -- del -- le jos -- kus reis -- saan
  ja ho -- gaan tää maa sii -- de on.
  Ku kyy -- lää kaik -- kii noit jär -- vii
  ja tsup -- pai -- lee pit -- kin skut -- sii.
  Ku kyy -- lää kaik -- kii noit jär -- vii
  ja tsup -- pai -- lee pit -- kin skut -- sii.
}

verseTwo = \lyricmode {
  \set stanza = #"2. "
  Jos täs oi -- kee täy -- sii funt -- sin,
  voin ke -- laa et sna-di mä oon.
  Ku fly -- gaa -- maan pää -- sis meit -- si
  ois fii -- la -- ri her -- vo -- ton.
  Mä me -- ni -- sin tsek -- kaan mis -- sä,
  se Ju -- ma -- la siis bud -- jai -- lee.
  Ni sil -- lon ois mul -- la sau -- maa,
  mä U -- kol -- le bam -- lai -- li -- sin.
  Ni sil -- lon ois mul -- la sau -- maa,
  mä U -- kol -- le bam -- lai -- li -- sin.
}

verseThree = \lyricmode {
  \set stanza = #"3. "
  Hei Äi -- jä, sä tai -- vaan Fat -- si,
  ja tyyp -- pi äl -- den nas -- ta.
  Oot vä -- sän -- ny siis -- tei pleis -- sei
  ja pä -- hee on mei -- nin -- ki.
  Ku tsii -- gai -- lee vaik noit jär -- vii
  ni voi al -- kaa spii -- _ dai -- leen.
  Hei voit -- sä jee -- saa meit Fai -- ja
  et dig -- gail -- tas hi -- maa ai -- na.
  Hei voit -- sä jee -- saa meit Fai -- ja
  et dig -- gail -- tas hi -- maa ai -- na.
}

verseOneMen = \lyricmode {
  \repeat unfold 45 { \skip 1 }
  Ku kyy -- lää kaik -- kii noit
  \repeat unfold 10 { \skip 1 }
  Ku kyy -- lää kaik -- kii noit
}

verseTwoMen = \lyricmode {
  \repeat unfold 45 { \skip 1 }
  Ni sil -- lon ois mul -- la
  \repeat unfold 10 { \skip 1 }
  Ni sil -- lon ois mul -- la
}

verseThreeMen = \lyricmode {
  \repeat unfold 45 { \skip 1 }
  Hei voit -- sä jee -- saa meit
  \repeat unfold 10 { \skip 1 }
  Hei voit -- sä jee -- saa meit
}


\score { 
  \new StaffGroup <<
    \new Staff <<
      \new Voice = soprano {
        \global
      	\soprano
      }
      \addlyrics { \verseOne }
      \addlyrics { \verseTwo }
      \addlyrics { \verseThree }
      \new Voice = alto {
        \global
      	\alto
      }
    >>
    \new Staff <<
      \new Voice = tenor {
        \global
        \clef bass
        \tenor
      }
      \new Voice = bass {
        \global
      	\clef bass
      	\bass
      }
	  \addlyrics { \verseOneMen }
	  \addlyrics { \verseTwoMen }
	  \addlyrics { \verseThreeMen }
    >>
  >>

  \midi { 
    \tempo 4. = 60
  }
  
  \layout { 
  }

}
