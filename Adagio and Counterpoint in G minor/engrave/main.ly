\version "2.24.3"

\include "../definitions/global.ly"
\include "../definitions/violinOne.ly"
\include "../definitions/violinTwo.ly"
\include "../definitions/viola.ly"
\include "../definitions/cello.ly"
\include "../definitions/contrabass.ly"
\include "../definitions/organ.ly"


#(set-default-paper-size "a3")


\bookpart {
  \score {
    <<
      \new StaffGroup <<
        \new Staff \with { 
          instrumentName = "Violin 1"
          shortInstrumentName = "Vln. 1"
          midiInstrument = "violin"
        }
        << \global \violinOne >>

        \new Staff \with { 
          instrumentName = "Violin 2"
          shortInstrumentName = "Vln. 2"
          midiInstrument = "violin"
        }
        << \global \violinTwo >>

        \new Staff \with { 
          instrumentName = "Viola"
          shortInstrumentName = "Vla."
          midiInstrument = "viola"
        }
        << \global \viola >>

        \new Staff \with { 
          instrumentName = "Cello"
          shortInstrumentName = "Vlc."
          midiInstrument = "cello"
        }
        << \global \cello >>
        
        \new Staff \with { 
          instrumentName = "Contrabass"
          shortInstrumentName = "Cb."
          midiInstrument = "contrabass"
        }
        << \global \contrabass >>


      >>
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
      \new Staff 
      << 
        \clef "bass"
        \global
        \organbass
      >>
    >>
    \layout {
      \context {
        \Staff
        \RemoveEmptyStaves
      }
    } 
  }
}




