global = {
  \key c \minor
  \time 4/4
  \dynamicUp
}
sopranonotes = \relative c'' {
  \relative c' {\partial 8 r8 r1 r1 r1 c'2 d ees <f d> <g c,>1 <bes, g> c, ees4 c c c' bes g2 f8 g aes4 g g f g2. c,8 bes c4 d ees f g2 c4. aes8 g4 ees f d c2. r8 g' g4 ees bes' g g f2 r8 d ees4 c g' ees d2. bes4 c ees ees f ees g2 ees8 ees f4 f f g g2.}
}
sopranowords = \lyricmode {M m m m m m Come to me, O children! For I hear ye at your play, and the ques-tions that per-plexed me have van-ished quite a-way}
altonotes = \relative c'' {
  c2\p d c d
}
altowords = \lyricmode { re re re re }
tenornotes = {
  \clef "G_8"
  \relative c' {\partial 8 c8 c1 (c1) (c1)}
}
tenorwords = \lyricmode { mi mi mi mi }
bassnotes = {
  \clef bass
  c2\mf d c d
}
basswords = \lyricmode { mi mi mi mi }


\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "soprano" <<
        \global
        \sopranonotes
      >>
    >>
    \new Lyrics \lyricsto "soprano" = "sopranowords"
    \new Staff <<
      \new Voice = "alto" <<
        \global
        \altonotes
      >>
    >>
    \new Staff <<
      \new Voice = "tenor" <<
        \global
        \tenornotes
      >>
    >>
    \new Staff <<
      \new Voice = "bass" <<
        \global
        \bassnotes
      >>
    >>
  >>
}