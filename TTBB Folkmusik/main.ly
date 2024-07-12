\version "2.24.0"

#(set-global-staff-size 18)
\paper {
  top-system-spacing.basic-distance = #10
  score-system-spacing.basic-distance = #20
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #10
}

\header {
    % The following fields are centered
    title = "Blandade svenska folkvisor"
    subtitle = "TTBB Manskör"
	subsubtitle = "(Tula hem och tula vall, Limu limu lima, Jag vet en dejlig rosa, Vem kan segla förutan vind, Kristallen den fina)"

    arranger = "Axel Stenberg"

    copyright = "Copyright 2024 Axel Stenberg"
  }

global = {
  \numericTimeSignature
  \key a \minor
  \time 3/4
  \partial 4 s4
  s2.*26
  \time 2/4
  s2
  \time 4/4
  s1
  \bar "||"
  \key e \minor
  s1*11
  s2
  s2
  \fermata
  s1*8
  \bar "||"
  \key a \minor
  s1*14
  \bar "||"
  \key d \minor
  s1*16
  \time 3/4
  \key g \minor
  \bar "||"
  s2.*10
  s2.*6^\markup{\italic rit.}
  \key gis \minor
  \bar "||"
  s2.*32
  \key bes \minor
  \bar "||"
  s2.*6
  \fine
}

\include "t1.ly"
\include "t2.ly"
\include "b1.ly"
\include "b2.ly"

\score {
  <<
    \new ChoirStaff <<
      \new Staff \with {
		instrumentName = "Tenor I"
		shortInstrumentName = "T."
	  }<<
        \clef "treble_8"
        \new Voice = "tenorOnes" <<
          \global
          \tenorOneMusic
        >>
        \new Lyrics \lyricsto "tenorOnes" \tenorOneWords
      >>
      \new Staff \with {
		instrumentName = "Tenor II"
		shortInstrumentName = "T."
	  }<<
        \clef "treble_8"
        \new Voice = "tenorTwos" <<
          \global
          \tenorTwoMusic
        >>
        \new Lyrics \lyricsto "tenorTwos" \tenorTwoWords
      >>
      \new Staff \with {
		instrumentName = "Bas I"
		shortInstrumentName = "B."
	  }<<
        \clef "bass"
        \new Voice = "bassOnes" <<
          \global
          \bassOneMusic
        >>
        \new Lyrics \lyricsto "bassOnes" \bassOneWords
      >>
      \new Staff \with {
		instrumentName = "Bas II"
		shortInstrumentName = "B."
	  }<<
        \clef "bass"
        \new Voice = "bassTwos" <<
          \global
          \bassTwoMusic
        >>
        \new Lyrics \lyricsto "bassTwos" \bassTwoWords
      >>
    >>
    % \new PianoStaff <<
    %   \new Staff \with {
    %   \magnifyStaff #5/7
    % } <<
    %     \clef "treble_8"
	% 	\set Staff.printPartCombineTexts = ##f
    %     \partCombine
    %     << \global \tenorOneMusic >>
    %     << \global \tenorTwoMusic >>
    %   >>
    %   \new Staff \with {
    %   \magnifyStaff #5/7
    % }<<
    %     \clef "bass"
	% 	\set Staff.printPartCombineTexts = ##f
    %     \partCombine
    %     << \global \bassOneMusic >>
    %     << \global \bassTwoMusic >>
    %   >>
    % >>
  >>
  \layout { }
  \midi { }
}