% lilypond 2.18.2
% Create By Payne
\version "2.24.1"

% 很吔的是2.18.2不支持中文渲染 

\header {
  title = "无尽"
  composer = "Composed by Supper Moment"
  arranger = "Transcribed by Payne"
}
hideFretNumber = {
  \once \hide TabNoteHead
  \once \hide NoteHead
  \once \hide Stem
  \once \override NoteHead.no-ledgers = ##t
  \once \override Glissando.bound-details.left.padding = #0.3
}


rhythm = {

    % 1-

    r1  r2 ^"明日那 个幻想" r4 fis,4\glissando fis'2. fis4
    f1 dis1 cis1 b1~ b1 cis1~ cis2 cis2\glissando{\hideFretNumber \grace a4\2 }
    \repeat unfold 32 { b,8 }
    \repeat unfold 15 { ais8 } cis8
    \repeat unfold 15 { dis8 } ais8
    \repeat unfold 15 { gis8 } ais8
    \repeat unfold 9 { cis8 } r8 r4 r4 gis4\glissando 
    fis'4 fis4 fis4 cis8 fis8 f2 f4 cis4\glissando{\hideFretNumber \grace c4 }
    dis2 dis4 ais8 dis8 \break

    cis4 \staccato cis8 cis8 cis8 cis8 gis8 ais8 
    b2~ b4~ b8 fis8
    b8 fis8 b4~ b4 fis4
    b2 dis2
    b'8\glissando cis8 cis8 cis8 b4 fis8 b8 \break

    ais4 ais4 ais8 ais8 f8 cis8
    ais4 ais8 ais8 ais4 ais8 ais8 
    dis4 dis8 dis8 f4 f8 f8
    fis2 gis2

    gis,2 gis4. \deadNote gis8 
    gis4 gis4~ gis4 ais4
    b2 b4 ais8 b8
    cis2 gis'2
    fis1~ fis1
    d1 e2~ e4~ e4\glissando{\hideFretNumber \grace c4 }    
    fis,1~

    <fis~ fis'~>2 <fis~ fis'~>4 <fis fis'>4
    d'2~ d4 d4
    e4 e4 e4 e4 
    \repeat unfold 7 { fis,4 \staccato} gis4 \staccato
    \repeat unfold 5 { ais4 \staccato } cis4 \staccato gis'8\glissando ais8 gis4
    \repeat unfold 3 { dis4 \staccato } dis8 ais8
    \repeat unfold 2 { cis4 \staccato cis4 }
    c4 dis4 fis4~ fis8 \glissando c'8\2~
    c4 c8\2 fis,8\3 c2\4\glissando{\hideFretNumber \grace b4 }
    gis4 gis4 gis4 gis8 dis'8 gis8 dis8 gis,4 gis4 gis4
    ais2 ais4~ ais8 f8
    ais4 \staccato ais4 ais4 gis8 ais8
    b4 b4 b4 b8 fis8 b4 \staccato b8 b8 b8 b8 b8 c8
    cis4 gis'8\2 gis8\2\glissando cis8\2 gis8\3 cis8\2\glissando dis8\2
    cis4.\2 gis8\3 cis,2\4
    \repeat unfold 16 { d4 }
    cis4 cis4 cis4 cis8 cis8 cis4 cis8 cis8 cis8 cis8 cis8 cis8
    fis,2 gis2
    a2 e'8\glissando fis8~ fis4
    d4 d8 d8 d4 d8 a8
    d4 d8 d8 d4 a8\glissando b8 
    \break

    d4 d8\glissando e8 e8\glissando fis8 a8 fis8\glissando{\hideFretNumber \grace cis'4 }
    cis4 cis8 d8~ d8 cis8 a,4
    cis4 cis8 cis8 cis4 cis8 gis8
    cis8 gis8 cis4 cis4 cis4
    fis4 fis8 fis8 fis4 cis4\glissando{\hideFretNumber \grace d4 }
    fis8 cis8 fis8\glissando gis8\2 fis4 cis4
    \break

    d4 d4 d4 d8 d8
    d4 d8 d8 d4 d8 d8
    d8 d8 d4 d4 d8 d8
    d4 d8 d8 d8 d8 d8 cis8 cis4 cis8 cis8 cis4~ cis8 gis8
    cis4 e,4 gis4 gis4
    \break

    fis2 \glissando{\hideFretNumber \grace g4 } fis'8 cis8 fis8\glissando gis8\2
    fis2 fis4 cis4
    d4 d4 d4 cis4
    d4 d4 d4 d4
    \repeat unfold 7 { cis4 } r4

    r4 r4 b2~ b2 b2
    cis2 cis4 gis8 cis8
    cis4 cis8\glissando dis8\3 cis4 b4
    ais4 ais8 ais8 ais4 ais8 ais8
    ais8 f8 g8 a8 ais4 ais8 cis8
    dis4 dis8 dis8 f4 f8 f8
    fis4 f4 cis4 ais4
    gis4 gis4 gis4 gis4
    gis4 gis4 gis4 gis4\glissando
    cis4\4 cis4 cis4 cis4
    cis4 cis4 cis4 cis4
    \break

    fis4 fis4 fis4 cis8 fis8
    f4 f4 f4 cis4\glissando{\hideFretNumber \grace b4 }
    dis4 dis4 dis8 dis8 ais8 dis8
    cis4 cis8 cis8 cis8 cis8 gis8 ais8 b2~ b4~ b8 fis8 
    b8 fis8 b4~ b4 fis4
    b2~ b4 cis4
    dis4\glissando{\hideFretNumber \grace f4 } b4 cis2\glissando{\hideFretNumber \grace b4 }
    ais,4 ais8 ais8 ais4 ais'8 f8
    gis4 gis8\glissando ais8 fis4 ais,4
    dis4 dis8 dis8 f4 f8 f8
    g4 g4 ais4 ais4
    b,4 b4 b4~ b8 fis8
    b8 fis8 b4 b4 ais8 b8
    \break

    cis2 dis8\glissando fis8 fis8 \glissando gis8\2
    cis4 gis4\2 cis,4 cis4
    dis4 dis4 dis4 dis4 dis4 dis8 dis8 dis4 dis4
    cis4 cis8 cis8 cis4 cis4 cis4 cis8 cis8 cis4 cis4
    b1 cis1

    fis,4 fis4 fis4 fis4
    fis4 fis4\glissando{\hideFretNumber \grace g4 } fis'8 fis8 fis4\glissando{\hideFretNumber \grace e4 }

    % 尾奏
    fis,2~ fis4~ fis8 \deadNote fis8
    fis4 fis4 \deadNote fis8 fis8~ fis8 \deadNote fis8
    d'4 d8 d8 d4 d8 d8
    e4 e4 \deadNote e8 e8~ e4 \glissando{\hideFretNumber \grace c4 }
    
    fis,2~ fis4~ fis8 \deadNote fis8
    fis4 fis4 \deadNote fis8 fis8~ fis8 \deadNote fis8
    d'4 d8 d8 d4 cis8 d8
    e4 e8 gis8 a8 gis8 e4 \glissando{\hideFretNumber \grace c4 }

    fis,4 fis8 fis8 fis4 \deadNote fis8 \deadNote fis8 
    \deadNote fis8 \deadNote fis8 fis4 \deadNote fis8 fis8~ fis8 \deadNote fis8
    d'4 d8 d8 d4 \deadNote d8 \deadNote d8 
    e4 e4 \deadNote e8 e8~ e4 

    fis,4 fis8 fis8 fis4 \deadNote fis8 \deadNote fis8 
    \deadNote fis8 \deadNote fis8 gis4 a4 b4
    d4 d8 d8 d4 d8 d8
    e4 e8 gis8 a8 gis8 e4

    fis,4 fis8 fis8 fis4 fis8 fis8
    fis8 fis8 fis8 fis8 fis4 fis8 fis8
    d'4 d8 d8 d4 d8 d8
    e,8 e8 e8 gis8 a8 gis8 e4

    fis4 fis8 fis8 fis4 fis8 cis'8
    fis8 cis8 fis8\glissando gis8\2 fis4 b,8 cis8
    d4 d4 d4 d4
    e4 e4 e4 e4



    \bar "|."
  
}

\score {
\new StaffGroup<<
  \new Staff \with {
    \omit StringNumber
    }\relative{
    \clef "bass_8"
    \key b \major
    \numericTimeSignature
    \time 4/4 
    \rhythm
  }
  \new TabStaff \with {
    stringTunings = #bass-tuning
  }
  \relative{
    %\tabFullNotation
    \rhythm
  }

>>

}