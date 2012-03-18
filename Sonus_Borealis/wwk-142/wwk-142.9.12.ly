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
    \stemUp
    \time 3/2
    \partial 2*1
    \repeat volta 2 {
	b4 b | g1 g2 | a1 a4 a | b1 g2 | a1 
    	a4 a | d2 d d | c d es4 es | d2( c) b | a1
    }
    b2 | g1 g2 | a( b) c | b a g | f( d) \breathe
    e4 e | f2 f f | g g a4 a | g2 g fis | g1
    g4 g | d'1 b2 | c d es4 es | d2( b) \breathe a | 
    g1. \bar "||"
}

altoOneMusic =   \relative c'' { 
    \stemDown
    g4 g | g1 g2 | f1 d4 d | g1 d2 | d1 
    a'4 a | b2 b b | a h c4 c | g1 g2 | fis1 
    f2 | es1 c2 | f1 a2 | g d d | d1 
    a4 a | d2 d d | e e f4 f | d2 es d | d1
    d4 d | a'1 g2 | g g g4 g | g1 d2 | d1.
}

altoTwoMusic =   \relative c' { 
    \stemDown
    \shiftOff
    d4 d | d1 c2 | c1 d4 d | d1 d2 | d1 
    f4 f | f2 f f | f f g4 g | g1 d2 | d1
    d2 | b1 c2 | c1 d2 | d d d | d1 
    a4 a | d2 d d | e c c4 c | b2 es d | b1
    d4 d | d1 d2 | es2 d g4 g | d1 d2 | h1.
}

tenorMusic =  \relative c' { 
    \key d \minor
    \stemUp
    g4 g | b1 g2 | s1 a4 a | s1 g2 | fis1 
    a4 a | b2 b f | a f c'4 c | b2 a g | a1
    f2 | b1 g2 | c1 a2 | d c b | a1 
    a4 a | a2 a a | c g f4 f | b2 c a | g1 
    b4 b | a1 b2 | g g g | b g fis | g1.
}

bassMusic =  \relative c { 
    \stemDown
    g4 g | g'1 e2 | f1 fis4 fis | g1 b,2 | d1 
    d4 d | b2 b b | f' d c4 c | g'1 g,2 | d'1 
    d2 | es1 e2 | f1 fis2 | g2 g g, | d'1
    cis4 cis | d2 d d | c c f4 f | g2 c, d | g,1
    g'4 g | fis1 g2 | c, b c | d1 d2 | g,1.
}

sanatYsi = \lyricmode { 
    \set stanza = "9."
    Mi- nä vää- rin tein: si- nä ran- gais- tiin.
    Mi- nä ri- koin: sen e- dest' si- nä vit -- sat- tiin.
    Ja ris- tin- puu -- hun ri- pus- tet- tiin.
    Mi- nun pa- huu- ten' täh- den si- nä kuo- le- tet- tiin,
    Mi- nun syn- tein uh- riks' si- nä uh -- rat- tiin.
}

sanatYsikerto = \lyricmode { 
    Mi- nä hä-pi- än tein: si- nä vai- vat- tiin.
    Mi- nun syn- --- tein täh- den si- nä pii -- nat- tiin.

}

sanatKakstoist = \lyricmode { 
    \set stanza = "12."
    Kuin ___ kuo-le- man kamp- pauk- ___ siin tul- laan,
    Kosk' ___ se hä- tä mi- nu- a ___ ah -- dis- taa.
    Mi-nun ty- kö- nän' a- vul- las ol- vo,
    Kuo- ___ le- ___ mal- las- ___ tur- ___ vak- sen tul- vo,
    Täält' ___ ty- kös mi- nu- a ___ i-loon vie- ne.
}

sanatKakstoistkerto = \lyricmode { 
    Ann' ___ mie-le- sän pii- nas ___ muis-to ol- la,
    Sill' ___ mi- nu- a sil- --- loin ___ vah -- vis- ta.
}

\score { 
    
    \context StaffGroup <<
	\context Staff = "women" <<
	    \context Voice = "sopranos" { \voiceOne \sopMusic }
	    \context Voice = altosOne { \voiceTwo \altoOneMusic }
	    \context Voice = altosTwo { \voiceThree \altoTwoMusic }
	>>

	\lyricmode <<
	    \lyricsto "sopranos" \new Lyrics \sanatYsi
	    \lyricsto "sopranos" \new Lyrics \sanatYsikerto
	    \lyricsto "sopranos" \new Lyrics \sanatKakstoist
	    \lyricsto "sopranos" \new Lyrics \sanatKakstoistkerto
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
      tempoWholesPerMinute = #(ly:make-moment 180 2)
      }
    }


}

\paper {
   #(set-paper-size "a4" 'landscape)
}