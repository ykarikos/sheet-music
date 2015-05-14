#(ly:set-option 'old-relative)
%% Älä itke äitini
%% Sovitus kanteleelle: Yrjö Kari-Koskinen
%% Lilypond: (C) 2002, Yrjö Kari-Koskinen
%% <yrjo.kari-koskinen@hut.fi>

\include "deutsch.ly"

\version "2.17.14"

%#(set-global-staff-size 26)

\header {
  title = "Älä itke äitini"
  composer = "Trad."
  arranger = "Yrjö Kari-Koskinen"
  enteredby = "Yrjö Kari-Koskinen"
}

melodia =  \relative c' \context Voice = M {
	\time 4/4    
	\key g \minor
%	\stemUp

	d4 g g g | g fis fis2 | b4 a b c | d2 a | 
	b4. c8 d4 b | a fis g a | b a d, fis | g2 g
	\bar "|."
}

saestys =  \context Voice = S {
	\time 4/4    
	\key g \minor
	\clef bass
%	\set autoBeaming = ##f
%	\override TupletBracket.bracket-visibility = ##f
%	\stemDown

	\tuplet 3/2 { g,8 d g}
	\tuplet 3/2 { g,8 d g}
	\tuplet 3/2 { g,8 d g}
	\tuplet 3/2 { g,8 d g} |
	\tuplet 3/2 { a,8 d fis}
	\tuplet 3/2 { a,8 d fis}
	\tuplet 3/2 { a,8 d fis}
	\tuplet 3/2 { a,8 d fis} |
	\tuplet 3/2 { g,8 d g}
	\tuplet 3/2 { g,8 d g}
	\tuplet 3/2 { g,8 d g}
	\tuplet 3/2 { g,8 d g} |
	\tuplet 3/2 { a,8 d fis}
	\tuplet 3/2 { a,8 d fis}
	\tuplet 3/2 { a,8 d fis}
	\tuplet 3/2 { a,8 d fis} |
	\tuplet 3/2 { g,8 d g}
	\tuplet 3/2 { g,8 d g}
	\tuplet 3/2 { g,8 d g}
	\tuplet 3/2 { g,8 d g} |
	\tuplet 3/2 { a,8 d fis}
	\tuplet 3/2 { a,8 d fis}
	\tuplet 3/2 { g,8 es g}
	\tuplet 3/2 { g,8 es g} |
	\tuplet 3/2 { g,8 d g}
	\tuplet 3/2 { g,8 es g}
	\tuplet 3/2 { a,8 d fis}
	\tuplet 3/2 { a,8 d fis} |
	\tuplet 3/2 { g,8 d g}
	\tuplet 3/2 { g,8 d g}
	g,2 

	\bar "|."
} 


\score { 

  \context StaffGroup = "kannel" <<

    <<
   \context Staff = "mel"  \melodia
    >>

    <<
    \context Staff = "sae"  \saestys
    >>
  >>

  \layout {
     line-width = 16.0\cm
%     line-width = \textwidth
  }

}
