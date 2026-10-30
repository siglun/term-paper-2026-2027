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
.KF
.G1
frame  invis ht 7 wid 9 left solid bot solid
coord x 2003,2027 y 0.0,100
label bot "Year" down 1
label left "Search interest" left 1.2

draw umeta solid color "blue"
draw meta solid color "black"
draw dmeta solid color "red"

copy "data/search-interest-uk-killer-slug.tsv" thru {
     if "$1" != "#" then {
        next umeta at $2,$4
     }
}
copy "data/search-interest-swedish-moerdarsnigel.tsv" thru {
     if "$1" != "#" then {
        next meta at $2,$4
     }
}

copy "data/search-interest-danish-draebersnegle.tsv" thru {
     if "$1" != "#" then {
        next dmeta at $2,$4
     }
}
.G2
.KE
