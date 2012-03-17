%% Wanhan wirsikirjan wirsi 146
%%


\include "deutsch.ly"

\version "2.12.3"

%#(set-global-staff-size 16)

\header {
    title = "WWK 146"
%    poet = "Hemminki Maskulainen"
    arranger = "J. Vesterinen & J.H. Schein"
    tagline = "O puhdas Jumalan Caritza"
}

sopMusic =   \relative c' {
    \key d \minor
    \stemUp
    \time 2/2
    \partial 2*1
    f2 |
    a4 a b b | c2 c | d1 | c1^\fermata |
    r2 c | f, g | a b4 a | g1 | f^\fermata 
    \bar ":|"
    r2 f4 g | a2 a | g g4 f | e2 d | c1^\fermata |
    r2 c'2 | c c | c c4 b | a2 d | c4 a b2 | a1^\fermata |
    r2 d | c c | b a4 b | c2 d | c4 a g2 | 
    f\breve^\fermata \bar "||"

}

altoOneMusic =   \relative c' { 
    \key d \minor
    \stemDown
    \partial 2*1
    c2 | f4 f f f | e2 g | g1 |  g |
    r2 e | d c | c d4 f | c1 | c |
    r2 c | f f | c c4 d | c2. h4 | s1 |
    r2 e | f g | f e | f f | f g | fis1 |
    r2 f | g f | f4 g f2 | f f | f2. e4 | 
    s\breve
}


tenorMusic =  \relative c' { 
    \key d \minor
    \stemUp
    \partial 2*1
    a2 | c4 c b b | g2 c( | c) h | c1 |
    r2 g | b g | f f4 f | f2 e | f1 |
    r2 a4 b | c2 d | g, a4 a | g2( g) | g1 |
    r2 g | a g | a g | f b | c d | d1 |
    r2 a | c a | d4 c c b | a2 b | c c |
    c\breve
    
}

bassMusic =  \relative c {
    \key d \minor
    \stemDown
    \partial 2*1
    f2 | f4 f  d d | c2 e | g1 | c, |
    r2 c | d e | f b,4 b | c1 | f, |
    r2 f' | f4 e d2 | e f4 f | g2 g, | c1 |
    r2 c | f e | f c | d4 c b2 | a g | d'1 |
    r2 d | e f | d4 e f2 | f b, | a4 b c2 | 
    f,\breve
}


sanatEka = \lyricmode { 
    \set stanza = "1."
    ___ Vei- sat- kaam' sy- dä- men poh- --- jast',
    Kiit- tä- kääm' Ju- ma- laa vah- vast' 
    Kuin ar- mons' on meil- le näy- tän,
    Ru- all' juo- mall' mei- tä täyt- tän,
    E- läi- met, lin- nut on ra- vin- nut,
    Ar- mol- li- sest' meill' ta- rin- nut,
    Kaik' mi- tä me o- lem' tar- vin- neet.
    
}

sanatKol = \lyricmode { 
    \set stanza = "3."
    Kuin ih- mi- nen hen- --- gen saa- nut on, 
    Koht' hä- nen ko- tans' val- mis on ___
    Äi- tins' koh- dus vaik-ka kai- ta,
    Siit' kyll' it- sens' ra- vit' tai- taa,
    Ehk' ___ se ruo- ka on heik- ko viell'
    Kui- tenk' ei puu- tu mi- tään siell',
    Sii- hen ___ ast' ett' hän syn- tyy tääl'.
}

sanatVii = \lyricmode { 
    \set stanza = "5."
    ___ Ka- lat ve- dest' ___ sa- nas jäl- keen,
    Meil Ju- mal' an- nat pöy- däll'- kin 
    Mu-nat lin- nuist' pie- nist' suu- --- rist'
    Kanss' lin-nun po- jat meil- --- le niist':
    Viel' meill' si-nun suo- mas- tas pää- --- näns',
    Hir- vi, här -- \skip 1 kä, oi-nas, jä- nes,
    On ru- aks' jäl- keen si- nun sään- nös.
}

sanatKuu = \lyricmode { 
    \set stanza = "6."
    Siis kiit- tä- kääm Her- --- raa ai- --- na,_Kuin
    Py- hän Hen- kens' meil- le lai- naa,
    Ett' hä- nen hy-vyy- tens' tie- --- däm',
    Ain' siis hä- nen käs- kyns' teh- kääm'.
    Hä- nen py-hän ni- --- mens' kun- ni- at'
    Le-__vit- tä- kääm' ___ siis mo- ni- all':
    Tä- tä ___ tah- too hän kuul- la ain! 
%    A -- \skip 4 men.
}


\score { 
    
    \context StaffGroup <<
	\context Staff = "women" <<
	    \context Voice = "sopranos" { \voiceOne \sopMusic }
	    \context Voice = altosOne { \voiceTwo \altoOneMusic }
	>>

	\lyricmode <<
%	    \lyricsto "altosTwo" \new Lyrics \sanatEka
%	    \lyricsto "altosTwo" \new Lyrics \sanatKol
%	    \lyricsto "altosTwo" \new Lyrics \sanatVii
%	    \lyricsto "altosTwo" \new Lyrics \sanatKuu
	>>	

	\context Staff = "men" <<
	    \clef bass
	    \context Voice = "tenors" { \voiceOne \tenorMusic }
	    \context Voice = "basses" { \voiceTwo \bassMusic }
	>>
    >>


    \layout {
	indent = 0.0
%	line-width = 20.0\cm
%	textheight = 29.0\cm
%	interscoreline = 0\pt

%	\context {

	% a little smaller so lyrics can be closer to the staff. 
%	    \Staff
%	    \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3) 
%	}
    }

    
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 180 1)
      }
    }

}
