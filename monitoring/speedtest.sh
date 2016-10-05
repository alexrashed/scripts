#!/bin/sh
while true
do
	echo -ne $(date) '\t' && speedtest-cli --simple | grep -Eo "[0-9]*\.[0-9]*" | tr '\n' '\t'
	sleep 15m
done

