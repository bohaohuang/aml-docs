#!/bin/bash
for i in `squeue -u $1 | grep gpu-commo | awk '{print $8}' | grep -v NODE`;do echo $i;ssh $i nvidia-smi 2> /dev/null | grep processes;done
for i in `squeue -u $1 | grep collinslab | awk '{print $8}' | grep -v NODE`;do echo $i;ssh $i nvidia-smi 2> /dev/null | grep processes;done
