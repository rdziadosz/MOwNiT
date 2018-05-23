#!/bin/bash
#----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# rdziadosz wrote this code. As long as you retain this notice you can do
# whatever you want with this stuff. If we meet some day, and you think this
# stuff is worth it, you can buy me a beer in return.
#----------------------------------------------------------------------------
# Zadanie A=0, B=2 oraz parametry z kartki
# Zadanie 3 hp uruchomilem recznie (bo oj tak trzeba screeny) i skopiowalem tabelke do zad3hp.out (żeby wygenerowac wykresy).
#readonly ZADANIE="0"
#readonly PARAM1="43"
#readonly PARAM2="1.74"
#readonly PARAM3="-1.49"
#----------------------------------------------------------------------------

echo "ZADANIE 1"
tclsh lab2zad1.tcl | grep -E "TOTAL NDOF|H1:|INFO" > zad1.out
#tclsh lab2zad1.tcl > zad1f.out
cat zad1.out
echo "ZADANIE 2"
tclsh lab2zad2.tcl | grep -E "TOTAL NDOF|H1:|INFO" > zad2.out
#tclsh lab2zad2.tcl > zad2f.out
cat zad2.out
echo "ZADANIE 3 p"
tclsh lab2zad3.tcl | grep -E "TOTAL NDOF|H1:|INFO" > zad3.out
#tclsh lab2zad3.tcl > zad3f.out
cat zad3.out
echo "ZADANIE 3 hp"
#cd ../data_2Dhp/
#(echo "10"; echo "0.001"; echo "30"; echo ${ZADANIE}; echo ${PARAM1}; echo ${PARAM2}; echo "1"; echo "2") | ../hp1d 2>/dev/null | grep -E "^\s+[[:digit:]]+\s+[[:digit:]]" > zad3hp.out
#(echo "10"; echo "0.001"; echo "30"; echo ${ZADANIE}; echo ${PARAM1}; echo ${PARAM2}; echo "1"; echo "2") | ../hp1d 2>/dev/null > zad3hpf.out
cat zad3hp.out
#mv *.out ../data_2D/
#cd ../data_2D/

sh wykresy.sh
sh tabelki.sh

mkdir sprawko
mv *.png sprawko
mv tabelki.txt sprawko
#rm *.out
#rm temp/*