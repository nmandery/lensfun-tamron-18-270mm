set grid
set xlabel 'focal length [mm]'
set ylabel 'value'
set output "lens-dis.png"
set title "Lens disortion Tamron 18.0-270.0 mm"
set terminal png
plot 'lens.dat' using 1:2 title "disortion (a)" with linespoints, \
    'lens.dat' using 1:3 title "barrel (b)" with linespoints, \
    'lens.dat' using 1:4 title "disortion (c)" with linespoints
