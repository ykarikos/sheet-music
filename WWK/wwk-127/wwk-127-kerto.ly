%% Wanhan wirsikirjan wirsi 127
%%


\include "deutsch.ly"

\version "2.6.0"

%#(set-global-staff-size 16)

\header {
    title = "WWK 127 - kerto"
%    poet = "Hemminki Maskulainen"
%    arranger = "Mogens Pedersen"
    tagline = ""
}

sopMusic =   \relative c'' { 
    \key d \minor
    \stemUp
    \time 3/1
    d1 d d | c c a | b\breve g1 | a\breve. | 
    d1 d d | c\breve a1 | b\breve g1 | a\breve a1 |
    f\breve a1 | c\breve d1 | b a\breve | 
    \set Score.measureLength = #(ly:make-moment 4 1)
    g\longa^\fermata \bar "||"

}

altoOneMusic =   \relative c' { 
    \key d \minor
    \stemDown
    f1 f f | f f f | d\breve g1 | fis\breve. |
    b1 b f | f\breve f1 | d\breve g1 | fis\breve fis1 | 
    a\breve f1 | e\breve d1 | g\breve fis1 | s\longa |
}

altoTwoMusic =   \relative c' { 
    \shiftOff
    \key d \minor
    \stemDown
    d1 d b | c c c | b\breve d1 | d\breve. |
    d1 d d | a\breve a1 | g\breve g1 | d'\breve a1 |
    a\breve a1 | a\breve f1 | g a\breve | h\longa
}

tenorMusic =  \relative c' { 
    \key d \minor
    b1 b d | a a a | g\breve b1 | a\breve. |
    b1 b b | c\breve c1 | b\breve c1 | a\breve d1 |
    c\breve d1 | c\breve b1 | d d\breve | d\longa |
}

bassMusic =  \relative c { 
    \key d \minor
    b1 b b | f' f f, | g\breve g1 | d'\breve. | 
    b1 b b | f'\breve f1 | g\breve es1 | d\breve d1 |
    f\breve d1 | a\breve b1 | g d'\breve | g,\longa_\fermata
}


sanatEka = \lyricmode { 
%    \set stanza = "1."
   	Kii- tos kor- ki- an Ju- ma -- \skip 1 lan,
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
    En -- \skip 1 kel' pu- hui pai- me- -- \skip 1 nill',
    Il -- \skip 1 moitt' i- loi- sill' mie- lill',
    ___ Chris- tuk- sen meill' syn- ty- neen,
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
    O Je- su, py -- \skip 1 hä pilt- ti- nen!
    Puh- dist', pe- se meit' syn- nis- täm',
    Puh- taal' py- häll' syn- ty- mäl- läs,
    Ar- mos a- vull', an- si- oll- las:
}

sanatYhd = \lyricmode { 
    \set stanza = "9."
    Suo Ju- mal' meit' täl- lä juh -- \skip 1 lall',
    Miel- täs myö- ten i- loll' ol- la,
    Suo- si- oll', so- vin- noll', rak- kaull',
    Si-nu- a y-lis- täin sy- dä- mell', suull'.
}


\score { 
    
    \context StaffGroup = "alku" <<
	\context Staff = "women" <<
	    \context Voice = "sopranos" { \voiceOne \sopMusic }
	    \context Voice = altosOne { \voiceTwo \altoOneMusic }
	    \context Voice = altosTwo { \voiceThree \altoTwoMusic }
	>>

	\lyricmode <<
	    \lyricsto "altosTwo" \new Lyrics \sanatEka
%	    \lyricsto "altosTwo" \new Lyrics \sanatToka
%	    \lyricsto "altosTwo" \new Lyrics \sanatKol
%	    \lyricsto "altosTwo" \new Lyrics \sanatKuu
%	    \lyricsto "altosTwo" \new Lyrics \sanatKahd
%	    \lyricsto "altosTwo" \new Lyrics \sanatYhd
	>>	

	\context Staff = "men" <<
	    \clef bass
	    \context Voice = "tenors" { \voiceOne \tenorMusic }
	    \context Voice = "basses" { \voiceTwo \bassMusic }
	>>
    >>

%     \context StaffGroup = "loppu" <<
%	\context Staff = sopranosEndStaff <<
%		\context Voice sopranosEnd \sopLopuke
%	>>
%	\context Staff = altosEndStaff <<
%		\context Voice altosEnd \altLopuke
%	>>
%    >>


    \layout {
	indent = 0.0
%	linewidth = 20.0\cm
%	textheight = 29.0\cm
	interscoreline = 0\pt

%	\context {

	% a little smaller so lyrics can be closer to the staff. 
%	    \Staff
%	    minimumVerticalExtent = #'(-3 . 3) 
%	}
    }

    \midi { 
	\tempo 1=180 
    }
}
