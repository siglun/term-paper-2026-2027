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

.G2
.KE
.LP
having a cryoprotectant in ones body tissue is similar to have antifreeze in ones coolant
.LP
1. The Glucose Accumulation Disparity

Both species trigger glycogen-to-glucose conversion dynamically upon freezing, but their capacity to ramp up glucose levels differs.
• Arion rufus and Arion ater complexes demonstrate a more pronounced hyperglycemic response to freezing than Arion vulgaris.
• Arion vulgaris accumulates glucose upon freezing, but it does so less efficiently and in lower concentrations compared to its cold-adapted northern relatives. Because of this lower peak concentration, it gets less colligative protection from its sugar reserves.

2. Lower Freezing Survival Limits

Because Arion vulgaris originated from more temperate regions of Europe, its internal machinery is less equipped for prolonged deep freezes.
• Survival window: While both species can survive short-term freezing (such as 2 days at a mild -1°C), Arion ater handles prolonged or slightly lower temperatures better. In contrast, Arion vulgaris experiences much higher mortality rates if tissue ice content becomes too high or if temperatures drop to even -2°C for an extended period.

.ig
"En sökning i ordforskningsplattformen Korp (Borin et al., 2025) gjordes den 26 oktober 2026 på sökfrågan [lemma = "kalla handen"] i delkorpusen Moderna tidningstexter. Sökningen resulterade i..."
..
