% lilypond 2.20.0
% Create By Payne
\version "2.20.0"
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
  c ees g fes 
  ees
}
\score {
  
  \SessionA
  \layout {}
  \midi {}
}

