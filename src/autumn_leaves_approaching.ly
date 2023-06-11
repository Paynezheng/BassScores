% lilypond 2.20.0
% Create By Payne
\version "2.18.2"
\header {
  title = "Autumn Leaves"
  composer = "Payne"
  tagline = \markup {
%     Engraved at
%     \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
%     with \with-url #"http://lilypond.org/"
%     \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}
SessionA = {
  \clef bass
  \key g \minor
  c ees g fes 
  f a, c ces
  bes, d f fes
  ees g bes aes
  \break
  a a, c ees
  d a, ges, ges,
  g, bes, d ges
  g d g, bes,
  \break
  c ees g fis 
  f a, c8 f ees b,
  bes,4 bes f fes
  ees g bes bes 
  \break
  a ees c cis
  d c f a
  g a bes a
  g f d bes,
  \break
  a, bes, c ees
  d ees f a 
  g f ees fis 
  g a bes b
  \break
  c' c g ges
  f ees f a
  bes bes, d f
  ees ees g ees
  \break
  a bes c' des'
  d' e' <d (f'> <d) a>
  g g ges ges 
  f f e \tuplet 3/2 { e8 ees bes, }
  \break
  a,4 a, ees ees
  d ees f8 a a aes
  g4 a bes a 
  g g, bes, b,
  \bar "|."
}
% A = {
%     c1:m7 f:7 bes:maj ees:maj 
%     a:m7.5- d:7.13- g:m7 g:m7
% }
\score {
  <<
  \chords {
    c1:m7 f:7 bes:maj ees:maj 
    a:m7.5- d:7.13- g:m7 g:m7
    c1:m7 f:7 bes:maj ees:maj 
    a:m7.5- d:7.13- g:m7 g:m7
    a:m7.5- d:7.13- g:m7 g:m7
    c1:m7 f:7 bes:maj ees:maj
    a:m7.5- d:7.13- g2:m7 ges:m7 f:m7 e:7
    a1:m7.5- d:7.13- g:m7 g:m7 
  }
  \new Staff \SessionA
  >>
  \layout {}
  \midi {}
}

