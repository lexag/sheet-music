opera_night_piano_rh = \relative c' {
	\clef "treble"
	\key as\major
	\time 12/8
	
	\ottava #1
	% Flute and Clarinet
	<c'' es>8( \repeat unfold 5 { <des f> <c es> } )<bes des>
	
	% Vln 1 enters
	<<
	{
		\stemUp
		<c es>( \repeat unfold 5 { <des f> <c es> } )<bes des>
	}
	\new Voice { 
		\stemDown
		\repeat unfold 5 {as8 bes} as g
	}
	>>
	\stemNeutral

	( \repeat unfold 5 { <f as c> <g bes des> } <f as c> <g bes des>) 
	\time 9/8
	<e g c>2. r4.

	% msr 5
	\time 12/8
	\ottava #0
	<c es>8( \repeat unfold 5 { <des f> <c es> } )<bes des>
	\repeat unfold 17 { <c es> <des f> } <c es> <des f> 
	
	% c''8(des c des c des c des c des c bes)
	% c(des c des c des c des c des c bes)
	% as(bes as bes as bes as bes as bes as bes)

	% \time 9/8

	% g2. r4.
}


opera_night_piano_lh = \relative c {
	\clef "bass"
	\key as \major
	\time 12/8
	R1.*2

	r4. \tuplet 2/3 {des8-. as'-.} \tuplet 2/3 {des-. as-.} \tuplet 2/3 {des,-. as'-.}
	\time 9/8
	\tuplet 2/3 {c8,-. g'-.} \tuplet 2/3 {c-. g-.} \tuplet 2/3 {c,-. g'-.}
	
	% msr 5
	<<
	{
		\stemDown
		as4. es as <des ges>\laissezVibrer
		\repeat unfold 2 {as4. es}
		<c' es>2.\laissezVibrer
		\repeat unfold 9 {as4. es}
	}
	\new Voice {
		\stemUp
		s1. r2. es4-. as8( bes4.)
		r2. es,4-. as8( bes4.)
		es,4-. as8( bes4) es,8( as4) des8( c4->)
	}
	>>

}