.KF
.PS 5c 14c
.ps 9
.vs 11
scale=2.54
boxwid = 1.5; boxht = 0.5
R:   box "Proper functions"
D:   box "Direct" "(members of REFs)" with .n at R.s + (-1.7,-0.6)
Der: box wid 2.2 ht 0.7 "Derived" "(adapted devices, intentions," \
         "artefacts, speaker purposes)" with .n at R.s + (2.0,-0.6)
I:   box "Invariant" with .n at D.s + (-1.7,-0.6)
Rel: box "Relational" with .n at D.s + (0,-0.6)
S:   box "Stabilising" "(language devices)" with .n at D.s + (1.7,-0.6)
A:   box "Adapted" with .n at Rel.s + (0,-0.8)
arrow from R.s to D.n
arrow from R.s to Der.n
arrow from D.s to I.n
arrow from D.s to Rel.n
arrow from D.s to S.n
arrow from Rel.s to A.n "  applied to" ljust "  an adaptor" ljust
line dashed from A.e to (Der.x, A.y)
arrow dashed to Der.s
"adapted devices have" "derived functions" at (A.e.x + Der.x)/2, A.y + 0.25
.PE
.QP
.vs 12
.ps 10
Figure 1. A taxonomy of different forms of functions accoring to.
.[
Millikan  language thought 
.]
A proper function can be either direct or derived.
.sp
.KE
