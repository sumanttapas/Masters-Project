#!/bin/bash
for i in 1 800 8000 80000 800000
do
	echo lock
	python3 median.py printLock$i.txt
	echo lockfree
	python3 median.py printLockfree$i.txt
done
	
