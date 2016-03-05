% ly2dvi -P sydan.ly

%% Joel Blomqvist: On sydän hellä (mi rakastaapi)
%% Lilypond: (C) 2002, Yrjö Kari-Koskinen
%% <yrjo.kari-koskinen@hut.fi>

\include "deutsch.ly"

\version "2.18.0"

%#(set-global-staff-size 16)

\header {
  title = "On sydän hellä (mi rakastaapi)"
  composer = "Joel Blomqvist"
  enteredby = "Yrjö Kari-Koskinen"
}

melodia =  \transpose d g \relative c'' \context Voice = "mel" {
  \time 3/4
  \partial 4.
  \key d \minor
  \set autoBeaming = ##f

  a8  a8.[ a16] | a4  e8[ f]  g8.[ a16] | f4 d8 r8  d8[ d8] | 
  f4. d8  d8.[ cis16] | e4. e8  a8.[ e16] | g4 f8 f8  c'8.[ g16] |
  b4 a8 a8  c8.[ a16] | f4  f8[ g]  a[ g] | a4. a8  a8.[ b16] |
  c4 a8 f  f8.[ e16] | f4. a8  d8.[ a16] | d4 b8 g  a8.[ e16] |
  f4 d8 d  d8.[ e16] | f4 a8 a  e8.[ f16] | d4.
  \bar "|."
}

soinnut = \transpose d g \chordmode {
  r4.
  a2.:7 d4.:m d4.:m/+c b2. a2. 
  d2:m c4/+e f2 f4/+a
  b2 c4 f2 d4:m f4./+a b8 c4
  f2 d4:m g2:m a4:7 d2:m b4 
  d2:m/+a a4:7 d4:m
}

sanat = \lyricmode {

  On sy- dän hel- lä, mi ra- kas- taa- pi 
  sua syn-nin or-ja sä kah- leis- sas.
  On sil- mä kir- kas, mi seu- ra- jaa- pi 
  sua la- psi kau- ka- na ko- dis- tas.
  On kor- va tark- ka, mi kuun- te- lee 
%  pi 
%  sun a- vun- huu- to- as ai- ni- aan.
  On kie- li ar- mas, mi loh- dut- taa- pi 
  myös syn- tis- rauk- kaa- kin su- rus- sas.
%On lähde sulle, sä janoovainen. On leipä nälkäisen syödä. Syö!
%On pakopaikka, joss ei sua uhkaa tuo synnin kuoleman kolkko yö.
%On turvapaikkansa kyyhkysellä ja pääskyselläkin pesä on.
%On rauha sielulle väsyneelle ja lepo kurjalle loputon.
%Sä mitä tarvitset, sielu, näistä, se riennä kiiruusti ottamaan,
%sill armo Herran on aina valmis, Hän vielä tarjoopi armoaan.
%Oi tullos Jeesuksen luo, niin löydät armon kyllyyden autuuden.
%Niin Jeesus, Jeesus, Hän yksin meille on kylliks aina ja iäisest.

}

\score { 
  <<
  \context ChordNames \soinnut

    \context Staff = Laulu \melodia
  >>
  \layout {
     line-width = 17.0\cm
  }
}