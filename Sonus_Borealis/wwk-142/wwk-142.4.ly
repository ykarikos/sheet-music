%% Wanhan wirsikirjan wirsi 142
%%


\include "deutsch.ly"

\version "2.2.5"

%#(set-global-staff-size 16)

\header {
    title = "WWK 142"
    poet = "san: Hemminki Maskulainen"
    arranger = "sov: Johannes Vesterinen"
    tagline = ""
}

sopMusic = \notes  \relative c'' { 
    \key d \minor
%    \stemUp
    \time 3/2
    \partial 2*1
    \repeat volta 2 {
	b2 | g1 g2 | a2 a a | b1 g2 | a1 
    	a2 | d1 d2 | c d es | d2 c b | a1
    }
    b2 | g1 g2 | a b c | b a g | f( d) \breathe
    e | f1 f2 | g1 a2 | g2 g fis | g1
    g2 | d'1 b2 | c d es | d2 b a | 
    g1. \bar "||"
}


sanatEka = \lyrics { 
    \set stanza = "1."
    O Je- su! kuin- kas o-let pii- nat- tu,/
    Pos- kill' pies- ty, syl- jett' ru- si- koit- tu./
}

sanatEkakerto = \lyrics { 
	Or- jan- tap- pu- --- roill' kruu- nat- tu,/
	Sinun ruu- miis ruos- kit- tu, haa- voi- tet- tu,/
	Pur- pu- rall' pil- --- kall' nau- --- ret- tu,/
	Ve- ri p‰‰st', kas- voist' vuo- da- tet- tu,/
	Koko ruu- mis ver- --- ta tiuk- --- --- kui.
}

sanatToka = \lyrics { 
    \set stanza = "2."
    Ris- tin p‰‰ll' j‰- se- net pin-go- te- tut,/
    Jalat, k‰- det l‰- pit- se l‰- vis- te- tyt,/
}

sanatTokakerto = \lyrics { 
	E- ti- kall', sa- --- pell' juo- tet- tu,/
 	Syd‰n rik- ki pil- --- kall' pis- --- tet- ty,/
	Julmall' Ju-ma- lan vi- --- hall' run- --- nel- tu,/
	Kylki kei- h‰‰l' l‰-pit- se tun- --- get- tu,/
	Sur- ki- all' kuo- le- mall' sur- --- mat- tu.
}

sanatNel = \lyrics { 
    \set stanza = "4."
	Suu- sas, Chris- te, ___ ei lˆytty pe- tost',/
	Et si- n‰, Her- --- ra, v‰‰- rin teh- nyt,/
}

sanatNelkerto = \lyrics { 
	Eik' ol- lut si- --- nus' yht‰‰n ri- kost'/
	Etk' syn- nin tie- t‰ sin‰ k‰y- --- --- nyt:/
	Puh- das, vi- a- --- toin kai- kist' o- lit,/
	Kui- ten- kin katke- rast' kuo- --- --- lit,/
	Meid‰n kaik- kein ih- mis- ten e- --- des- t‰m'.
}


sanatKas = \lyrics { 
    \set stanza = "8."
	Min‰ ain'yl- pi- ‰: ___ sin‰ hil- jai- nen,/
	Puus- teill' ja purp- pu- rall' pil- --- kat- tu./
}

sanatKaskerto = \lyrics { 
	Min‰ kova- kor- vai- nen: sin‰ kuu-li- ai- nen,/
	Min‰ rˆy-ki- ‰: pii- keill' sin‰ kruu- --- nat- tu./
	Min‰ tur-has' kun- ni- as': sin‰ syl- --- jet- ty./
	Min‰ juo- mar': sa-pell' sin‰ juo- --- tet- tu./
	Min‰ he-ku- mas': si- n‰ si-dott', nau- --- lit- tu.
}

\score { 
    \notes
    \context StaffGroup <<
	\context Staff = women <<
	    \context Voice = sopranos { \voiceOne \sopMusic }
	>>

	\lyrics <<
%	    \lyricsto "sopranos" \new Lyrics \sanatEka
%	    \lyricsto "sopranos" \new Lyrics \sanatEkakerto
%	    \lyricsto "sopranos" \new Lyrics \sanatToka
%	    \lyricsto "sopranos" \new Lyrics \sanatTokakerto
	    \lyricsto "sopranos" \new Lyrics \sanatNel
	    \lyricsto "sopranos" \new Lyrics \sanatNelkerto
%	    \lyricsto "sopranos" \new Lyrics \sanatKas
%	    \lyricsto "sopranos" \new Lyrics \sanatKaskerto
	>>	

    >>


    \paper {
	indent = 0.0
%	linewidth = 20.0\cm
%	textheight = 29.0\cm
%	interscoreline = 0\pt

%	\context {

	% a little smaller so lyrics can be closer to the staff. 
%	    \StaffContext
%	    minimumVerticalExtent = #'(-3 . 3) 
%	}
    }

    \midi { 
	\tempo 2=180 
    }
}
