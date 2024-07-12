bassTwoMusic = \relative {
	% tula solo
	\partial 4 r4
	R2.*7 r2

	% tula duo
	r4 R2.*3 | r2 e8.^\< e16 |
	e4 d8. c16 b4 | a2.^\mf~2.~2

	% tula alla
	e'8. e16 | a,4 a b | a2 r4 | r2 e8. e16 | a4 r a8. b16 | c4 a e a2

	% tula/limu
	r4 R2.*4 R2 R1

	% limu duo/alla
	R1*4
	e4^\mp e e e fis2 g | a4 a a c b2 e,2
	e4^\< e8 b' e4 e8 e | a,4 b8 b c4 c8 d | e(^\f e,) e8 d c4^\> a' | g8( fis) fis4^\p e2

	% dejlig solo
	R1*7 r2.

	% dejlig duo
	b'4 c e b d c4.( b8) a4 b c a b gis a2.
	b4 c e b d c4.( b8) a4 b c a b gis a2.

	% dejlig alla
	a4^\mf^\< a a a a d4.^\f a8 d,4 d g g g g c g gis^\> gis f f e e a2.^\mp

	% dejlig / segla
	r4 R1 *4
	g2.^\< g4 c2^\> c4 c f,1^\p fis!2. r4
	R1*2 a2 d,2 f r
	a a4 a a4( g) f( e) d1 d

	% segla
	R2.*2
	g4^\f g \tuplet 3/2 {g8 g g} g4 g g
	R2.*2
	g4 g \tuplet 3/2 {g8 g g} g2 g4
	R2.*2
	g2 bes4 g2. R2.*2 es2.^\mp es2.

	% kristallen
	R2. r2 fis'4^\mf b, b b8( cis) dis4 dis, dis 
	gis gis gis fis4. fis8 fis4 b2.~2.
	gis2 gis4 fis4. fis8 fis4 b b b dis dis 
	dis gis, gis gis fis4. fis8 fis4 b2.~2

	gis'4 dis2 dis4 dis2 cis4 b2 b4 b4 ais4
	r4 R2.*2 b2 b4 dis, dis

	r4 gis4 gis gis fis2 fis4 fis2.~2
	r4 gis'4^\< gis dis fis fis fis eis!2.^\f~2
	\grace {
		\once \hide Stem
		\parenthesize f4
	}s4
	R2.
	bes,4. bes8 bes4 es2 
	es,8^\> f ges4 ges as^\p bes2.~2.
}
bassTwoWords = \lyricmode {
  Smör -- et smak -- te jag ald -- rig. __

  Tu -- la långt åt mos -- sen.
  Jag kom hem.
  Kål fick jag i på -- sen.
  
  Li -- mu, li -- mu, li -- ma,
  Gud låt sol -- en ski -- na.

  Ber -- gen de blå, 
  öv -- er kul -- lor -- na små 
  som i skog -- en skall gå 
  om som -- mar -- en.

  Jag vet en dej -- lig ro -- sa
  och vit som lil -- je -- blad.
  När jag på hen -- ne tän -- ker 
  så görs mitt hjär -- ta glad.

  Dess stäm -- ma ger en hjärt -- ans tröst
  likt näkt -- er -- gal -- ens bli -- da röst,
  så fag -- er och så ljuv.

  Vem kan ro ut -- an år -- or?
  vän -- nen sin,
  ut -- an att fäl -- la tår -- ar?

  Jag kan seg -- la för -- ut -- an vind.
  Jag kan ro ut -- an år -- or.
  Vän -- nen min.
  tår -- ar.

  som sol -- en månd' ski -- na, 
  som stjär -- nor -- na blän -- ka i skyn. __
  Vet en flic -- ka i dyg -- den den fi -- na,
  en flic -- ka i den -- na här byn. __

  Min vän, min vän,
  och älsk -- ogs blom -- ma.
  Sam -- man kom -- ma.
  Jag vo -- re vän -- nen din. __
  Du all -- ra kär -- est -- an min. __ 

  Äd -- el -- a ros, och för gyl -- lan -- de skrin. __
}