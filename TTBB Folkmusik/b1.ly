bassOneMusic = \relative {
	% tula solo & duo
	\partial 4 r4
	R2.*13 | 
	
	% tula alla
	r2 e'8.^\mf c16 |
	a4 c b8. gis16 | a4 r4 
	e8. e16 | e4 e e | e2 r4 | r4 e d8. d16 | e4 r e8. e16 | e4 a a8( gis) e2

	% tula/limu
	c'8.^\mp d16 |
	e4 c d8. b16 | d2 a8. b16 |
	c4 a b8. gis16 | b2 e,8. gis16 |
	b4 d8. c16 b4 | a2. |

	% limu duo/alla
	e4 g g fis g2 dis2 | e4 e e e e( d) cis2
	b4 b b b b2 b2 c4 c d d e( fis) gis2
	g4^\< g8 g fis4 fis8 fis | e4 fis8 fis g4 g8 g | b4^\f e,8 e c4^\> c | a b^\p b2

	% dejlig solo
	R1*7 r2.

	% dejlig duo
	gis'4 a c gis b a( g) f e e e d e e2.
	gis4 a8( b) c4 gis8( a) b4 a( e) f d e e d e a2.

	% dejlig alla
	e4^\mf^\< e cis d e f4.^\f e8 d4 d d b c d e4. d8 e4^\> b a c b d c2.^\mp

	% dejlig / segla
	e4 f a e g f4.( e8) d4 e f d e cis d2. r4
	d2.^\< d4 e2^\> e4 e e1^\p d2. r4
	R1*2 d4( a) a2 bes r
	a a4 a a2 a a1 a

	% segla
	R2.*2
	d4^\f d \tuplet 3/2 {d8 d d} d4 d d
	R2.*2
	d4 d \tuplet 3/2 {d8 d d} d2 d4
	R2.*2
	d2 d4 c2. R2.*2 bes2.^\mp bes2.

	% kristallen
	gis'4^\mf gis gis fis4. fis8 fis4 fis fis fis fisis fisis 
	fisis dis dis dis fis4. fis8 fis4 fis2.~2.
	dis2 dis4 cis4. cis8 cis4 fis fis fis fisis fisis 
	fisis dis dis dis cis4. cis8 cis4 fis2.~2.

	R2. r2 b4 b( ais) gis gis fisis
	gis4 dis2 dis4 dis dis cis b2 dis8( cis) b4 ais4
	
	gis8( ais) b4 b b cis4.( b8) cis4 b2.~2
	r4 gis'4^\< gis gis ais ais ais bis!2.^\f~2
	\grace {
		\once \hide Stem
		\parenthesize c4
	} s4
	R2.
	des,4. c8 des4 es2
	es8^\> f ges4 ges as^\p f2.~2.

}
bassOneWords = \lyricmode {

  Tu -- la hem och tu -- la vall.
  Tu -- la långt åt mos -- sen.
  När jag kom hem.
  Kål fick jag i pås -- en.

  Mjölk -- en var båd' gul och blå.
  Ost -- en såg jag li -- te 'å.
  Smör -- et smak -- te jag ald -- rig.

  Li -- mu, li -- mu, li -- ma,
  Gud låt sol -- en ski -- na.
  
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

  Jag vet en dej -- lig ro -- sa
  och vit som lil -- je -- blad.

  Vem kan ro ut -- an år -- or?
  vän -- nen sin,
  ut -- an att fäl -- la tår -- ar?

  Jag kan seg -- la för -- ut -- an vind.
  Jag kan ro ut -- an år -- or.
  Vän -- nen min.
  tår -- ar.

  -tal -- len den fi -- na som sol -- en månd' ski -- na, 
  som stjär -- nor -- na blän -- ka i skyn. __
  Vet en flic -- ka i dyg -- den den fi -- na,
  en flic -- ka i den -- na här byn. __

  O älsk -- ogs blom -- ma.
  Ack om vi kun -- de till -- sam -- mans kom -- ma.
  Och jag vo -- re vän -- nen din. __
  Du all -- ra kär -- est -- an min. __ 

  Äd -- el -- a ros, och för gyl -- lan -- de skrin. __
}