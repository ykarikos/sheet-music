% J. S. Bach's Crab Canon from The Musical Offering
% http://en.wikipedia.org/wiki/The_Musical_Offering

% Played by Pierre Hantaï in Spotify:
% http://open.spotify.com/track/3XUKWj9TItJv0xLoZutPJI

\version "2.18.0"
\include "suomi.ly"

#(set-global-staff-size 18)

global = {
%  \numericTimeSignature
  \time 2/2
%  \autoBeamOff
   \key c \minor
   \set Staff.midiInstrument = #"harpsichord"
}

\header {
    title = "Musikalisches Opfer (BWV 1079)"
    subtitle = "Canon 1 a 2, super thema regium"
    composer = "Johann Sebastian Bach (1685–1750)"
    enteredby = "Yrjö Kari-Koskinen"
    copyright = "This work is licensed under the Creative Commons Attribution 4.0 International License."
    tagline = "The source is available at https://ykarikos.github.io/sheet-music/"
}

\paper {
    indent = 0.0
    #(define fonts
        (make-pango-font-tree "Baskerville"
                              "Nimbus Sans"
                              "Luxi Mono"
                              (/ staff-height pt 20)))
}

thema-right = {
    c2 es | g as | h, r4 g'4( |
    g) fis2 f4( | f) e2 es4( |
    es) d des_4 c | h g c f |
    es2 d\prallmordent | c es |

    g8 f g c g es d es |
    f g a h c es, f g |
    as d, es f g f es d |
    es_2 f_1 g as b as g f |
    g as b c^1 des^4 b as g |
    a h c d es c h! a! |
    h c d es f d g, d' |
    c d es f es d c h |
    c4 g es\prall c
}

themareverse-right = {
  c4 es g_1 c |
  h8_1 c d es f es d c |
  d g, d' f^5 es^3 d c h^3 |
  a h^1 c es d c h! a!^3 |
  g as! b! des^4 c^5 b as g |
  f g as b as g f es_2 |
  d_1 es f g f es d as'^4 |
  g^3 f es c' h a g f |
  es_2 d es g c g f g |

  es2 c |
  d es |
  f4 c g h |
  c des d es( |
  es) e2 f4( |
  f) fis2 g4( |
  g) r h,2 |
  as' g |
  es c |
}

thema-left = {
    c2 es | g as | h, r4 g'4( |
    g) fis2 f4( | f) e2 es4( |
    es) d des c | h g c f |
    es2 d\prall | c es |

    g8^2 f g c g es d es |
    f g a^3 h c es, f g |
    as d, es f g f es d |
    es f g as b as g f |
    g as b c des b as g |
    a h c d es c h! a! |
    h c d es f d g, d' |
    c^4 d es f es d c h |
    c4 g es c
}

themareverse-left = {
  c4 es g c |
  h8^5 c d es f es d c |
  d^2 g, d' f es d c h |
  a h c^1 es^2 d^1 c h! a! |
  g^5 as! b! des^2 c^1 b as g |
  f g as b as g f es |
  d es f g f es d as'^2 |
  g^3 f es c' h a g f |
  es d es g c g f g |

  es2 c |
  d es |
  f4 c g h |
  c des d es( |
  es) e2 f4( |
  f) fis2 g4( |
  g) r h,2 |
  as' g |
  es c |
}


lowerOne = \relative c {
    \thema-left
    \bar "||"
    \themareverse-left
    \bar "|."
}

upperOne = \relative c' {
    \themareverse-right
    \thema-right
}

\score {
  \new GrandStaff <<
    \new Staff <<
      \new Voice = upper {
        \global
	\upperOne
      }
    >>
    \new Staff <<
      \new Voice = lower {
        \global
	\clef bass
	\lowerOne
      }
    >>
  >>

  \midi {
    \tempo 2 = 60
  }

  \layout { }

}
