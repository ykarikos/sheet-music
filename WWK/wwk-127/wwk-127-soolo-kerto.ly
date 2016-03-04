%% Wanhan wirsikirjan wirsi 127
%%


\include "deutsch.ly"

\version "2.18.0"

%#(set-global-staff-size 16)

\header {
    title = "WWK 127"
    poet = "Hemminki Maskulainen"
    arranger = "Mogens Pedersen"
    tagline = ""
}

sopMusic =   \relative c'' { 
    \key d \minor
    \stemUp
    \time 3/1
    g1 g b | a\breve b1 | c\breve b1 | a\breve. |
    a1 a b | c c d | b a\breve | g\breve. |
    a\breve b1 | c\breve b1 | a a g | f\breve. |
    c'\breve d1 | f\breve e1 | d d cis | d\breve. |
}

sopMusicKerto =   \relative c'' { 
    \key d \minor
    \stemUp
    \time 3/1
    \set Score.currentBarNumber = #17
    d\breve d1 | c c a | b\breve g1 | a\breve. | 
    d1 d d | c\breve a1 | b\breve g1 | a\breve a1 |
    f\breve a1 | c\breve d1 | b a\breve | 
    \set Score.measureLength = #(ly:make-moment 4/1)
    g\longa^\fermata \bar "||"
}

altoOneMusic =   \relative c' { 
    \key d \minor
    \stemDown
    f\breve f1 | f f f | d\breve g1 | fis\breve. |
    b1 b f | f\breve f1 | d\breve g1 | fis\breve fis1 | 
    a\breve f1 | e\breve d1 | g\breve fis1 | s\longa |
}

altoTwoMusic =   \relative c' { 
    \shiftOff
    \key d \minor
    \stemDown
    d\breve b1 | c c c | b\breve d1 | d\breve. |
    d1 d d | a\breve a1 | g\breve g1 | d'\breve a1 |
    a\breve a1 | a\breve f1 | g a\breve | h\longa
}

tenorMusic =  \relative c' { 
    \key d \minor
    b\breve d1 | a a a | g\breve b1 | a\breve. |
    b1 b b | c\breve c1 | b\breve c1 | a\breve d1 |
    c\breve d1 | c\breve b1 | d d\breve | d\longa |
}

bassMusic =  \relative c { 
    \key d \minor
    b\breve b1 | f' f f, | g\breve g1 | d'\breve. | 
    b1 b b | f'\breve f1 | g\breve es1 | d\breve d1 |
    f\breve d1 | a\breve b1 | g d'\breve | g,\longa_\fermata
}


sanatEka = \lyricmode { 
    \set stanza = "1."
    Paits' mie- hett' mie- hen Ju- ma- lan,
    En- ke- lit ku- ta ku- mar- ta- vat,
   	Tai- vaan täh- tein te -- \skip 1 ki- än,
   	Syn- nytt' neit- sy, py- syi neit- seen'.
}

sanatKerto = \lyricmode { 
    Kii- tos kor- ki- an Ju- ma- lan,
	Ju- ma- la syn- nyi ih- mi- seks',
	Jo Ju- mal' lep- pyi ih- mi- sill'.
}


sanatToka = \lyricmode { 
    \set stanza = "2."
    Kos- ka Je- sus ___ syn- tyi ___ meill',
%   Kos- -- \skip 1 ka Je -- \skip 1 sus syn- tyi meill',
    I- lo nou- si en- ke -- \skip 1 leill',
%    I -- \skip 1 lo nou- si en- ke- leill',
    Tai- vaan suu- rell' so- ta- vä- ell';
    Vei- sa- sit kor- ki- all' ää- nell':
}

sanatKol = \lyricmode { 
    \set stanza = "3."
    En -- \skip 1 kel' pu- hui pai- me- nill',
    Il -- \skip 1 moitt' i -- \skip 1 loi- sill' mie- lill',
    Chris- tuk- sen meill' syn -- \skip 1 ty- neen,
    Va- pah- ta- jaks' vai -- \skip 1 vais- ten.
}

sanatKuu = \lyricmode { 
    \set stanza = "6."
    Vii- saat Lap- sell' ___ lah- joi -- \skip 1 tit
%   Vii -- \skip 1 saat Lap -- \skip 1 sell' lah- joi- tit
    Kul-taa, py- hää sa- vuu, mir- ha- mit'
    Ju- ma-laks' ku- mar-sit, kun- ni- oi- tit,
    Ku-nin- kain Ku- nin- kaaks' tun- nus- tit.
}

sanatKahd = \lyricmode { 
    \set stanza = "8."
    O Je- su, py- hä pilt- ti- nen!
    Puh -- \skip 1 dist', pe- se meit' syn- nis- täm',
    Puh- taal' py- häll' syn- ty- mäl- läs,
    Ar- mos a- vull', an- si- ol- las:
}

sanatYhd = \lyricmode { 
    \set stanza = "9."
    Suo Ju- mal' meit' täl- lä juh -- \skip 1 lall',
    Miel- täs myö- ten i- loll' ol- la,
    Suo- si- oll', so- vin- noll', rak- kaull',
    Si-nu- a y-lis- täin sy- dä- mell', suull'.
}

\book {

\score { 
    
    \context StaffGroup = "alku" <<
	\context Staff = "women" <<
	    \context Voice = "sopranos" { \voiceOne \sopMusic }
	>>

	\lyricmode <<
	    \lyricsto "sopranos" \new Lyrics \sanatEka
	    \lyricsto "sopranos" \new Lyrics \sanatKol
	    \lyricsto "sopranos" \new Lyrics \sanatKahd
	>>	

    >>

    \layout {
		indent = 0.0
    }
}


\score { 
    
    \context StaffGroup = "alku" <<
	\context Staff = "women" <<
	    \context Voice = "sopranosKerto" { \voiceOne \sopMusicKerto }
	    \context Voice = altosOne { \voiceTwo \altoOneMusic }
	    \context Voice = altosTwo { \voiceThree \altoTwoMusic }
	>>

	\lyricmode <<
	    \lyricsto "sopranosKerto" \new Lyrics \sanatKerto
	>>	

	\context Staff = "men" <<
	    \clef bass
	    \context Voice = "tenors" { \voiceOne \tenorMusic }
	    \context Voice = "basses" { \voiceTwo \bassMusic }
	>>
    >>


    \layout {
		indent = 0.0
    }

}
}