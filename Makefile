show: plot
	display lens-dis.png

lens.dat: lens.xml
	grep distortion lens.xml | gawk 'FS="\"" { print $$4 " " $$6 " " $$8 " " $$10}' >lens.dat

PHONY: lens.dat

plot: lens.dat
	gnuplot lens-dis.plot

clean:
	rm -f lens-dis.png lens.dat
