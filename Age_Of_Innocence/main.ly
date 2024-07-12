\version "2.24.0"

\include "./piano.ly"


\score {
	<<
	% \new StaffGroup << 
		% \new Staff = "Violin I" {
		% 	\clef "treble"
		% 	\key g\minor
		% 	\time 4/4
		% 	R1*8
		% 	R1*4
		% 	R1*8
		% 	\B-Melody
		% }
		% \new Staff = "Violin II" {
		% 	\clef "treble"
		% 	\key g\minor
		% 	\time 4/4
		% 	R1*8
		% 	R1*4
		% 	R1*8
		% 	\B-Alto
		% }
		% \new Staff = "Viola" {
		% 	\clef "alto"
		% 	\key g\minor
		% 	\time 4/4
		% 	R1*8
		% 	R1*4
		% 	R1*8
		% 	\B-Tenor
		% }
		% \new Staff = "Cello" {
		% 	\clef "bass"
		% 	\key g\minor
		% 	\time 4/4
		% 	R1*8
		% 	R1*4
		% 	R1*8
		% 	%\bar "|"^\markup "pizz."\p \AA-Bass
		% 	\B-Bass
		% }
		% \new Staff = "Contrabass" {
		% 	\clef "bass"
		% 	\key g\minor
		% 	\time 4/4
		% 	R1*8
		% 	R1*4
		% 	R1*8
		% 	%\bar "|"^\markup "pizz."\p \AA-Bass
		% 	R1*8
		% }
	% >>
	\new PianoStaff \with { instrumentName = "Piano" } <<
			\new Staff = "RH" {
				\opera_night_piano_rh
			}
			\new Staff = "LH" {
				\opera_night_piano_lh
			}
		>>
	>>
  \layout { }
  \midi { }
}