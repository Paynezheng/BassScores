% lilypond 2.20.0
% Create By Payne
\version "2.18.2"

\header {
  title = "八"
  composer = "草东没有派对"
  arranger = "Transcribed by Payne"
}
rhythm = {
  r1 r r
  r2 g8-.\2 g\2 g16\2 \deadNote g\2 dis\2(e\2) 

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
