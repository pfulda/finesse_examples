reset
set xrange[-10:10]
set xlabel "phi [deg] (EM)"
set ylabel "Abs "
set mxtics 2
set mytics 2
set zero 0.0
set title "linear_cav                Mon Jan  4 21:24:07 2016" offset 0, 2
set nolog y
set term x11 
set size ratio .5 
set key below 
set grid xtics ytics 
plot\
'linear_cav.out' using ($1):($2) axes x1y1 title " nEMout :  " w l lt 1 lw 2
