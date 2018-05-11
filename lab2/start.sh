#!/bin/bash
echo "ZADANIE 2"
tclsh lab2zad2.tcl | grep -E "TOTAL NDOF|H1:|INFO" >>zad2.out
cat zad2.out
echo "ZADANIE 3"
tclsh lab2zad3.tcl | grep -E "TOTAL NDOF|H1:|INFO" >>zad3.out
cat zad3.out
