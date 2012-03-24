%% Älä itke äitini
%% Sovitus kanteleelle: Yrjö Kari-Koskinen
%% Lilypond: (C) 2002, Yrjö Kari-Koskinen
%% <yrjo.kari-koskinen@hut.fi>

\include "deutsch.ly"

\version "1.4.9"

%\include "paper26.ly"

\header {
  title = "Älä itke äitini"
  composer = "Trad."
  arranger = "Yrjö Kari-Koskinen"
  enteredby = "Yrjö Kari-Koskinen"
}

melodia = \notes \relative c' \context Voice = M {
	\time 4/4    
	\key g \minor
%	\stemUp

	d4 g g g | g fis fis2 | b4 a b c | d2 a | 
	b4. c8 d4 b | a fis g a | b a d, fis | g2 g
	\bar "|."
}

saestys = \notes \context Voice = S {
	\time 4/4    
	\key g \minor
	\clef bass
%	\property Voice.autoBeaming = ##f
%	\property Voice.TupletBracket \set #'tuplet-bracket-visibility = ##f
%	\stemDown

	\times 2/3 { g,8 d g}
	\times 2/3 { g,8 d g}
	\times 2/3 { g,8 d g}
	\times 2/3 { g,8 d g} |
	\times 2/3 { a,8 d fis}
	\times 2/3 { a,8 d fis}
	\times 2/3 { a,8 d fis}
	\times 2/3 { a,8 d fis} |
	\times 2/3 { g,8 d g}
	\times 2/3 { g,8 d g}
	\times 2/3 { g,8 d g}
	\times 2/3 { g,8 d g} |
	\times 2/3 { a,8 d fis}
	\times 2/3 { a,8 d fis}
	\times 2/3 { a,8 d fis}
	\times 2/3 { a,8 d fis} |
	\times 2/3 { g,8 d g}
	\times 2/3 { g,8 d g}
	\times 2/3 { g,8 d g}
	\times 2/3 { g,8 d g} |
	\times 2/3 { a,8 d fis}
	\times 2/3 { a,8 d fis}
	\times 2/3 { g,8 es g}
	\times 2/3 { g,8 es g} |
	\times 2/3 { g,8 d g}
	\times 2/3 { g,8 es g}
	\times 2/3 { a,8 d fis}
	\times 2/3 { a,8 d fis} |
	\times 2/3 { g,8 d g}
	\times 2/3 { g,8 d g}
	g,2 

	\bar "|."
} 


\score { 

  \context StaffGroup = kannel <

    <
   \context Staff = mel \notes \melodia
    >

    <
    \context Staff = sae \notes \saestys
    >
  >

  \paper {
     linewidth = 16.0\cm
%     linewidth = \textwidth
  }

}
