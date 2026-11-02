.KF
.G1
frame  invis ht 7 wid 9 left solid bot solid
size=7
barwid=0.3
capwid=0.15
coord x 1990, 2030 y 0, 15
copy "data/korp-mordersnigel.text" thru {
	bar up $2-0.15 ht $1 wid barwid fillcolor "mistyrose1"	
}
copy "data/korp-supersnigel.text" thru {
	bar up $2+0.15 ht $1 wid barwid fillcolor "lightblue"
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
.KF
.G1
frame  invis ht 7 wid 9 left solid bot solid
coord x 0,366 y 0.0,100
label bot "Day" down 1
label left "Search interest" left 1.2

draw umeta bullet color "blue"
draw meta bullet color "black"
draw dmeta bullet color "red"

copy "data/search-interest-uk-killer-slug.tsv" thru {
     if "$1" != "#" then {
        next umeta at $3,$4
     }
}

copy "data/search-interest-swedish-moerdarsnigel.tsv" thru {
     if "$1" != "#" then {
        next meta at $3,$4
     }
}

copy "data/search-interest-danish-draebersnegle.tsv" thru {
     if "$1" != "#" then {
        next dmeta at $3,$4
     }
}
.G2
.KE
.KF
.G1
frame  invis ht 7 wid 9 left solid bot solid
coord x 0,366 y 0.0,1
label bot "Day" down 1
label left "Normalized search interest" left 1.2

draw umeta bullet color "blue"
draw meta bullet color "black"
draw dmeta bullet color "red"

copy "data/search-interest-uk-killer-slug-normalized.tsv" thru {
     if "$1" != "#" then {
        next umeta at $3,$5
     }
}

copy "data/search-interest-swedish-moerdarsnigel-normalized.tsv" thru {
     if "$1" != "#" then {
        next meta at $3,$5
     }
}

copy "data/search-interest-danish-draebersnegle-normalized.tsv" thru {
     if "$1" != "#" then {
        next dmeta at $3,$5
     }
}
.G2
.KE
.KF
.G1
frame  invis ht 7 wid 9 left solid bot solid
coord x 2003,2027 y 100,200
label bot "Year" down 1
label left "Mean day of searches" left 1.2

draw umeta solid color "blue"
draw meta solid color "black"
draw dmeta solid color "red"

copy "data/mean-search-day-uk.tsv" thru {
     if "$1" != "#" then {
        next umeta at $1,$2
     }
}
copy "data/mean-search-day-se.tsv" thru {
     if "$1" != "#" then {
        next meta at $1,$2
     }
}
copy "data/mean-search-day-dk.tsv" thru {
     if "$1" != "#" then {
        next dmeta at $1,$2
     }
}
.G2
.KE
.KF
.G1
frame  invis ht 7 wid 9 left solid bot solid
size=7
coord x 500, 700 y 140, 200

label left "Mean day of searches" left 1.2
label bot "Mean preciptation (mm)" down 1

draw bul bullet color "black"

copy "data/correlation-search-rain.tsv" thru {
      next bul at $2,$3
}
.G2
.KE
