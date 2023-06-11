\version "2.18.2"
\header {
  title = "Autumn Leaves Walking Bass (Arpeggio)"
  composer = "Composed by Payne"
  tagline = \markup {}
}

%Bb: Bb C D Eb F G A 
rhythm = {
  c,4\3 ees\3 g\2 bes\1
  a\1 f\2 ees\2 c\3 
  bes\3 d\2 f\2 a\1
  g\1 ees\2 d\2 bes\3
  \break
  
  a'8\1 a\1 g4\1 a4\1  \tuplet 3/2 { g8\1 ees8\1 c8\1 }
  d4\3 fis\2 a\2 c,\3
  bes\3 g\4 d'\3 f\2
  g\2 f\2 d\3 bes\3
  \break
  
  c\3 ees\2 g,\4 bes\3
  a\3 f\4 c'\3 ees\2
  d\2 bes\3 f'\2 a\1
  g\1 ees\2 d\2 bes\3
  \break

  a\4 c\4 ees\3 g\2
  a\2 fis\2 d\3 c\3
  bes\3 g\4 d'\3 f\2
  g\2 bes\2 d\1 f\1
  \break

  ees\1 c\1 a\2 g\2
  fis\2 d\3 a'\2 c\1
  d\1 bes\1 g\2 f\2
  d\3 bes\3 g\4 b\3
  \break

  c\3 ees\3 g\2 bes\1
  c\1 a\1 f\2 ees\2 
  d\2 bes\3 f'\2 a\1
  g\1 ees\2 d\2 bes\3
  \break

  a\4 ees'\3 a\2 ees\3
  d\3 fis\2 a\2 d,\3
  g\2 g\2 ges\2 ges\2
  f8\2 f\2 \tuplet 3/2 { c'8\1 a\1 f\2 } e4\2 e\2
  \break

  ees\2 a\1 g\1 ees\2
  d\2 c\3 a\4 fis\4 
  g\4 bes\3 d\3 f\2
  g1\2  \bar "|."
}

\score {
\new StaffGroup<<
  \chords {
    c1:m7 f:7 bes:maj ees:maj 
    a:m7.5- d:7 g:m7 g:m7
    c1:m7 f:7 bes:maj ees:maj 
    a:m7.5- d:7 g:m7 g:m7
    a:m7.5- d:7 g:m7 g:m7
    c:m7 f:7 bes:maj ees:maj 
    a:m7.5- d:7 g2:m7 ges:7 f:7 e:7
    a1:m7.5- d:7 g:m7 g:m7
  }
  \new Staff \with {
    \omit StringNumber
    }\relative{
    \clef "bass_8"
    \key g \minor
    \numericTimeSignature
    \time 4/4 
    \tempo 4=130
    \set Staff.midiInstrument = "acoustic bass"
    %"electric bass (finger) "
    \rhythm
  }
  \new TabStaff \with {
    stringTunings = #bass-tuning
  }\relative{
    %\tabFullNotation
    \rhythm
  }
>>
  \layout {}
  \midi {
%     \context {
%         \new Staff \with {
%           \omit StringNumber
%           }\relative{
%           \clef "bass_8"
%           \numericTimeSignature
%           \time 4/4 
%           \tempo 4=240
%           \set Staff.midiInstrument = "electric bass (finger) "
%           \rhythm
%         }
%     }
  }
}

