\version "2.24.0"

\header {
  title = "Nimrod"
  subtitle = "(from The Enigma Variations)"
  instrument = "Organ"
  composer = "Edward Elgar"
  arranger = "Jim Paterson / Axel Stenberg"
}

\paper {
  #(set-paper-size "a4")
  #(define fonts
    (set-global-fonts
     #:music "beethoven"
     #:brace "beethoven"
     #:factor (/ staff-height pt 20)
   ))
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    %\override Stem #'neutral-direction = #'()
  }
}

global = {
  \key es \major
  \numericTimeSignature
  \time 3/4
  \tempo "Adagio"
}

right = \relative c'' {
  
  << \global
  {
   \voiceOne
   g8\pp es as4 
   f bes f4. as8 g8 bes <es g,>4 f, <d' f,> es, \< f8 as g bes <g' bes,>4 a,\p \break 
   <f' a,> g, \> a8 c es c a4. bes8 bes g f4. as8\pp g8 es as4 f bes f4. as8 \break 
   g8 bes <es g,>4 f, <d' f,>\< es, f8 as g bes <g' bes,>4 as, <f' as,> g, as8 c d f <c' f,>4\mf d, \break
   \stemNeutral <bes' es,>\>  c, d8 f as c, bes4 c8 es g bes, as4 bes8 d f as, g4. f8 \break
   
   bes2^\pp~8 c~2 d4 bes2~8 c f2 \stemUp bes,4 4 4 c \break
   \stemNeutral <es as, es>4.\mp <d as f>8 <c as f>4 <bes as f>\< <c as f>4. <d as f>8 <c' f, c>4.\mf\< <bes f bes,>8 <as d, as>4 \stemUp g8\f es as4 f bes f f8 as\break 
   g bes \stemNeutral <es g,>4 <f,es> <d' f,> <es,d> f,8 as g bes <g' bes,>4 as, <f' as,> g, \stemUp as8 c d\< f \stemNeutral<c' f, c>4 <d, c> \break
   <bes' es, bes> <c, bes> d8 f <as c,> c, bes4 d8 f <as c,> c, bes4 d8 f \tuplet 3/2{as8(\ff\> es8. ces16)} <bes bes,>4. <bes bes,>8\f \break 
   bes2.\< \stemUp g'8\ff\> es as4 f bes\pp f4. as8 <g es bes g>2.
   }
   \new Voice {
   \voiceTwo
     bes,,4 <c es>2 <bes es> d4 s2.*3 s2 es4~2 4~2 d4 bes <c es>2 <es bes> d4 s2.*3 s2 es4 as4 c2 s2.*4
     
     s2.*4 g2 es4 
     s2.*3 bes'4 <es as,>2 <es bes> <d as>4
     <es bes> s2 s2 d,4 es s1 es4 <as f> s2
     s2.*5 <bes g>4 <es as,>2 <es bes> <d as>4
  }>>
  % Music follows here.
  
}

left = \relative c' {
  << \global
  {
   \voiceOne
     s2.*2 es2. d es4 g2 f s4 s2.*4 es2. d es4 g2 f s4
     s2.*5

     g,4 g'^\p <as f>8 <g es> <f d> <as, f> <d bes>4 c8 bes r bes~<g' bes,>4 \stemNeutral <f as,>8 <es g,>  \clef bass <d f,> <as c,> <c es,>4 <bes d,>8 <as c,> <g bes,>2 as8 g 
     f c es2 r4 bes' c8 bes as es d4 f r8 \stemUp es8~4 as \stemNeutral es2 f4 <bes es,> g a f g as8 f g4 <bes g'> <c g'> <as f'> <bes f'> c8 as bes as as4 f <g es> <ges es> \clef treble as' as <as f>2 as4 <as f>2 as4 f es <d bes> <as' es c> <f d as> \clef bass \stemUp r8 es,8~4 as g bes2 es,2.
  }
   \new Voice {
   \voiceTwo
   \stemNeutral bes4 c2 g4 bes4. f'8es4 g a f g as8 f g4 bes c a b c8 bes a g f4. g8~g bes a4 as8 f bes,4 c2 g4 bes4. f'8 es4 g a f g as8 f g4 bes c as bes <c as> <bes f> <as f>2 \clef treble <es' bes'> <as bes,>4 as <as f> g g <g es> f f d c 
   
   s2. s2 \stemDown as4 g4~4 s4 s2.*5 bes,4 c2 s2.*11 bes4 c2 es f4
    
  }>>
  
   
   
}


pedal = \relative c {
  \global
  % Music follows here.
  es,4 as2 es f4 bes c2 bes bes4 es es2 d c4~2 c4~2 bes4
  es,4 as2 es f4 bes c2 bes bes4 es es2 d c4 bes as2 <g g'>4 <ges ges'> <f f'> <es es'> <d d'> <es es'> <d d'> <c c'> <d d'> <c c'> bes'2

  R2.*6 bes2 c8 bes as es d4 bes' es, as2 g4 bes2 
  bes4 c2 bes2. es2. d2 c4 bes as2 
  g4 ges <bes f'> <c es,> <d d,> <bes f> <c es,> <d d,> <bes f'> <es es,> <d d,> <c c,> 
  <bes bes,>2. es,4 as2 g4 bes2~<bes es,>2.
}

\score {
  <<
    \new PianoStaff  <<
      \new Staff = "right" { \clef treble \right \fine}
      \new Staff = "left" { \clef bass \left \fine}
    >>
    \new Staff = "pedal" { \clef bass \pedal \fine}
  >>
  \layout { }
}
