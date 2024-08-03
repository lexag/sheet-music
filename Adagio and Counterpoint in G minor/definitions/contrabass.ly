contrabass = \new Voice \relative c' {
  \clef bass
  R1*20
  
  g,4^"pizz." g' f f, es es' d d,
  c' c cis cis d d d d
  g, g' f f, es es' d d,
  c' bes a g d c' bes a

  g bes d g c, d es c
  f, a c f fis g a d,
  g, bes d g es d c bes
  a2 d g,1

  g'2 r c,\f r
  R1*2
  es2\mp r d r c bes d d,
  g4 g' f f, es es' d d,
  c' c cis cis d d d d
  g, g' f f, es es' d d,
  c' bes a g d8 c' bes a g2

  %counterpoint
  R1*53

  % return to adagio
  g4\ff^"arco" g' f f, es es' d d,
  c' c cis cis d d d, d
  g g' f f, es es' d d,
  c' c bes bes a\> a d d,\p
  
  R1*4

  g'2^"pizz."\mp f es d c cis d d,
  g' f es d c bes a4 a' d,2

  r2 g,2^"arco"~1
}
