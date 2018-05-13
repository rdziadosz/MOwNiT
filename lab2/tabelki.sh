#!/bin/bash
readonly HEADER="#ndof\th1"
echo "z=1 - rownomierna redukcja; z=2 - h-adaptacyjna; z=3 - p-adaptacyjna" > tabelki.txt
for p in $(seq 1 3); do
	echo "\n\n---------------------------------------" >> tabelki.txt
	echo " p = $p" >> tabelki.txt
	echo "---------------------------------------" >> tabelki.txt
	
	for z in $(seq 1 3); do
		echo "\n---------------------------------------" >> tabelki.txt
		echo " z = $z" >> tabelki.txt
		echo "---------------------------------------" >> tabelki.txt
		echo ${HEADER} >> tabelki.txt
		cat temp/z${z}p${p}>>tabelki.txt
	done
done

echo "\n---------------------------------------" >> tabelki.txt
echo " hp-adaptacyjna" >> tabelki.txt
echo "---------------------------------------" >> tabelki.txt
awk '{print $2}' temp/z3hp > temp/z3hpcolumn2
awk '{print $3}' temp/z3hp > temp/z3hpcolumn3
echo ${HEADER} >> tabelki.txt
paste temp/z3hpcolumn2 temp/z3hpcolumn3 >> tabelki.txt
