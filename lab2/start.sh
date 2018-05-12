#!/bin/bash
#----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# rdziadosz wrote this code. As long as you retain this notice you
# can do whatever you want with this stuff. If we meet some day, and you think
# this stuff is worth it, you can buy me a beer in return.
#----------------------------------------------------------------------------


echo "ZADANIE 2"
tclsh lab2zad2.tcl | grep -E "TOTAL NDOF|H1:|INFO" >>zad2.out
cat zad2.out
echo "ZADANIE 3"
tclsh lab2zad3.tcl | grep -E "TOTAL NDOF|H1:|INFO" >>zad3.out
cat zad3.out
