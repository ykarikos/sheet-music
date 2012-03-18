%% Wanhan wirsikirjan wirsi 146
%% O puhdas Jumalan Caritza


\include "deutsch.ly"

\version "2.12.3"

%#(set-global-staff-size 16)

\header {
    title = "WWK 146"
    arranger = "sov. J. Vesterinen & J.H. Schein"
    tagline = ""
}

sopMusic =   \relative c' {
%   \transpose f g
    \key d \minor
    \stemUp
    \time 2/2
    \partial 2*1
    f2 |
    a4 a b b | c2 c | d1 | c1^\fermata |
    r2 c | f, g | a b4 a | g1 | f^\fermata 
    \bar ":|"
    r2 f4( g) | a2 a | g g4 f | e2 d | c1^\fermata |
    r2 c'2 | c c | c c4( b | a2) d | c4( a b2) | a1^\fermata |
    r2 d | c c | b a4( b) | c2 d | c4( a) g2 | 
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
    <c a f>\breve 
    
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
    O puh- das Ju- ma- lan Ca- ri- tza,
    Cuin ris- tin puu- sa pij- nat- tin,
    
    Mei- dän syn- dim si- nä can- -- _ noit
    
    Ja e- lä- män meil- len an- noit.
    Ar- mah- da mei- dän pääl- lem', O JE- su!
}

sanatEkaKerto = \lyricmode {
    Meil- le si- nä ar- mos ta- ri- tze,
    Waickas sil- loin co- wan pil- cat- tin.
}

sanatToka = \lyricmode {
    \set stanza = "2."
    O Je- su, via- -- _ toin Ka- rit- sa!
    Kuin sur- man al- le an- net- tiin,
    
    Mei- dän täh- tem' si- nä kuo- -- _ lit,
    Ja syn- nit meilt' pois vuo- -- _ lit:
    Ar- mah- da mei- dän pääl- lem', O JE- su!
}

sanatTokaKerto = \lyricmode { 
    Mei-tä si- nä köy- hi- ä ra- vit- se,
    Ehk' vää- rin pääl- les kan- net- tiin:
}

sanatKol = \lyricmode { 
    \set stanza = "3."
    O Je- su, nuh- tee- toin Ka- rit- sa!
    Kuin tah- dot ar- mos va- ris- taa
    
    Hel- ve- tin si- nä _ voi- -- _ tit,
    Ja pi- rult' val- lan pois o- tit:
    Suo meil- le nyt rau- -- _ ha, O JE- su!
}

sanatKolKerto = \lyricmode { 
    Mei- dän nyt syn- -- _ nis- ten pääl- le,
    Kuin a- sum' al- haal' _ tääl- lä:
}


\score { 
    
    \context StaffGroup <<
	\context Staff = "women" <<
	    \context Voice = "sopranos" { \voiceOne \sopMusic }
	    \context Voice = altosOne { \voiceTwo \altoOneMusic }
	>>

	\lyricmode <<
	    \lyricsto "sopranos" \new Lyrics \sanatEka
	    \lyricsto "sopranos" \new Lyrics \sanatEkaKerto
	    \lyricsto "sopranos" \new Lyrics \sanatToka
	    \lyricsto "sopranos" \new Lyrics \sanatTokaKerto
	    \lyricsto "sopranos" \new Lyrics \sanatKol
	    \lyricsto "sopranos" \new Lyrics \sanatKolKerto
	>>	

	\context Staff = "men" <<
	    \clef bass
	    \context Voice = "tenors" { \voiceOne \tenorMusic }
	    \context Voice = "basses" { \voiceTwo \bassMusic }
	>>
    >>


    \layout {
	indent = 0.0

        \context {
        \Lyrics
          \override LyricText #'font-size = #-1
	} 
    }

    
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 180 1)
      }
    }

}

\paper {
   #(set-paper-size "a4" 'landscape)
}

