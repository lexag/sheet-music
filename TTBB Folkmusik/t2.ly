tenorTwoMusic = \relative {
	% tula solo
	\partial 4 r4
	R2.*7 r2

	% tula duo
	a8. b16 |
	c4 a b8. gis16 | b2 e,8. e16 |
	a4 a e8. e16 | e2 e8.^\< e16 |
	e4 e8. e16 gis4 | e2.^\mf~2.~2

	% tula alla
	e8. e16 | c'4 c b | a2 e'8. c16 | a4 c b8. gis16 | a4 r e8. e16 | c'4 c b | a2

	% tula/limu
	r4 R2.*4 R2 R1
	
	% limu duo/alla
	e4^\mp b' b a b2 fis2 | g4 e g g fis2 e2
	e4 g g fis g2 e2 | g4 e e e e( dis) b4 
	g'8 a | b4^\< g8 fis e4 g8 a | b4 g8 fis e4 g8 a | b4^\f g8 fis e4^\> g | dis fis^\p e2

	% dejlig solo
	R1*8

	% dejlig duo
	R1*7 r2.

	% dejlig alla
	cis'4^\mf^\< cis a b cis d4.^\f a8 d4 c b g a b c4. b8 gis4^\> e f f e e | e2.^\mp

	% dejlig / segla
	r4 d2. e4 f2 e4 d a'2 a a2. r4
	g2.^\< a4 c2^\> c4 a f1^\p fis!2. r4
	r2 g4( f) e2 e4 e d2 d bes r
	e f4 e a,2 cis d1 d

	% segla
	R2.*2
	g4^\f g \tuplet 3/2 {g8 g g} g4 g g
	R2.*2
	g4 g \tuplet 3/2 {g8 g g} g2 g4
	R2.*2
	g2 f4 e2. 
	R2.*2 
	es2.^\mp des2

	% kristallen
	as'8(^\mf bes) b4 b b cis4. b8 cis4 dis dis dis8( e) dis( cis) b( ais) 
	gis( ais) b4 b b cis4. b8 cis 4 dis2.~2
	gis,8( ais) b2 b4 cis4. b8 cis4 dis dis dis8( e) dis( cis) b( ais) 
	gis( ais) b4 b b cis4. b8 cis 4 dis2.~2.

	R2. r2 dis4 dis( cis) b b ais
	r4 R2.*2 fis2 fis4 fisis4 fisis

	r4 R2.*2 dis2.~2
	gis8( ais) b4^\< b b cis4. b8 cis4 dis2.^\f~2
	\grace {
		\once \hide Stem
		\parenthesize es4
	}s4
	r2 
	bes4 f4. es8 des4 c( bes)
	f'8^\> es des4 des c^\p bes'2.~2.
	
}
tenorTwoWords = \lyricmode {
  Mjölk -- en var båd' gul och blå.
  Ost -- en såg jag li -- te 'å.
  Smör -- et smak -- te jag ald -- rig. __

  Tu -- la långt åt mos -- sen.
  Kål fick jag när jag kom hem.
  Kål fick jag i pås -- en.

  Li -- mu, li -- mu, li -- ma,
  Gud låt sol -- en ski -- na.
  
  Li -- mu, li -- mu, li -- ma,
  Gud låt sol -- en ski -- na.

  Öv -- er ber -- gen de blå, 
  öv -- er kul -- lor -- na små 
  som i skog -- en skall gå 
  om som -- mar -- en.

%   Jag vet en dej -- lig ro -- sa
%   och vit som lil -- je -- blad.
%   När jag på hen -- ne tän -- ker 
%   så görs mitt hjär -- ta glad.

  Dess stäm -- ma ger en hjärt -- ans tröst
  likt näkt -- er -- gal -- ens bli -- da röst,
  så fag -- er och så ljuv.

  Vem kan seg -- la för -- ut -- an vind?
  Vem kan ro ut -- an år -- or?
  kan __ skil -- jas från vän -- nen sin,
  ut -- an att fäl -- la tår -- ar?

  Jag kan seg -- la för -- ut -- an vind.
  Jag kan ro ut -- an år -- or.
  Vän -- nen min.
  tår -- ar.

  Kris -- tal -- len den fi -- na som sol -- en månd' __ ski -- na, 
  som stjär -- nor -- na blän -- ka i skyn. __
  Jag vet en flic -- ka i dyg -- den den fi -- na,
  en flic -- ka i den -- na här byn. __

  O älsk -- ogs blom -- ma.
  Sam -- man kom -- ma.
  din. __
  Och du all -- ra kär -- est -- an min. __ 

  Du äd -- el -- a ros, och för gyl -- lan -- de skrin. __
}