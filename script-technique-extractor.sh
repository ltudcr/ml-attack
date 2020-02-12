#!/bin/bash

f_label="/root/thesis/WIP/attack-labelled.txt"
f_tech="/root/thesis/WIP/mitre_techniques_id.csv"
iterator=`cat $f_tech | awk -F'#' {'print $1'}`

#obtengo primero la lista de tecnicas y itero
for i in `echo $iterator`; do
#para cada tecnica, obtengo el identificador asociado al reporte y las muestro
	for x in `tr , '\n' < attack-labelled.txt  | grep "$i" | awk -F'#' {'print $2'}`; do grep $x attack-labelled.txt| grep http  ; done
echo "---------------------------"
	echo "Technique: $i"
	echo "Links:"
	echo "$x"

done
