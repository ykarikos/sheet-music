\version "2.18.0"
\include "suomi.ly"

#(set-global-staff-size 18)

global = { 
%  \numericTimeSignature
  \time 4/4 
%  \autoBeamOff
  \set Staff.midiInstrument = #"voice oohs"
}

\header {
  title = "Suvivirsi"
  composer = "Ruotsalainen kansansävelmä"
  mutopiacomposer = "Traditional"
  maintainer = "Yrjö Kari-Koskinen"
  copyright = "This work is licensed under the Creative Commons Attribution 4.0 International License."
  tagline = "The source is available at https://ykarikos.github.io/sheet-music/"
}

\paper {
%  indent = 0
}


SopMusic = \transpose es a, \relative c'' {
  \key es \major
  \set Staff.instrumentName = #"Tenore"
  \set Staff.shortInstrumentName = "T"
  \clef "treble_8"

  \partial 4 g4
  \repeat volta 2 {
    g f es d | es( f) g g | b b as as | 
  }
  \alternative {
    { g2. g4 }
    { g2. b4 }
  } {}

  c b as g | f2 f4 g | as as g g | f2. f4 |
  g f es d | c2 c4 b | c es es d  | es2.
  \bar "|."
}

stanzaOneLyrics = \lyricmode {
  Jo jou- tui ar- mas ai- ka ja su- vi su- loi- nen. Kau-
}

stanzaOneVoltaLyrics = \lyricmode {
  \skip 1
  nii- sti jo- ka paik- kaa ko- ris- taa kuk- ka-
  \skip 1 \skip 1
  nen. Nyt siu- na- us- taan suo- pi taas läm- pö au- rin- gon.
  Se luon- non uu- deks' luo- pi, sen kut- suu e- lo- hon.
}


BassMusic = \transpose es a \relative c, {
  \key es \major
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
      \new Lyrics \lyricsto "Sop" {
        \stanzaOneVoltaLyrics
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