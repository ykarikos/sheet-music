\version "2.20.0"
\include "suomi.ly"

#(set-global-staff-size 20)

global = {
%  \numericTimeSignature
  \time 6/8
  \autoBeamOff
  \key d \major
  \set Staff.midiInstrument = #"voice oohs"
}
      
\header {
    title = "Helan går"
    subtitle = "Intro: F. A. Ehrström: Joutsen"
%    composer = "Säv. Fredrik August Ehrström"
%    poet = "San. Poet"
    enteredby = "Yrjö Kari-Koskinen"
    copyright = "This work is licensed under the Creative Commons Attribution 4.0 International License."
    tagline = "The source is available at https://ykarikos.github.io/sheet-music/"
}

\paper {
    indent = 0.0
    #(define fonts
        (make-pango-font-tree "Gill Sans"
                              "Nimbus Sans"
                              "Luxi Mono"
                              (/ staff-height pt 20)))
}

melody = \relative c'' {
  \tempo "Andante"
  \mark "Intro"
  \partial 8 c8 | 
  f4 c8 a4 a8 | g[ a] b a4 c8 | f,[ g] a c[ b] a | g4. r4 c8 |
  d4 d8 e4 c8 | c[ d] e f4 c8 | b[ c] b a[ b] a | g4. r4 g8 |
  f4 f8 g4 g8 | a4 a8 g4 c8 | c4 a8 f[ g] a | g4. r4 c8 |
  e4 c8 f4 c8 | b8.[^"rit." c16] b[ a] g4. | 
  \time 2/4 c2^\fermata | \break
  \bar "||"
  \mark "Verse"
  \tempo "Allegro"
  a4 c | f,4. a8 | g8 g16 g g8 g | a f f4 |
  a4 c | f,4. a8 | g8 g16 g g8 g | f4. f8 |
  g c, c c | a' f f4 | g8 c, c c | a' f f4 |
  a c | f4.^\fermata \breathe f8 | e e16 e e8 e | 
  f4 \override NoteHead.style = #'cross f
  \bar "|."

}


verseOne = \lyricmode {
  En li -- ten få -- gel satt en gång
  och sjöng i fu -- ru -- skog.
  Han ha -- de sjun -- git da -- gen lång
  men dock ej sjun -- git nog.
  Och stru -- pen tor -- kat vid hans gom
  för -- trös -- tan stäm -- man bar.
  Vad sjöng den lil -- la få -- geln då?
  Jo!
  He -- lan går sjung hopp 
  fa -- der -- al -- lan lal -- lan lej
  He -- lan går sjung hopp 
  fa -- der -- al -- lan lej
  Och den som in -- te he -- lan tar
  han ej hel -- ler hal -- van får.
  He -- lan går!
  Sjung hopp
  fa -- der -- al -- lan lej! Hej!
}


\score { 
  \new Staff <<
    \new Voice = melody {
      \global
    	\transpose f d { \melody }
    }
    \addlyrics { \verseOne }
  >>

  \midi { 
    \tempo 2 = 45
  }
  
  \layout { 
  }

}

\markup \fill-line {
  \center-column {
    \vspace #2
    \larger \bold "Vaihtoehtoinen intro" 
    \larger "F. A. Ehrström: Lähteellä"
  }
}

melodyAlternative = \relative c'' {
  \tempo "Andante"
  \mark "Intro"
  \partial 8 c8 | 
  c4 c8 a4 f'8 | c4 c8 a4 a8 | a[ g] a b4 c8 | a4. r4 c8 | \break
  a'4 g8 f4 e8 | d[ e] f c4 d8 | c4 f8 e4 g8 | f4. r4. \bar "||"
}

verseAlternative = \lyricmode {
  En li -- ten få -- gel satt en gång
  och sjöng i fu -- ru -- skog.
  Han ha -- de sjun -- git da -- gen lång
  men dock ej sjun -- git nog.
}

\score { 
  \new Staff <<
    \new Voice = melody {
      \global
      \transpose f d { \melodyAlternative }
    }
    \addlyrics { \verseAlternative }
  >>

  \midi { 
    \tempo 2 = 45
  }
  
  \layout { 
  }

}

\markup \larger { 
  "Joku kysyy:" \italic "Vad sjöng den lilla fågeln då?" 
}

\markup \larger { 
  \vspace #1
  "Kaikki laulaen:" \italic "Helan går..."
}

