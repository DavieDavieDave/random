#!/usr/bin/env bash

h=0; m=0; s=0

while : 
do
	printf "Time: %02d:%02d:%02d\r" $h $m $s
	s=$((s+1))
	sleep 1
	if [ $s == 60 ]; then
		m=$((m+1)); s=0
		if [ $m == 60 ]; then
			m=0; h=$((h+1))
		fi
	fi
done

