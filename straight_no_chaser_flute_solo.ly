\header {
  title = "Straight, No Chaser"
  composer = "Thelonius Monk"
  instrument = "flute solo"
}


\paper {
  #(set-paper-size "a4")
%  paper-height = 11\in
%  paper-width = 8.5\in
  indent = 0\mm
  between-system-space = 2.5\cm
  between-system-padding = #0
  %%set to ##t if your score is less than one page:
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  markup-system-spacing = #'((basic-distance . 23)
                             (minimum-distance . 8)
                             (padding . 1))
}

timeline = {
  \repeat unfold 9 { s1*4 \break } 
  \pageBreak          
  \repeat unfold 9 { s1*4 \break } 
}

notas = \relative c'' { 
  \key f \major
   r8 d r4 c-. a-.
   f2 f4. f8
   R1
   R1
   R1
   d'4 f f8 g r f~
   f4. d8 c4 c 
   r2 d8 f r f~
   f4 d bes r 
   g8 a bes c d f e g
   f c a4 r2 
   R1
   R1 
   r2 a8 bes g a
   bes c d f c4~ c8 d
   \tuplet 3/2 { ees4 f g8 aes } g2~
   g4 f aes8 g r f~
   f2 aes,8 g aes g 
   aes4 g8 f~ f2
   R1
   r8 a g4 d'2
   g,8 \once \override NoteHead.style = #'cross a d4 c a8 f
   R1
   r2 r8 f \tuplet 3/2 { a c d }
   f1~ 
   f2 d8 f r f~ f4 d aes r 
   R1
   r4 f aes c
   d f8 f8~ f4.   \once \override NoteHead.style = #'cross d8
   f4 d aes r
   R1
   R1
   r2 a8 bes ges e 
   f g a bes g a bes c
   d f e f \tuplet 3/2 { r4 a g }
   
   % % %
   
   f4 r r2
   r8 aes r aes~ aes4 aes8 g
   f4 d r2 
   R1
   r4 d' c a 
   f c ces8 bes aes f~
   f4. aes8 bes bes r4
   r2 r8 a bes a
   g4 d' \once \override NoteHead.style = #'cross g, d'
   g,8 \once \override NoteHead.style = #'cross a d \once \override NoteHead.style = #'cross  g, c bes a g
   f4 f4 r2 
   R1
   f4 f8 g a bes aes bes
   aes ces d ces c \once \override NoteHead.style = #'cross d f g
   aes4 aes4 aes4 g 
   aes g8 f~ f4 r8 aes
   g f~ f4 r8 aes, g f8
   f2 aes8 g aes g 
   aes4 g8 bes~ bes4 r
   r2 r8 a bes a
   g4 d'4 d2
   g,8 a bes c d f e g
   f f~ f2 r4
   r2 r4 f
   d'2.~ d8 c
   r f,~ f4 r r8 f
   a4 bes8 b c bes a g
   f e ees f d c r f~
   f4 aes8 g~ g4 r
   r2 aes8 g aes g 
   f4 ees c r
   r2 r8 f f f
   f \once \override NoteHead.style = #'cross d f4 d r
   aes8 \once \override NoteHead.style = #'cross  f aes f f4. \once \override NoteHead.style = #'cross c8
   f a r4 r2 
   R1 \bar "|."
}

acordes = \chordmode { 
  f1:7 bes:7 f:7 s
  bes:7 b:dim f:7 d:7
  g:m7 c:7 f:7 s
  f:7 bes:7 f:7 s
  bes:7 b:dim f:7 d:7
  g:m7 c:7 f:7 s
  f:7 bes:7 f:7 s
  bes:7 b:dim f:7 d:7
  g:m7 c:7 f:7 s
  f:7 bes:7 f:7 s
  bes:7 b:dim f:7 d:7
  g:m7 c:7 f:7 s
  f:7 bes:7 f:7 s
  bes:7 b:dim f:7 d:7
  g:m7 c:7 f:7 s
  f:7 bes:7 f:7 s
  bes:7 b:dim f:7 d:7
  g:m7 c:7 f:7 s 
}

\score {
  <<
    \new ChordNames \acordes
    \new Voice = soloist << \notas \timeline >>
  >>


  \layout {
    \override Score.Clef #'break-visibility = #'#(#f #f #f)  % make only the first clef visible
    \override Score.KeySignature #'break-visibility = #'#(#f #f #f)  % make only the first time signature visible
    \override Score.SystemStartBar #'collapse-height = #1  % allow single-staff system bars
  }
  \midi {}
}