reset
set xrange[1:1e+07]
set logscale x
set xlabel "f [Hz] (sweptEOAM)"
set ylabel "Abs "
set y2label "Phase [Deg] "
set y2tics nomirror
set my2tics 3
set ytics nomirror
set mxtics 2
set mytics 2
set zero 0.0
set title "Tcav_RFjitter                Fri Oct 30 14:08:08 2015" offset 0, 2
set log y
set format y "%g"
set term x11 
set size ratio .5 
set key below 
set grid xtics ytics 
plot\
'Tcav_RFjitter.out' using ($1):($2) axes x1y1 title "am_trans nMCTRANS : Abs  " w l lt 1 lw 2, \
'Tcav_RFjitter.out' using ($1):($3) axes x1y2 title "am_trans nMCTRANS : Phase [Deg]  " w l lt 2 lw 2, \
'Tcav_RFjitter.out' using ($1):($4) axes x1y1 title "am_in nMC1in* : Abs  " w l lt 3 lw 2, \
'Tcav_RFjitter.out' using ($1):($5) axes x1y2 title "am_in nMC1in* : Phase [Deg]  " w l lt 4 lw 2
