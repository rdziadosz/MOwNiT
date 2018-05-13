set terminal pngcairo  transparent enhanced font "arial,13" fontscale 1.0 size 800, 600 
set output 'all.png'
set key bmargin left horizontal Right noreverse enhanced autotitle
set samples 800, 800
set title "Wkresy zbieżności" 
set title  font ",20" norotate
set ylabel "log(h1)"
set xlabel "log(ndof)"
DEBUG_TERM_HTIC = 119
DEBUG_TERM_VTIC = 119
plot	'temp/z1p1log10' title "Siatka równomierna" with linespoints , \
		'temp/z2p1log10' title "Siatka h-adaptacyjna" with linespoints, \
		'temp/z3p1log10' title "Siatka p-adaptacyjna" with linespoints, \
		'temp/z3hp' using 4:5 title "Siatka hp-adaptacyjna" with linespoints
