% lilypond 2.20.0
% Create By Payne
\version "2.24.1"

\header {
  title = "八"
  composer = "草东没有派对"
  arranger = "Transcribed by Payne"
}
rhythm = {
  r1 ^"Drop D tunning" r r
  r4 r4 r8 a,,8\4 c16\4 d16\4~ d16 d,16\4~ | \break

  \repeat volta 2 {

    d4 g'16\3\glissando a16\3 d,,8\4 g'8\3 f8\3 \tuplet 3/2 4 { c8\4 bes8\4 a8\4 }
    c4\4 g'16\3\glissando a16\3 c,8\4 g'8\3 \staccato f8\3 \tuplet 3/2 4 { c8\4 bes8\4 a8\4 }
    g8\4 \staccato g8\4 g'16\2\glissando a16\2 g,8\4 e'8\3 \staccato e8\3 f8\3 \staccato f8\3
    bes,8\4 \staccato bes8\4 bes16.\4 a32\4 bes8\4 c8\4 \staccato c8\4 a16.\4 c32\4 a8\4 | \break
    
    \repeat unfold 2 {
      d,8\4 \staccato d8\4 g'16\3\glissando a16\3 d,,8\4 c'8\4 \staccato c8\4 d8\4 \staccato d8\4
      c8\4 \staccato c8\4 g'16\3\glissando a16\3 c,8\4 g'8\3 \staccato g8\3 a8\3 \staccato a8\3
      g,8\4 \staccato g8\4 g'16\2\glissando a16\2 g,8\4 e'8\3 \staccato e8\3 f8\3 \staccato f8\3
      bes,8\4 \staccato bes8\4 bes16.\4 a32\4 bes8\4 c8\4 \staccato c8\4 a16.\4 c32\4 a8\4 | \break
    }

    \repeat unfold 2 {
      d,8\4 \staccato d8\4 g'16\3\glissando a16\3 d,,8\4 c'8\4 \staccato c8\4 d4\4
      c8\4 \staccato c8\4 g'16\3\glissando a16\3 g8\3 g8\3 \staccato g8\3 a4\3
      a,8\4 \staccato a8\4 a'8\2 a,16\4 a'16\2 a,16\4 a'16\2 a,16\4 a'16\2 a8\2 a,8\4 
      bes8\4 \staccato bes8\4 a'8\2 bes,8\4 a'8\3 c,8\4 cis8\4 d8\4 | \break
    }
    \repeat unfold 2 {
      d,4\4 \deadNote d16\4 d16\4 r16 d16\4~ d4 d8 g8 
      f8\4 f8\4 \deadNote f16\4 f16\4 r16 f16\4~ f4\4 f16\4\glissando a16\4 c8\4
      bes8\4 bes8\4 \deadNote d16\4 g8\3 g16\3~ g16\3 \deadNote g16\3 g8\3 g4\3
      bes,8\4 \staccato bes8\4 \deadNote d16\4 bes16\4 bes16\4 c16\4 a'8\3 c,8\4 cis8\4 d8\4 | \break
    }
  }
  \repeat unfold 2 {
    \repeat unfold 8 { d,8\4 }
    \repeat unfold 8 { f8\4 }
    \repeat unfold 12 { bes8\4 } a'8\3 c,8\4 cis8\4 d8\4 | \break
  }
  r1 r
  \repeat unfold 3 {
    d8\4 \glissando{\hideNotes \grace d,8\4 }\unHideNotes d8\4 f8\4 d8\4 g8\4 d16\4 f16\4~ f16\4 d16\4 aes'8\4 
    g8\4 d8\4 f8\4 d8\4 g8\4 d16\4 f16\4~ f16\4 d16\4 aes'8\4 \glissando{\hideNotes \grace d'8\4 }\unHideNotes
  }
  d,8\4 \glissando{\hideNotes \grace d,8\4 }\unHideNotes d8\4 f8\4 d8\4 r4 r4  | \break
  
  f8\4 d8\4 g8\4 d8\4 f8\4 d16\4 aes'16\4~ aes16\4 g16\4 d8\4 
  d8\4  d8\4 f8\4 d8\4 g8\4 d16\4 f16\4~ f16\4 d16\4 aes'8\4 
  g8\4 d8\4 f8\4 d8\4 g8\4 d16\4 f16\4~ f16\4 d16\4 aes'8\4 \glissando{\hideNotes \grace d'8\4 }\unHideNotes

  \bar "|."
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
