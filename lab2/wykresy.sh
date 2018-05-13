#!/bin/bash
mkdir temp
cat zad1.out | grep 'H1'   | cut -c 5-18  > temp/z1h1
cat zad1.out | grep 'H1'   | cut -c 29-38 > temp/z1h1log10
cat zad1.out | grep 'NDOF' | cut -c 13-18 > temp/z1ndof
cat zad1.out | grep 'NDOF' | cut -c 29-38 > temp/z1ndoflog10
paste temp/z1ndoflog10 temp/z1h1log10 > temp/z1alllog10
sed -n 1,6p   temp/z1alllog10 > temp/z1p1log10
sed -n 7,12p  temp/z1alllog10 > temp/z1p2log10
sed -n 13,18p temp/z1alllog10 > temp/z1p3log10

paste temp/z1ndof temp/z1h1 > temp/z1all
sed -n 1,6p   temp/z1all > temp/z1p1
sed -n 7,12p  temp/z1all > temp/z1p2
sed -n 13,18p temp/z1all > temp/z1p3

cat zad2.out | grep 'H1'   | cut -c 5-18  > temp/z2h1
cat zad2.out | grep 'H1'   | cut -c 29-38 > temp/z2h1log10
cat zad2.out | grep 'NDOF' | cut -c 13-18 > temp/z2ndof
cat zad2.out | grep 'NDOF' | cut -c 29-38 > temp/z2ndoflog10
paste temp/z2ndoflog10 temp/z2h1log10 > temp/z2alllog10
sed -n 1,6p   temp/z2alllog10 > temp/z2p1log10
sed -n 7,12p  temp/z2alllog10 > temp/z2p2log10
sed -n 13,18p temp/z2alllog10 > temp/z2p3log10

paste temp/z2ndof temp/z2h1 > temp/z2all
sed -n 1,6p   temp/z2all > temp/z2p1
sed -n 7,12p  temp/z2all > temp/z2p2
sed -n 13,18p temp/z2all > temp/z2p3

cat zad3.out | grep 'H1'   | cut -c 5-18  > temp/z3h1
cat zad3.out | grep 'H1'   | cut -c 29-38 > temp/z3h1log10
cat zad3.out | grep 'NDOF' | cut -c 13-18 > temp/z3ndof
cat zad3.out | grep 'NDOF' | cut -c 29-38 > temp/z3ndoflog10
paste temp/z3ndoflog10 temp/z3h1log10 > temp/z3alllog10
sed -n 1,6p   temp/z3alllog10 > temp/z3p1log10
sed -n 7,12p  temp/z3alllog10 > temp/z3p2log10
sed -n 13,18p temp/z3alllog10 > temp/z3p3log10

paste temp/z3ndof temp/z3h1 > temp/z3all
sed -n 1,6p   temp/z3all > temp/z3p1
sed -n 7,12p  temp/z3all > temp/z3p2
sed -n 13,18p temp/z3all > temp/z3p3

cat zad3hp.out > temp/z3hp

gnuplot charts/p1.gnu
gnuplot charts/p2.gnu
gnuplot charts/p3.gnu
gnuplot charts/all.gnu

