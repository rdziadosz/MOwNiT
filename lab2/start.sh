#!/bin/bash
#----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# rdziadosz wrote this code. As long as you retain this notice you
# can do whatever you want with this stuff. If we meet some day, and you think
# this stuff is worth it, you can buy me a beer in return.
#----------------------------------------------------------------------------

echo "ZADANIE 1"
tclsh lab2zad1.tcl | grep -E "TOTAL NDOF|H1:|INFO" > zad1.out
tclsh lab2zad1.tcl > "zad1f.out"
cat zad1.out
echo "ZADANIE 2"
tclsh lab2zad2.tcl | grep -E "TOTAL NDOF|H1:|INFO" > zad2.out
tclsh lab2zad2.tcl > zad2f.out
cat zad2.out
echo "ZADANIE 3"
tclsh lab2zad3.tcl | grep -E "TOTAL NDOF|H1:|INFO" > zad3.out
tclsh lab2zad3.tcl > zad3f.out
cat zad3.out

sh wykresy.sh
sh tabelki.sh

mkdir sprawko
mv *.png sprawko
mv tabelki.txt sprawko
rm *.out
rm temp/*