\version "2.24.3"

\include "../definitions/global.ly"
\include "../definitions/violinOne.ly"
\include "../definitions/violinTwo.ly"
\include "../definitions/viola.ly"
\include "../definitions/cello.ly"
\include "../definitions/contrabass.ly"
\include "../definitions/organ.ly"

\paper {  
  #(set-paper-size "a4")
%  min-systems-per-page = 10
   systems-per-page = 12
}


\bookpart {
  \header {
    instrument = "Violin I"
  }
  \score { <<
    \new Staff \with {
      printPartCombineTexts = ##f
    }
    << 
      \clef "treble"
      \global 
      \compressMMRests {\violinOne}
    >>
  >>
  }
}
\bookpart {
  \header {
    instrument = "Violin II"
  }
  \score { <<
    \new Staff \with {
      printPartCombineTexts = ##f
    }
    << 
      \clef "treble"
      \global 
      \compressMMRests {\violinTwo}
    >>
  >>
  }
}
\bookpart {
  \header {
    instrument = "Viola"
  }
  \score { <<
    \new Staff \with {
      printPartCombineTexts = ##f
    }
    << 
      \clef "alto"
      \global 
      \compressMMRests {\viola}
    >>
  >>
  }
}
\bookpart {
  \header {
    instrument = "Cello"
  }
  \score { <<
    \new Staff \with {
      printPartCombineTexts = ##f
    }
    << 
      \clef "bass"
      \global 
      \compressMMRests {\cello}
    >>
  >>
  }
}
\bookpart {
  \header {
    instrument = "Contrabass"
  }
  \score { <<
    \new Staff \with {
      printPartCombineTexts = ##f
    }
    << 
      \clef "bass"
      \global 
      \compressMMRests {\contrabass}
    >>
  >>
  }
}
