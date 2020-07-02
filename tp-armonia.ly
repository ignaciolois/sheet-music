\version "2.19.83"

\header {
  title = "Trabajo práctico nº 2"
  subtitle = "Armonía II - Cátedra Montalto"
  composer = "Ignacio Lois"
  tagline = ##f
}


\paper {
  #(set-paper-size "a4")
  #(define fonts
     (set-global-fonts
      #:roman "Bookman Old Style"
      #:factor (/ staff-height pt 20)
      ))
  left-margin = 0.5\in
  right-margin = 0.5\in
  top-margin = 0.75\in
  bottom-margin = 0.5\in
  markup-system-spacing = #'((padding . 5))
}


global = {
  \time 2/2
  \repeat unfold 4 { s1*4 \break }
  \bar "||"
  \repeat unfold 3 { s1*4 \break }
  \bar "||"
  \repeat unfold 4 { s1*4 \break }
  \bar "|."
}

RH = \relative c' {
  % a 
  <c e a>2^\markup { \rounded-box \bold A }
    <d e gis>2
  <a e' a> <a e' g!> 
  <a d f> <d fis a>
  <d g d'> <f b d>
  <e a c> <e gis b>
  <e a c> <e g bes>
  <d f a> <g d' f>
  <g c e> <b d e>
  <a c e> <g a e'>
  <f a d> <gis b d>
  <f a c> <a c e>
  <g c e> <b d f>
  <g c e> <g d' f>
  <a c e> <f a c>
  <c fis c'> <d g b>
  <c g' c>1
  
  
  <e g c>2^\markup { \rounded-box \bold B }
    <f g b> 
  <g bes c> <ees a c>
  <d f bes> <ees f a>
  <f aes bes> <ees g bes>
  <des g bes> <b? d aes'>
  <c ees a?> <e bes' des>
  <ees aes c> <ees g des'>
  <ges aes ees'>2 <ges c ees> 
  <f aes des> <aes des f>
  <g c e> <f b d>
  <e g c> <fis a b>
  <d gis b>1
  
  <c e a>2^\markup { \rounded-box \bold A' }
    <d e gis>2
  <a e' a> <a e' g!> 
  <a d f> <d fis a>
  <d g d'> <f b d>
  <e a c> <e gis b>
  <e a c> <e g bes>
  <d f a> <g d' f>
  <g c e> <b d e>
  <a c e> <g a e'>
  <f a d> <gis b d>
  <f a c> <a c e>
  <g c e> <e b' d>
  <e a c> <e gis d'>
  <e a e'> <a d f>
  <a dis a'> <b e gis>
  <c e a>1
}

LH = \relative c {
  % a
  \once\override HorizontalBracketText.text = \markup { \italic \tiny "Motivo generador" }
  a2\startGroup b
  c cis
  d\stopGroup c! 
  b gis
  a b
  c cis
  d b
  c gis
  a cis
  d e,
  f fis
  g g
  c b
  c f,
  aes g
  c,1
  
  % b 
  
  c'2 d
  e f
  bes, c
  d ees
  
  \once\override HorizontalBracketText.text = \markup { \italic \tiny "cadena de sensibles" }
  e?\startGroup f
  fis g\stopGroup
  aes bes
  c aes
  des, f
  g g
  c, dis
  e1 

  % a'

  a,2 b
  c cis
  d c! 
  b gis
  a b
  c cis
  d b
  c gis
  a cis
  d e,
  f fis
  g gis
  a b 
  c d 
  f e
  a,1
}

Roma = \lyricmode {
  I 2 \markup { V \overlay { \super 4 \sub 3 } } 2
  \markup { I \sub 6 } 2 \markup { I \overlay { \super 6 \sub 5 } \tiny DS }
  IV2 \markup { IV \sub 2 \tiny DS }
  \markup { VII \sub 6 \tiny nat. } \markup { VII↑ \sub \overlay { 7 "\\" } }
  
  I \markup { V \overlay { \super 6 \sub 4 } }
  \markup { I \sub 6 } \markup { I↑ \tiny SS }
  IV \markup { VII \overlay { \super 6 \sub 5 } \tiny "nat. DS" }
  III \markup { V \overlay { \super 6 \sub 5 } }
  
  I \markup { I \overlay { \super 6 \sub 5 } \tiny DS }
  IV V
  VI \markup { IV↑ \tiny SS [Do] } 
  \markup { I \overlay { \super 6 \sub 4 } } \markup { V \sub 7 }
  
  I \markup { V \overlay { \super 6 \sub 5 } }
  I IV
  \markup { IV \sub 6+ } V
  I1
    
  % b 
  
  I2 \markup { V \overlay { \super 4 \sub 3 } }
  \markup { I \overlay { \super 6 \sub 5 } \tiny DS } \markup { IV \sub 7 \tiny "DS = V (Si" \tiny \musicglyph #"accidentals.flat" \tiny ")" }
  I \markup { V \overlay { \super 4 \sub 3 } } 
  \markup { I \overlay { \super 6 \sub 5 } \tiny DS } IV
   
  ""1 ""
  \markup { I [La\tiny \musicglyph #"accidentals.flat"] }2  \markup { V \overlay { \super 4 \sub 3 } }
  \markup { I \overlay { \super 6 \sub 5 } \tiny DS } \markup { I \sub 7 \tiny DS }
  IV "N6 [Do]"
  \markup { I \overlay { \super 6 \sub 4 } } V 
  I \markup { VII \overlay { \super 6 \sub 5 } \tiny DS }
  \markup { III \sub 7 \tiny DS = V }1

  % a'

  I 2 \markup { V \overlay { \super 4 \sub 3 } } 2
  \markup { I \sub 6 } 2 \markup { I \overlay { \super 6 \sub 5 } \tiny DS }
  IV2 \markup { IV \sub 2 \tiny DS }
  \markup { VII \sub 6 \tiny nat. } \markup { VII↑ \sub \overlay { 7 "\\" } }
  
  I \markup { V \overlay { \super 6 \sub 4 } }
  \markup { I \sub 6 } \markup { I↑ \tiny SS }
  IV \markup { VII \overlay { \super 6 \sub 5 } \tiny "nat. DS" }
  III \markup { V \overlay { \super 6 \sub 5 } }
  
  I \markup { I \overlay { \super 6 \sub 5 } \tiny DS }
  IV V
  VI \markup { VI↑ \tiny SS } 
  \markup { III \overlay { \super 6 \sub 4 } } \markup { V \overlay { \super 6 \sub 5 } }
  
  I \markup { V \overlay { \super 4 \sub 3 } }
  \markup { I \sub 6 } IV
  \markup { IV \sub 6+ } V
  I
}

\score {
  \new PianoStaff {
    <<
      \new Staff {
        \set Score.barNumberVisibility = #all-bar-numbers-visible
        \override Score.BarNumber.break-visibility = #end-of-line-invisible
        <<
          \global
          \RH
        >>
      }
      \new Staff {
        \clef "bass"
        <<
          \global
          \LH
        >>
      }
      \new Lyrics { \Roma }
    >>
  }
  \layout {
    \context {
      \Voice
      \consists "Horizontal_bracket_engraver"
    }
  }
  \midi { \tempo 4 = 130 }
}