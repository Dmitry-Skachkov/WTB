set terminal pngcairo size 600,600 font "Verdana,24"
set output 'bands_wtb.png'

set xtics ("{/Symbol G}"  0.00000,\
           "M"  0.333366603, \
           "K"  0.666683316, \
           "{/Symbol G}"  1.00000) # taken from KLABELS-BSE.dat 

set arrow from 0.333366603,  graph 0 to 0.333366603,  graph 1 nohead
set arrow from 0.666683316, graph 0 to 0.666683316, graph 1 nohead

#set xrange [  0 : 1.57749]
set yrange [ -0.6 :  1.6]

plot "bands_bse2.dat"    using 1:2 with lines lw 4 lc "grey" notitle     ,\
     "bands_bse2_1.dat"  using 1:2 with lines lw 4 lc "red" notitle ,\
     "bands_bse2_16.dat" using 1:2 with lines lw 4 lc "dark-blue" notitle 

     