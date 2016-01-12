reset
set xrange[1e-09:0.0001]
set xlabel "midx  (eobd)"
set ylabel "Abs "
set y2label "Phase [Deg] "
set y2tics nomirror
set my2tics 3
set ytics nomirror
set mxtics 2
set mytics 2
set zero 0.0
set title "check_jitter_mod                Wed Dec 30 15:10:50 2015" offset 0, 2
set nolog y
set nolog y2
set term x11 
set size ratio .5 
set key below 
set grid xtics ytics 
plot\
'check_jitter_mod.out' using ($1):($2) axes x1y1 title "adHG00USB ndets : Abs  " w l lt 1 lw 2, \
'check_jitter_mod.out' using ($1):($3) axes x1y2 title "adHG00USB ndets : Phase [Deg]  " w l lt 2 lw 2, \
'check_jitter_mod.out' using ($1):($4) axes x1y1 title "adHG10USB ndets : Abs  " w l lt 3 lw 2, \
'check_jitter_mod.out' using ($1):($5) axes x1y2 title "adHG10USB ndets : Phase [Deg]  " w l lt 4 lw 2, \
'check_jitter_mod.out' using ($1):($6) axes x1y1 title "adHG01USB ndets : Abs  " w l lt 5 lw 2, \
'check_jitter_mod.out' using ($1):($7) axes x1y2 title "adHG01USB ndets : Phase [Deg]  " w l lt 6 lw 2, \
'check_jitter_mod.out' using ($1):($8) axes x1y1 title "adHG00LSB ndets : Abs  " w l lt 7 lw 2, \
'check_jitter_mod.out' using ($1):($9) axes x1y2 title "adHG00LSB ndets : Phase [Deg]  " w l lt 8 lw 2, \
'check_jitter_mod.out' using ($1):($10) axes x1y1 title "adHG10LSB ndets : Abs  " w l lt 9 lw 2, \
'check_jitter_mod.out' using ($1):($11) axes x1y2 title "adHG10LSB ndets : Phase [Deg]  " w l lt 0 lw 2, \
'check_jitter_mod.out' using ($1):($12) axes x1y1 title "adHG01LSB ndets : Abs  " w l lt 11 lw 2, \
'check_jitter_mod.out' using ($1):($13) axes x1y2 title "adHG01LSB ndets : Phase [Deg]  " w l lt 12 lw 2, \
'check_jitter_mod.out' using ($1):($14) axes x1y1 title "pdRFAMcheck ndets : Abs  " w l lt 13 lw 2, \
'check_jitter_mod.out' using ($1):($15) axes x1y2 title "pdRFAMcheck ndets : Phase [Deg]  " w l lt 14 lw 2
