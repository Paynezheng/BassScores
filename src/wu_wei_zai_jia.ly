% lilypond 2.18.2
% Create By Payne
\version "2.24.1"

% 很吔的是2.18.2不支持中文渲染 

\header {
  title = "无谓再假"
  composer = "Composed by Mr."
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

    % 1-10 前奏
    r1 r2 r4 r8 e,,8 \break 
    \repeat unfold 8 { e8 } 
    \repeat unfold 8 { fis8 } 
    \repeat unfold 7 { gis8 } fis16\glissando gis16
    \repeat unfold 4 { gis8 } gis16 gis16\glissando fis16 gis16 gis8~ gis8 \break
    \repeat unfold 8 { e8 } 
    \repeat unfold 8 { fis8 } 
    \repeat unfold 8 { e8 } 
    \repeat unfold 4 { fis8 }
    fis8 \glissando{\hideFretNumber \grace e8 } r8 r4 \break

    % 11-18
    \repeat volta 2 {
        \repeat unfold 16 { b'8\3 }
        \repeat unfold 16 { fis8\4 }  
        \repeat unfold 16 { gis8 }  
        \repeat unfold 8 { e8 } 
        \repeat unfold 6 { fis8 }
        fis8 \glissando{\hideFretNumber \grace e8 } r8
        \break
    }

    \repeat unfold 3 { e8 } \repeat unfold 6 { e16 } e4
    \repeat unfold 3 { fis8 } \repeat unfold 6 { fis16 } fis4
    \repeat unfold 3 { gis8 } \repeat unfold 4 { gis16 } cis16\glissando dis16\3 dis4\3
    \repeat unfold 3 { gis,8 } \repeat unfold 6 { gis16 } gis8 fis8 \break

    \repeat unfold 3 { e8 } \repeat unfold 6 { e16 } e4
    \repeat unfold 3 { fis8 } \repeat unfold 6 { fis16 } fis4
    \repeat unfold 3 { gis8 } \repeat unfold 4 { gis16 } cis16\glissando dis16\3 dis4\3
    gis8\3 ais8\3 ais4\3~ ais2 \break

    \repeat volta 2 {
      \repeat unfold 8 { e,8 } 
      \repeat unfold 8 { fis8 } 
      b4\3 b4\3 ais4\3 ais4\3 
      gis4\4 gis4\4 \repeat unfold 4 { fis8 }

      \repeat unfold 8 { e8 } 
      \repeat unfold 8 { fis8 } 
      fis16\glissando gis16 gis16 gis16 gis8 fis16\glissando gis8 gis16 fis16\glissando gis16
      gis16 gis16 b16 b16
      cis16\glissando dis16\3 \repeat unfold 4 { dis16\3 } dis16\3\glissando gis8\3 
      \repeat unfold 5 { gis16\3 } gis8\3 \glissando{\hideFretNumber \grace f8\3 }
      \break
    }

    % \repeat unfold 8 { e,8 } 
    % \repeat unfold 8 { fis8 } 
    % b4\3 b4\3 ais4\3 ais4\3 
    % gis4\4 gis4\4 \repeat unfold 4 { fis8 }

    % \repeat unfold 8 { e8 } 
    % \repeat unfold 8 { fis8 } 
    % fis16\glissando gis16 gis16 gis16 gis8 fis16\glissando gis8 gis16 fis16\glissando gis16
    % gis16 gis16 b16 b16
    % cis16\glissando dis16\3 \repeat unfold 4 { dis16\3 } dis16\3\glissando gis8\3 
    % \repeat unfold 5 { gis16\3 } gis8\3 \glissando{\hideFretNumber \grace f8\3 }

    \repeat unfold 8 { e,8 } 
    \repeat unfold 8 { fis8 } 
    b4\3 b4\3 ais8\3 ais8\3 r8 gis8\4~
    gis4 gis4 \repeat unfold 4 { fis8 }

    \repeat unfold 8 { e8 } 
    \repeat unfold 8 { fis8 } 
    fis16\glissando gis16 gis16 gis16 gis8 fis16\glissando gis8 gis16 fis16\glissando gis16
    gis16 gis16 b16 b16
    cis16\glissando dis16\3 \repeat unfold 4 { dis16\3 } dis16\3\glissando gis8\3 
    \repeat unfold 5 { gis16\3 } gis8\3 \glissando{\hideFretNumber \grace f8\3 }
    \break

    e,8 r16 e16 e8 e16 e16 r16 e8 r16 r4 
    fis8 r16 fis16 fis8 fis16 fis16 r16 fis8 fis'16~ fis4 \glissando{\hideFretNumber \grace e8\3 }
    b4 b4 ais8 ais8 r8 gis8~
    gis8 \repeat unfold 7 { gis8 }  
    \break

    \repeat unfold 8 { e8 } 
    \repeat unfold 5 { fis8 } e16 e16 e16 fis16 e16 fis16 
    \repeat unfold 5 { e'8 } dis8 e8 f8 
    fis8 fis8 e8 fis8 fis8 \glissando{\hideFretNumber \grace e8 } r8 r4
    \break

    \repeat unfold 8 { e,8 } 
    \repeat unfold 8 { fis8 }
    b4\3 b4\3 ais4\3 ais4\3
    gis4 gis4 \repeat unfold 4 { fis8 }

    \repeat unfold 8 { e8 } 
    \repeat unfold 8 { fis8 }
    fis16\glissando gis16 gis16 gis16 gis8 fis16\glissando gis8 gis16 fis16\glissando gis16
    gis16 gis16 b16 b16
    cis16\glissando dis16\3 \repeat unfold 4 { dis16\3 } dis16\3\glissando gis8\3 
    \repeat unfold 5 { gis16\3 } gis8\3 \glissando{\hideFretNumber \grace f8\3 }
    \break

    \repeat unfold 8 { e,8 } 
    \repeat unfold 8 { fis8 }
    \break

    r1
    gis4 gis4 fis8 fis8 fis8 fis8
    \repeat unfold 8 { e8 } 
    \repeat unfold 8 { fis8 }
    b1  
    \break

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