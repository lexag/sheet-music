cello = \new Voice \relative c' {
  \clef bass
  R1*20
  
  g,4 g' f f, es es' d d,
  c' c cis cis d d d d
  g, g' f f, es es' d d,
  c' bes a g d c' bes a

  g bes d g c, d es c
  f, a c f fis g a d,
  g, bes d g es d c bes
  a2 d g,1

  g'2\< f4 g f2\f es
  a\p c4 es, g2 f
  r4 g2.\mp r4 g2 d4 c2( bes) a1

  g4 g' f f, es es' d d,
  c' c cis cis d d d d
  g, g' f f, es es' d d,
  c' bes a g d8 c' bes a g2

  %counterpoint
  R1*34
  a4 g f e
  \repeat unfold 16 {d'8\staccato}
  \repeat unfold 16 {c\staccato}
  \repeat unfold 8 {b\staccato}
  \repeat unfold 8 {c8\staccato}
  \repeat unfold 4 {g8\staccato}
  \repeat unfold 4 {f8\staccato}
  \repeat unfold 4 {es8\staccato}
  \repeat unfold 4 {d8\staccato}
  \repeat unfold 32 {c8\staccato}
  c''4 as8 f f4 des8 bes bes4 ges8 es ces'2~2 
  cis4 ais8 fis dis'2 e es8 d c bes a2 d,1

  % return to adagio
  d'1\ff(es)~es2 e c c
  d1(es) a2 g d1\>
   
  d4\p d g g c, c f f 
  bes, bes e2 cis d
 
  d1\mp(es)~es2 e c c
  d1(es) a2 g es d
 
  g1~1

}
