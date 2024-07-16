\version "2.24.3"


\header {
    title = "Adagio and counterpoint in G minor"
    subtitle = "For Organ and Strings"

    % The following fields are evenly spread on one line;
    % the field "instrument" also appears on following pages
    composer = "Axel Stenberg"

    % The following fields are centered at the bottom
    copyright = "Copyright 2024 Axel Stenberg"
  }


global= {
  \time 4/4
  \key g \minor
  s1*20
  \section \break
  s1*31
  s2 s2\fermata
  \section \break
  s1*53
  \section \break
  s1*22
  \fine
}


\include "violinOne.ly"
\include "violinTwo.ly"
\include "viola.ly"
\include "cello.ly"
\include "contrabass.ly"
\include "organ.ly"


#(set-default-paper-size "a3")



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
        instrumentName = "Organ"
        shortInstrumentName = "Org."
        midiInstrument = "church organ"
        %midiMaximumVolume = #0.5
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
        \partCombine \organtenor \organbass 
      >>
    >>
  >>
  \layout {
    \context {
      \Staff
      \RemoveEmptyStaves
    }
  } 
  \midi {\tempo 4 = 60 }
}
