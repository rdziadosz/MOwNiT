#!/usr/bin/env bash
tclsh lab2zad4.tcl | grep -E "TOTAL NDOF|H1:" > zad4.out
cat zad4.out | awk  '{ print  $(NF-1) }' | paste - -