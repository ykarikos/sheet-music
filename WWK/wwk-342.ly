%% Wanhan wirsikirjan wirsi 342
%%


\include "deutsch.ly"

\version "2.18.0"

%#(set-global-staff-size 16)

\header {
    title = "WWK 342"
    poet = "Hemminki Maskulainen"
    arranger = "Mogens Pedersen"
    copyright = "This work is licensed under the Creative Commons Attribution 4.0 International License."
    tagline = "The source is available at https://ykarikos.github.io/sheet-music/"
}

sopMusic =   \relative c'' { 
    \key d \minor
    \stemUp
    \time 3/1
    \partial 1*1
    \set fontSize = #-3
    g1 | 
    \set fontSize = #0
    g1 g b | a a b | c\breve b1 | a\breve. |
    a1 a b | c\breve d1 | b a\breve | g g1 |
    a\breve b1 | c\breve b1 | a\breve g1 | f\breve. |
    c'\breve d1 | f\breve e1 | d d cis | d\breve. |
    d1 d d | c c a | b\breve g1 | a\breve. | 
    d\breve d1 | c c a | b\breve g1 | a\breve a1 |
    f f a | c\breve d1 | b a\breve | 
    \set Score.measureLength = #(ly:make-moment 4/1)
    g\longa^\fermata \bar "||"

    % lopuke
%    \time 4/2
%    g1 g2. a8 h | 
%    \set Score.measureLength = #(ly:make-moment 5/1)
%    c1 h\longa^\fermata \bar ".|"
}

altoOneMusic =   \relative c' { 
    \key d \minor
    \stemDown
    \partial 1*1
    \set fontSize = #-3
    d1 | 
    \set fontSize = #0
    d1 d d | fis fis g | a\breve g1 | fis\breve. |
    fis1 fis g | g\breve g1 | g fis\breve | g d1 |
    f\breve f1 | es\breve g1 | f\breve e1 | f\breve. | 
    f\breve f1 | d\breve e1 f f e | d\breve. |
    f1 f f | f f f | d\breve g1 | fis\breve. |
    b\breve f1 | f f f | d\breve g1 | fis\breve fis1 | 
    a a f | e\breve d1 | g\breve fis1 | s\longa |

    % lopuke
%    g2 g4 f es d c2( | 
%    c2) g' g\longa
}

altoTwoMusic =   \relative c' { 
    \shiftOff
    \key d \minor
    \stemDown
    \partial 1*1
    \set fontSize = #-3
    b1 | 
    \set fontSize = #0
    b1 b d | d d d | f\breve d1 | d\breve. |
    a1 a g | c\breve b1 | d d\breve | d d1 |
    a\breve f1 | c'\breve d1 | c\breve c1 | c\breve. |
    a\breve a1 | b\breve g1 | f f a | a\breve. |
    d1 d b | c c c | b\breve d1 | d\breve. |
    d\breve d1 | a a a | g\breve g1 | d'\breve a1 |
    a a a | a\breve f1 | g a\breve | h\longa

    % lopuke
%    h2 r1 c4. d8 | 
%    es4 d c2 d\longa
}


tenorMusic =  \relative c' { 
    \key d \minor
    \partial 1*1
    \set fontSize = #-3
    g1 | 
    \set fontSize = #0
    g1 g g | a a g | c\breve g1 | a\breve. |
    d1 d d | es\breve d1 | d, a'\breve | h h1 |
    c\breve d1 | g,\breve g1 | c, c' g | a\breve. | 
    f\breve f1 | f\breve c'1 | a a a | fis\breve. |
    b1 b d | a a a | g\breve b1 | a\breve. |
    b\breve b1 | c1 c c | b\breve c1 | a\breve d1 |
    c c d | c\breve b1 | d d\breve | d\longa |

    % lopuke
%    d1 c4 b8 a g2 | g\longa
}

bassMusic =  \relative c { 
    \key d \minor
    \partial 1*1
    \set fontSize = #-3
    g1 | 
    \set fontSize = #0
    g1 g g | d' d g | f\breve g1 | d\breve. |
    d1 d g | c,\breve g1 | b d\breve | g, g'1 |
    f\breve d1 | c\breve g1 | a\breve c1 | f,\breve. | 
    f'\breve d1 | b\breve c1 | d d a | d\breve. | 
    b1 b b | f' f f, | g\breve g1 | d'\breve. | 
    b\breve b1 | f' f f | g\breve es1 | d\breve d1 |
    f f d | a\breve b1 | g d'\breve | g,\longa_\fermata
    
    % lopuke
%    g1 c4 d es d | c1 g\longa_\fermata
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
	    \context Voice = altosTwo { \voiceThree \altoTwoMusic }
	>>

	\lyricmode <<
	    \lyricsto "altosTwo" \new Lyrics \sanatEka
	    \lyricsto "altosTwo" \new Lyrics \sanatKol
	    \lyricsto "altosTwo" \new Lyrics \sanatVii
	    \lyricsto "altosTwo" \new Lyrics \sanatKuu
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
%	    \override VerticalAxisGroup.minimum-Y-extent = #'(-3 . 3) 
%	}
    }

    
  \midi {
    \tempo 1 = 180
    }


}
