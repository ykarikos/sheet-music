\version "2.16.0"
\include "suomi.ly"

#(set-global-staff-size 18)

global = { 
%  \numericTimeSignature
  \time 4/4 
%  \autoBeamOff
  \key es \major
  \set Staff.midiInstrument = #"voice oohs"
}

\header {
  title = "Suvivirsi"
  composer = "Ruotsalainen kansansävelmä"
  mutopiacomposer = "Traditional"
  maintainer = "Yrjö Kari-Koskinen"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = ""
}

\paper {
%  indent = 0
}


SopMusic = \relative c'' {
  \set Staff.instrumentName = #"Soprano"
  \set Staff.shortInstrumentName = "S"

  \partial 4 g4
  \bar "|:"
  g f es d | es( f) g g | b b as as | g2. g4
  \bar ":|" 

  g2. b4 | c b as g | f2 f4 g | as as g g | f2. f4 |
  g f es d | c2 c4 b | c es es d  | es2.
  \bar "|."
}

stanzaOneLyrics = \lyricmode {
}


BassMusic = \relative c, {
  \set Staff.instrumentName = #"Basso"
  \set Staff.shortInstrumentName = "B"
  \clef bass
  es4 | es' d c b | g( b) es c | d es f b, | es2. es,4 |
  es'2. g4 | as g f es | d( c) b es | c d es es | b2. d4 |
  es d c g | as( f') c es | as, g as b | es,2.
}



\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "Sop" { 
        \global \SopMusic
      }
     \new Lyrics \lyricsto "Sop" {
       \stanzaOneLyrics
     }
    >>
    \new Staff <<
      \new Voice = "Bass" {
        \global \BassMusic
      }
    >>
  >>
  \midi { 
    \tempo 4 = 70
  }
  \layout {
  }
}