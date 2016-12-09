#!/bin/bash
make
mkdir output
mkdir result
for i in 1 800 8000 #80000 800000
do
	echo Lock
	perf stat --repeat 10 -o output/lock$i.txt ./mylocks $i 1>result/printLock$i.txt 
	echo LockFree
	perf stat --repeat 10 -o output/lockfree$i.txt ./mylockfree $i 1>result/printLockfree$i.txt
done
