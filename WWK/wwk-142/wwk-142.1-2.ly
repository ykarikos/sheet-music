%% Wanhan wirsikirjan wirsi 142
%%


\include "deutsch.ly"

\version "2.12.3"

%#(set-global-staff-size 16)

\header {
    title = "WWK 142"
    poet = "san: Hemminki Maskulainen"
    arranger = "sov: Johannes Vesterinen"
    tagline = ""
}

sopMusic =   \relative c'' { 
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


sanatEka = \lyricmode { 
    \set stanza = "1."
    O Je- su! kuin- kas o-let pii- nat- tu,/
    Pos- kill' pies- ty, syl- jett' ru- si- koit- tu./
}

sanatEkakerto = \lyricmode { 
	Or- jan- tap- pu- --- roill' kruu- nat- tu,/
	Sinun ruu- miis ruos- kit- tu, haa- voi- tet- tu,/
	Pur- pu- rall' pil- --- kall' nau- --- ret- tu,/
	Ve- ri pääst', kas- voist' vuo- da- tet- tu,/
	Koko ruu- mis ver- --- ta tiuk- --- --- kui.
}

sanatToka = \lyricmode { 
    \set stanza = "2."
    Ris- tin pääll' jä- se- net pin-go- te- tut,/
    Jalat, kä- det lä- pit- se lä- vis- te- tyt,/
}

sanatTokakerto = \lyricmode { 
	E- ti- kall', sa- --- pell' juo- tet- tu,/
 	Sydän rik- ki pil- --- kall' pis- --- tet- ty,/
	Julmall' Ju-ma- lan vi- --- hall' run- --- nel- tu,/
	Kylki kei- hääl' lä-pit- se tun- --- get- tu,/
	Sur- ki- all' kuo- le- mall' sur- --- mat- tu.
}

sanatNel = \lyricmode { 
    \set stanza = "4."
	Suu- sas, Chris- te, ___ ei löytty pe- tost',/
	Et si- nä, Her- --- ra, vää- rin teh- nyt,/
}

sanatNelkerto = \lyricmode { 
	Eik' ol- lut si- --- nus' yhtään ri- kost'/
	Etk' syn- nin tie- tä sinä käy- --- --- nyt:/
	Puh- das, vi- a- --- toin kai- kist' o- lit,/
	Kui- ten- kin katke- rast' kuo- --- --- lit,/
	Meidän kaik- kein ih- mis- ten e- --- des- täm'.
}


sanatKas = \lyricmode { 
    \set stanza = "8."
	Minä ain'yl- pi- ä: ___ sinä hil- jai- nen,/
	Puus- teill' ja purp- pu- rall' pil- --- kat- tu./
}

sanatKaskerto = \lyricmode { 
	Minä kova- kor- vai- nen: sinä kuu-li- ai- nen,/
	Minä röy-ki- ä: pii- keill' sinä kruu- --- nat- tu./
	Minä tur-has' kun- ni- as': sinä syl- --- jet- ty./
	Minä juo- mar': sa-pell' sinä juo- --- tet- tu./
	Minä he-ku- mas': si- nä si-dott', nau- --- lit- tu.
}

\score { 
    
    \context StaffGroup <<
	\context Staff = "women" <<
	    \context Voice = "sopranos" { \voiceOne \sopMusic }
	>>

	\lyricmode <<
	    \lyricsto "sopranos" \new Lyrics \sanatEka
	    \lyricsto "sopranos" \new Lyrics \sanatEkakerto
	    \lyricsto "sopranos" \new Lyrics \sanatToka
	    \lyricsto "sopranos" \new Lyrics \sanatTokakerto
%	    \lyricsto "sopranos" \new Lyrics \sanatNel
%	    \lyricsto "sopranos" \new Lyrics \sanatNelkerto
%	    \lyricsto "sopranos" \new Lyrics \sanatKas
%	    \lyricsto "sopranos" \new Lyrics \sanatKaskerto
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
      tempoWholesPerMinute = #(ly:make-moment 180 2)
      }
    }


}
