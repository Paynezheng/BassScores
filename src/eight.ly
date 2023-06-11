% lilypond 2.20.0
% Create By Payne
\version "2.18.2"

\header {
  title = "八"
  composer = "草东没有派对"
  arranger = "Transcribed by Payne"
}
rhythm = {
  r1 ^"Drop D tunning" r r
  r4 r4 r8 a,,8\4 c16\4 d16\4~ d16 d,16\4~ | \break
  
  \repeat volta 5 {
    d4 ^ "volta 5"g'16\3\glissando a16\3 d,,8\4 c'8\4 \staccato c8\4 d8\4 \staccato d8\4
    c8\4 \staccato c8\4 g'16\3\glissando a16\3 c,8\4 g'8\3 \staccato g8\3 a8\3 \staccato a8\3
    g,8\4 \staccato g8\4 g'16\2\glissando a16\2 g,8\4 e'8\3 \staccato e8\3 f8\3 \staccato f8\3
    bes,8\4 \staccato bes8\4 bes16.\4 a32\4 bes8\4 c8\4 \staccato c8\4 a16.\4 c32\4 a8\4 | \break
  }
  
}

\score {
\new StaffGroup<<
  \new Staff \with {
    \omit StringNumber
    }\relative{
    \clef "bass_8"
    \key f \major
    \numericTimeSignature
    \time 4/4 
    \rhythm
  }
  \new TabStaff \with {
    %stringTunings = #bass-tuning
    stringTunings = \stringTuning <d,, a,, d, g,>
  }
  \relative{
    %\tabFullNotation
    \rhythm
  }
>>
}
