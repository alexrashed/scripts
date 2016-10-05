#!/bin/bash
echo -e 'Date\tPing ms\tUp MBit\tDown MBit'
while true
do
	# Print the current date, a tab and then the 
	echo -ne $(date) '\t' && speedtest-cli --simple | grep -Eo "[0-9]+\.[0-9]+" | tr '\n' '\t'
	echo ''
	sleep 15m
done

