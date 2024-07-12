\version "2.24.0"
\include ".\parts\parts.ly"


\score {
	<<
	\new StaffGroup << 
		\new Staff = "Violin I" {
			\clef "treble"
			\key g\minor
			\time 4/4
			R1*8
			R1*4
			R1*8
			\B-Melody
		}
		\new Staff = "Violin II" {
			\clef "treble"
			\key g\minor
			\time 4/4
			R1*8
			R1*4
			R1*8
			\B-Alto
		}
		\new Staff = "Viola" {
			\clef "alto"
			\key g\minor
			\time 4/4
			R1*8
			R1*4
			R1*8
			\B-Tenor
		}
		\new Staff = "Cello" {
			\clef "bass"
			\key g\minor
			\time 4/4
			R1*8
			R1*4
			R1*8
			%\bar "|"^\markup "pizz."\p \AA-Bass
			\B-Bass
		}
		\new Staff = "Contrabass" {
			\clef "bass"
			\key g\minor
			\time 4/4
			R1*8
			R1*4
			R1*8
			%\bar "|"^\markup "pizz."\p \AA-Bass
			R1*8
		}
	>>
	\new PianoStaff \with { instrumentName = "Organ" } <<
			\new Staff = "Organ RH" {
				\clef "treble"
				\key g\minor
				\time 4/4
				\mp
				\partCombine \AA-Melody \AA-Alto \bar "||"
				\partCombine \AB-Melody \AB-Alto \bar "||"
				\partCombine \AA-Melody \AA-Alto \bar "||"
			}
			\new Staff = "Organ LH" {
				\clef "bass"
				\key g\minor
				\time 4/4
				
				\partCombine \AA-Tenor \AA-Bass \bar "||"
				\partCombine \AB-Tenor \AB-Bass \bar "||"
				\partCombine \AA-Tenor \AA-Bass \bar "||"
			}
		>>
	>>
  \layout { }
  \midi { }
}
