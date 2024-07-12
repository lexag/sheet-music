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

tenorMusic = \relative {
	
}
tenorWords = \lyricmode {
  hi hi hi hi
}

leadMusic = \relative {
  e'4 f d e
}
leadWords = \lyricmode {
  ha ha ha ha
}

bariMusic = \relative {
  g4 a f g
}
bariWords = \lyricmode {
  hu hu hu hu
}

bassMusic = \relative {
  c4 c g c
}
bassWords = \lyricmode {
  ho ho ho ho
}

\score {
  \new ChoirStaff <<
    \new Lyrics = "tenor" \with {
      % this is needed for lyrics above a staff
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Staff = "TL" <<
      \new Voice = "tenor" {
        \voiceOne
        << \global \sopMusic >>
      }
      \new Voice = "lead" {
        \voiceTwo
        << \global \altoMusic >>
      }
    >>
    \new Lyrics = "lead"
    \new Lyrics = "baritone" \with {
      % this is needed for lyrics above a staff
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Staff = "BB" <<
      \clef bass
      \new Voice = "baritone" {
        \voiceOne
        << \global \tenorMusic >>
      }
      \new Voice = "basses" {
        \voiceTwo << \global \bassMusic >>
      }
    >>
    \new Lyrics = "basses"
    \context Lyrics = "tenor" \lyricsto "tenor" \sopWords
    \context Lyrics = "lead" \lyricsto "lead" \altoWords
    \context Lyrics = "baritone" \lyricsto "baritone" \tenorWords
    \context Lyrics = "basses" \lyricsto "bass" \bassWords
  >>
}
