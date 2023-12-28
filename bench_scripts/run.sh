#!/bin/bash

BENCHMARKS="XSBench gapbs-pr" 
# BENCHMARKS="gapbs-pr XSBench liblinear"
NVM_RATIO="1:32 1:16 1:8 1:4 1:2 1:1 2:1 4:1"
# NVM_RATIO="1:16 1:8 1:4 1:2"

sudo dmesg -c 


for BENCH in ${BENCHMARKS};
do
    for NR in ${NVM_RATIO};
    do
	./scripts/run_bench.sh -B ${BENCH} -R ${NR} -V basic-2
    done
done
