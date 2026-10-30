.KF
.G1
frame  invis ht 7 wid 9 left solid bot solid
size=7
barwid=0.2
capwid=0.15
coord x 1990, 2030 y 0, 30
copy "data/korp-mordersnigel.text" thru {
	bar up $2 ht $1 wid barwid fillcolor "mistyrose1"	
}
copy "data/korp-supersnigel.text" thru {
	bar up $2+0.2 ht $1 wid barwid fillcolor "lightblue"
}
.G2
.KE
