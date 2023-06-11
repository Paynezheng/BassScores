% lilypond 2.18.2
% Create By Payne
\version "2.24.1"

% 很吔的是2.18.2不支持中文渲染 

\header {
  title = "psycho"
  composer = "Composed by muse"
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
  \tempo \markup {
    Swing
    \hspace #0.4
    \rhythm { 8[ 8] } = \rhythm { \tuplet 3/2 { 4 8 } }
  }
  % 1-4
  r1 ^"Drop D Tunning" r r r \break 
  
  % 5-8
  r r \tuplet 3/2 4 {d8\2 d\2 d\2 d\2 d\2 d\2 d\2 d\2 d\2 d\2 d\2 d\2 
    d\2 d\2 d\2 d\2 d\2 d\2 d\2 d\2 d\2}
  % d4\2 \glissando{\hideNotes \grace a4\2 }\unHideNotes | \break
  d4\2  \glissando{\hideFretNumber \grace a4\2 } 
  
  \repeat volta 3 {
    % 9-12
    d,,4\4 ^"Chorus" f8\4 d8\4 g8\4 d8\4 f8\4 d8\4~
    d8 d8     f8   d8   g4\4\^  {\hideFretNumber \grace gis }  g4\4 \^ {\hideFretNumber \grace gis }
    d4\4    f8\4 d8\4 g8\4 d8\4 f8\4 d8\4
    r1 | \break
    
    % 13-16
    d4\4    f8\4 d8\4 g8\4 d8\4 f8\4 d8\4~
    d8 d8     f8   d8   g4\4\^  {\hideFretNumber \grace gis }  g4\4 \^ {\hideFretNumber \grace gis }
    d4\4    f8\4 d8\4 g8\4 d8\4 f8\4 d8\4~
    d8 d8\4 fis8\4 d8\4 g4\4 gis8\4 d8\4 | \break
    
    % 17-20
    a'4\4 bes8\4 a8\4 cis8\4 a8\4 bes8\4 a8\4~
    a8 a8\4 bes8\4 a8\4 cis8\4 a8\4 bes8\4 a8\4
    g4\4 a8\4 g8\4 bes8\4 a8\4 g8\4 f8\4~
    f8 f8\4 c'8\3 e,8\4~ e8 e8\4 cis'8\3 e,8\4 | \break
    
    % 21-24
    d''8\2 d,8\2 cis'4\2 a4\2\^  {\hideFretNumber \grace ais }  a4\2
    g8\2 d8\2 f4\2 e4\2 dis4\2
    d8\2 a8\3 cis4\3 bes4\3 a4\3
    g8\4 d8\4 f4\4 e4\4 dis4\4 | \break
    
    \alternative {
      \volta 1,2 {
        % 25-28
        d'8\3 ^ "Verse" d8\3 d8\3 d8\3 d8\3 r8 r4
        \repeat unfold 3 {d8\3 d8\3 d8\3 d8\3 d8\3 r8 r4} | \break
        
        % 29-32
        f8\3 f8\3 f8\3 f8\3 f8\3 r8 r4
        c8\3 c8\3 c8\3 c8\3 c8\3 r8 r4
        g8\4 g8\4 g8\4 g8\4 g8\4 r8 r4
        g8\4 g8\4 g8\4 g8\4 g8\4 r8 r4 | \break
        
        % 33-36
        d'8\3 d8\3 d8\3 d8\3 d8\3 r8 r4
        \repeat unfold 3 {d8\3 d8\3 d8\3 d8\3 d8\3 r8 r4} | \break
        
        % 37-40
        f8\3 f8\3 f8\3 f8\3 f8\3 r8 r4
        c8\3 c8\3 c8\3 c8\3 c8\3 r8 r4
        g8\4 g8\4 g8\4 g8\4 g8\4 r8 r4
        g8\4 g8\4 g8\4 g8\4 g8\4 r8 r4 | \break
        
        % 41-44
        d'8\3 d8\3 d8\3 d8\3 d8\3 r8 r4
        d8\3 d8\3 d8\3 d8\3 d8\3 r8 r4
        d8\3 d8\3 d8\3 d8\3 d8\3 r8 r4
        d8\3 r8 r2. | \break 
      }
      \volta 3 {
        % 45-48 
        d,8\4 d8\4 e4\4 f4\4 g4\4 
        gis8\4 d8\4 a'4\4 c4\3 cis4\3 
        d8\3 d8\3 e4\3 f4\3 g4\3 
        gis8\3 d8\2  a'4\2 \grace { \hideFretNumber a\2 \glissando } c4\2 cis4\2 | \break
        
        % 49-52
        d8\2 \glissando{\hideFretNumber \grace a8\2 } r8 r2. 
        r1 r r	| \break
        
        % 53-56
        d,,8\4 d8\4 d8\4 d8\4 d8\4 r8 r4
        \repeat unfold 2 { d8\4 d8\4 d8\4 d8\4 d8\4 r8 r4}
        r1 | \break
      }
    }
  }

  % 57-60
  d4\4 ^"Chorus" f8\4 d8\4 g8\4 d8\4 f8\4 d8\4~
  d8 d8     f8   d8   g4\4\^  {\hideFretNumber \grace gis }  g4\4 \^ {\hideFretNumber \grace gis }
  d4\4    f8\4 d8\4 g8\4 d8\4 f8\4 d8\4
  r1 | \break
  
  % 61-64
  d4\4    f8\4 d8\4 g8\4 d8\4 f8\4 d8\4~
  d8 d8     f8   d8   g4\4\^  {\hideFretNumber \grace gis }  g4\4 \^ {\hideFretNumber \grace gis }
  d4\4    f8\4 d8\4 g8\4 d8\4 f8\4 d8\4~
  d8 d8\4 fis8\4 d8\4 g4\4 gis8\4 d8\4 | \break
  
  % 65-68
  a'4\4 bes8\4 a8\4 cis8\4 a8\4 bes8\4 a8\4~
  a8 a8\4 bes8\4 a8\4 cis8\4 a8\4 bes8\4 a8\4
  g4\4 a8\4 g8\4 bes8\4 a8\4 g8\4 f8\4~
  f8 f8\4 c'8\3 e,8\4~ e8 e8\4 cis'8\3 e,8\4 | \break
  
  % 69-72
  r1 ^ "Bridge"
  r2 g4\4\^  {\hideFretNumber \grace gis }  g4\4 \^ {\hideFretNumber \grace gis }
  r1
  r2 g4\4\^  {\hideFretNumber \grace gis }  g4\4 \^ {\hideFretNumber \grace gis } | \break
  
  % 73-76
  r1 r1
  \repeat unfold 7 {\tuplet 3/2 4 {d''8\2 d\2 d\2}}   d4\2 \glissando{\hideFretNumber \grace a4\2 }  | \break
  
  % 77-80
  d,,4\4    f8\4 d8\4 g8\4 d8\4 f8\4 d8\4~
  d8 d8     f8   d8   g4\4\^  {\hideFretNumber \grace gis }  g4\4 \^ {\hideFretNumber \grace gis }
  d4\4    f8\4 d8\4 g8\4 d8\4 f8\4 d8\4~
  d8 d8     f8   d8   bes'4\4 bes4\4 | \break
  
  % 81-84
  d,4\4    f8\4 d8\4 g8\4 d8\4 f8\4 d8\4~
  d8 d8     f8   d8  a'4\4     a4\4 
  d,4\4    f8\4 d8\4 g8\4 d8\4 f8\4 d8\4~
  d8 d8     f8   d8   bes'4\4 bes4\4 | \break
  
  % 85-88
  d,4\4    f8\4 d8\4 g8\4 d8\4 f8\4 d8\4~
  d8 d8     f8   d8  a'4\4     a4\4 
  d,4\4    f8\4 d8\4 g8\4 d8\4 f8\4 d8\4~
  d8 d8     f8   d8   bes'4\4 bes4\4 | \break
  
  % 89-92
  d,4\4    f8\4 d8\4 g8\4 d8\4 f8\4 d8\4~
  d8 d8     f8   d8  c'4\3     c4\3 
  d,4\4    f8\4 d8\4 g8\4 d8\4 f8\4 d8\4~
  d8 d8\4 fis8\4 d8\4 g4\4 gis8\4 d8\4 | \break
  
  % 
  a'4\4 bes8\4 a8\4 cis8\4 a8\4 bes8\4 a8\4~
  a8 a8\4 bes8\4 a8\4 cis8\4 a8\4 bes8\4 a8\4
  g4\4 a8\4 g8\4 bes8\4 g8\4 a8\4  g8\4~
  g8 g8\4 a8\4 g8\4 bes8\4 g8\4 a8\4 g8\4 | \break
  
  % 
  a4\4 bes8\4 a8\4 cis8\4 a8\4 bes8\4 a8\4~
  a8 a8\4 bes8\4 a8\4 cis8\4 a8\4 bes8\4 a8\4
  g4\4 a8\4 g8\4 bes8\4 a8\4  g8\4  f8\4~
  f8 f8\4 d8\4 e8\4~ e4 r4 | \break
  
  %
  d''8\2 d,8\2 cis'4\2 a4\2\^  {\hideFretNumber \grace ais }  a4\2
  g8\2 d8\2 f4\2 e4\2 dis4\2
  d8\2 a8\3 cis4\3 bes4\3 a4\3
  g8\4 d8\4 f4\4 e4\4 dis4\4 | \break
  
  d1\4~ d1~ d1~ d1 
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
    % stringTunings = #bass-tuning
    stringTunings = \stringTuning <d,, a,, d, g,>
  }
  \relative{
    %\tabFullNotation
    \rhythm
  }

>>

}