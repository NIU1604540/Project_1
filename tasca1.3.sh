#!/bin/bash

tail +2 oscar_age_male.csv > male
tail +2 oscar_age_female.csv > female
linies=`wc -l < male`
i=1
while [ $i -le $linies ]
do
	any=`head -$i male | tail -1 | cut -d, -f2`
	actor=`head -$i male | tail -1 | cut -d, -f4`
	edat_actor=`head -$i male | tail -1 | cut -d, -f3`
	pelicula_actor=`head -$i male | tail -1 | cut -d, -f5`
	actriu=`head -$i female | tail -1 | cut -d, -f4`
	edat_actriu=`head -$i female | tail -1 | cut -d, -f3`
	pelicula_actriu=`head -$i female | tail -1 | cut -d, -f5`
	echo "any:$any"
	echo "actor:$actor"
	echo "edat:$edat_actor"
	echo "pel·lícula:$pelicula_actor"
	echo "actriu:$actriu"
	echo "edat:$edat_actriu"
	echo "pel·lícula:$pelicula_actriu"
	echo "---------------------------------"
	let i+=1
done
