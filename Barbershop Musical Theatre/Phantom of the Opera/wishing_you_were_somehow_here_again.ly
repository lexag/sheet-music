\paper {
  top-system-spacing.basic-distance = #10
  score-system-spacing.basic-distance = #20
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #10
}

global = {
  \key c \major
  \time 4/4
}

tenorMusic = \relative c' {
  r2 d r es r es r fis( a1)
	bes4 a d,4. d8 g4. f8 f bes,4. es4 d a bes a d2.
	bes'4 a d,4. d8 g4. f8 f bes4. g4 g g a a2 fis2

	\key g\major
	d8 d d d d4 g d8 c b2 r4
	c8 c c c c4 e fis,2. r4
	\tuplet 3/2 {e'4 d c} d2
	\tuplet 3/2 {a4 d d} d2 
	\tuplet 3/2 {a4 d fis} g4. b8 g2( fis) 
	d8 d d d d4 g d8 c b2 r4
	c8 c c c c4 e fis2. r4
	\tuplet 3/2 {e4 d c} d4. 8
	\tuplet 3/2 {a4 d d} e2
	r8 fis fis fis g4. b8 a2( fis)
}
tenorWords = \lyricmode {
	Do do do do
	_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ then my world was shat -- tered.
}

leadMusic = \relative c' {
  r4 g8 a bes2 r4 g8 a bes2 r4 a8 bes c2 r4 a8 bes c2( d c)
	g'4 d bes4. bes8 es4. bes8 bes bes4. c4 g g g fis a2.
	g'4 c, bes4. bes8 as4. as8 as as4. r4 es'8 d a4. bes8 a4 d2.

	\key g\major
  b8 b b b b4 d b8 a g2 r4
	a8 a a a a4 c4 d,2. r4
	\tuplet 3/2 {e4 fis g} a2
	\tuplet 3/2 {d4 b a} g2 
	\tuplet 3/2 {d'4 b d} e4. b8 c1 

	b8 b b b b4 d b8 a g2 r4
	a8 a a a a4 c c2. r4
	\tuplet 3/2 {e,4 fis g} a4. a8 
	\tuplet 3/2 {d4 b a} g2
	r8 d' b d e4. b8 d2( c)
}
leadWords = \lyricmode {
	Do do do, do do do, do do do, do do do __ __
	You were once my one com -- pan -- ion, you were all that mat -- tered.
	You were once a friend and fa -- ther, then my world was shat -- tered.
}

bariMusic = \relative c {
  r8 d4.~2 r8 es4.~2 r8 es4.~2 r8 d4.(~2 g fis)
	d'4 d d4. d8 bes4. g8 g g4. g4 es es es fis fis g a 
	d a g4. g8 c4 f, f4. c'8 bes4 bes es es d2 c

	\key g\major
	g8 g g g g4 b g8 fis d2 r4
	e8 e e e e4 a a,2. r4
	\tuplet 3/2 {g'4 g e} fis2
	\tuplet 3/2 {d4 d d} e2
	\tuplet 3/2 {fis4 fis fis} b4. d8 a1
	
}
bariWords = \lyricmode {
  Do_ do_ do_ do _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
}

bassMusic = \relative c {
  g2. g8 a g2. g8 a g2. a8 bes a2~2 d1
	bes'4 a g4. g8 es4. es8 es es4. c4 c c c d d e fis
	g4 d g,4. d'8 f4 c f,4. f'8 es4 d c a d2 a'
}
bassWords = \lyricmode {
  Do do do, do do do, do do do, do 
	_ _ _ _ _ _ _ _ _ _ _ _ _ all that mat -- tered, _ _ _ _ friend and fa -- ther, then my world was shat -- tered.
}

\score {
  \new ChoirStaff <<
    \new Lyrics = "tenor" \with {
      % this is needed for lyrics above a staff
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Staff = "TL" <<
			\clef "treble_8"
			\key bes\major
      \new Voice = "tenor" {
        \voiceOne
        << \global \tenorMusic >>
      }
      \new Voice = "lead" {
        \voiceTwo
        << \global \leadMusic >>
      }
    >>
    \new Lyrics = "lead"
    \new Lyrics = "baritone" \with {
      % this is needed for lyrics above a staff
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Staff = "BB" <<
      \clef bass
			\key bes\major
      \new Voice = "baritone" {
        \voiceOne
        << \global \bariMusic >>
      }
      \new Voice = "bass" {
        \voiceTwo << \global \bassMusic >>
      }
    >>
    % \new Lyrics = "basses"
    \context Lyrics = "tenor" \lyricsto "tenor" \tenorWords
    \context Lyrics = "lead" \lyricsto "lead" \leadWords
    \context Lyrics = "baritone" \lyricsto "baritone" \bariWords
    \context Lyrics = "basses" \lyricsto "bass" \bassWords
  >>
}
