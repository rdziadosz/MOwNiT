set terminal pngcairo  transparent enhanced font "arial,13" fontscale 1.0 size 800, 600 
set output 'p3.png'
set key bmargin left horizontal Right noreverse enhanced autotitle
set samples 800, 800
set title "Wykres zbieżności p=3"
set title  font ",20" norotate
set ylabel "log(h1)"
set xlabel "log(ndof)"
DEBUG_TERM_HTIC = 119
DEBUG_TERM_VTIC = 119
plot 'temp/z1p3log10' title "Siatka równomierna" with linespoints ,'temp/z2p3log10' title "Siatka h-adaptacyjna" with linespoints
