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
    a1 a b | c\breve d1 | b a\breve | g g1 |
    a\breve b1 | c\breve b1 | a\breve g1 | f\breve. |
    c'\breve d1 | f\breve e1 | d d cis | d\breve. |

    % lopuke
%    \time 4/2
%    g1 g2. a8 h | 
%    \set Score.measureLength = #(ly:make-moment 5/1)
%    c1 h\longa^\fermata \bar ".|"
}

% lopuke
sopLopuke  =   \relative c'' { 
    \key d \minor
    \time 4/2
    g1 g2. a8 h | 
    \set Score.measureLength = #(ly:make-moment 5/1)
    c1 h\longa^\fermata \bar ".|"
}

altoOneMusic =   \relative c' { 
    \key d \minor
    \stemDown
    d1 d d | fis fis g | a\breve g1 | fis\breve. |
    fis1 fis g | g\breve g1 | g fis\breve | g d1 |
    f\breve f1 | es\breve g1 | f\breve e1 | f\breve. | 
    f\breve f1 | d\breve e1 f f e | d\breve. |
    f1 f f | f f f | d\breve g1 | fis\breve. |
    b1 b f | f\breve f1 | d\breve g1 | fis\breve fis1 | 
    a\breve f1 | e\breve d1 | g\breve fis1 | s\longa |

    % lopuke
%    g2 g4 f es d c2( | 
%    c2) g' g\longa
}

altLopuke =  \relative c' {
    \key d \minor
    \time 4/2
    g2 g4 f es d c2( | 
    c2) g' g\longa
}

altoTwoMusic =   \relative c' { 
    \shiftOff
    \key d \minor
    \stemDown
    b1 b d | d d d | f\breve d1 | d\breve. |
    a1 a g | c\breve b1 | d d\breve | d d1 |
    a\breve f1 | c'\breve d1 | c\breve c1 | c\breve. |
    a\breve a1 | b\breve g1 | f f a | a\breve. |
    d1 d b | c c c | b\breve d1 | d\breve. |
    d1 d d | a\breve a1 | g\breve g1 | d'\breve a1 |
    a\breve a1 | a\breve f1 | g a\breve | h\longa

    % lopuke
%    h2 r1 c4. d8 | 
%    es4 d c2 d\longa
}


tenorMusic =  \relative c' { 
    \key d \minor
    g1 g g | a a g | c\breve g1 | a\breve. |
    d1 d d | es\breve d1 | d, a'\breve | h h1 |
    c\breve d1 | g,\breve g1 | c, c' g | a\breve. | 
    f\breve f1 | f\breve c'1 | a a a | fis\breve. |
    b1 b d | a a a | g\breve b1 | a\breve. |
    b1 b b | c\breve c1 | b\breve c1 | a\breve d1 |
    c\breve d1 | c\breve b1 | d d\breve | d\longa |

    % lopuke
%    d1 c4 b8 a g2 | g\longa
}

bassMusic =  \relative c { 
    \key d \minor
    g1 g g | d' d g | f\breve g1 | d\breve. |
    d1 d g | c,\breve g1 | b d\breve | g, g'1 |
    f\breve d1 | c\breve g1 | a\breve c1 | f,\breve. | 
    f'\breve d1 | b\breve c1 | d d a | d\breve. | 
    b1 b b | f' f f, | g\breve g1 | d'\breve. | 
    b1 b b | f'\breve f1 | g\breve es1 | d\breve d1 |
    f\breve d1 | a\breve b1 | g d'\breve | g,\longa_\fermata
    
    % lopuke
%    g1 c4 d es d | c1 g\longa_\fermata
}


sanatEka = \lyricmode { 
    \set stanza = "1."
    Paits' mie- hett' mie- hen Ju- ma- lan,
    En- ke- lit ku-ta ku- mar- ta- vat,
   	Tai- vaan täh- tein te- ki -- \skip 1 än,
   	Syn- nytt' neit- sy, py- syi neit- seen'.
%   Kii- tos kor- ki- an Ju- ma -- \skip 1 lan,
%	Ju- ma- la syn- nyi ih- mi- seks',
%	Jo Ju- mal' lep- pyi ih- mi- sill'.
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
    O Je- su, py- hä pilt- ti- nen!
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
%	    \context Voice = altosOne { \voiceTwo \altoOneMusic }
%	    \context Voice = altosTwo { \voiceThree \altoTwoMusic }
	>>

	\lyricmode <<
%	    \lyricsto "sopranos" \new Lyrics \sanatEka
	    \lyricsto "altosTwo" \new Lyrics \sanatToka
%	    \lyricsto "sopranos" \new Lyrics \sanatKol
	    \lyricsto "altosTwo" \new Lyrics \sanatKuu
%	    \lyricsto "sopranos" \new Lyrics \sanatKahd
	    \lyricsto "altosTwo" \new Lyrics \sanatYhd
	>>	

%	\context Staff = "men" <<
%	    \clef bass
%	    \context Voice = "tenors" { \voiceOne \tenorMusic }
%	    \context Voice = "basses" { \voiceTwo \bassMusic }
%	>>
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
%	line-width = 20.0\cm
%	textheight = 29.0\cm
	interscoreline = 0\pt

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
