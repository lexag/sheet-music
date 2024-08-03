\version "2.24.3"

\include "../definitions/global.ly"
\include "../definitions/organ.ly"

\paper {  
  #(set-paper-size "a4" 'landscape)
  max-systems-per-page = 3
}

\header {
  instrument = "Organ"
}
\score { <<
  \new PianoStaff \with { 
    } <<
    \new Staff \with {
        printPartCombineTexts = ##f
    }
    << 
      \clef "treble" 
      \global 
      \partCombine \organsoprano \organalto 
    >>
    \new Staff \with {
      printPartCombineTexts = ##f
    }
    <<
      \clef "bass" 
      \global 
      \organtenor 
    >>
  >>
  \new Staff \with {
    printPartCombineTexts = ##f
  }
  << 
    \clef "bass"
    \global 
    \organbass
  >>
>>
}
