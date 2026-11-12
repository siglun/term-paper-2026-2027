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
.QP
.vs 12
.ps 10
Figure 3.

.KE
.ig
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
        next umeta at $3-6,$4
     }
}

copy "data/search-interest-swedish-moerdarsnigel.tsv" thru {
     if "$1" != "#" then {
        next meta at $3+6,$4
     }
}

copy "data/search-interest-danish-draebersnegle.tsv" thru {
     if "$1" != "#" then {
        next dmeta at $3,$4
     }
}
.G2
.KE
.. 
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
        next umeta at $3-6,$5
     }
}

copy "data/search-interest-swedish-moerdarsnigel-normalized.tsv" thru {
     if "$1" != "#" then {
        next meta at $3+6,$5
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

# Intercept	65.0941320177774
# Slope	0.166083903863906

draw bul bullet color "black"

copy "data/correlation-search-rain.tsv" thru {
     if $1==2022 then {
       "\s[-6]\[bu]  $1\s[+6]" ljust at $2,$3
     } else {
       "\s[-6]$1  \[bu]\s[+6]" rjust at $2,$3
     }
}

draw solid
copy until "END" thru {next at $1, 65.09 + 0.1661*$1;}
510
700
END
"\s[-2]r=0.626\s[+2]" ljust at 515,200
"\s[-2]t=3.592\s[+2]" ljust at 515,195
"\s[-2]P=0.001823** (two tailed)\s[+2]" ljust at 515,190

.G2
.KE
