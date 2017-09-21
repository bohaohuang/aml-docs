#!/bin/bash
#SBATCH -e slurm.err                         # error message will be stored in slurm.err
#SBATCH --mem=20G                            # request 20G for ram
#SBATCH -c 6                                 # 6 cpu cores
#SBATCH -p gpu-common --gres=gpu:1           # request for 1 gpu
export LD_LIBRARY_PATH=/opt/apps/rhel7/cudnn/lib:$LD_LIBRARY_PATH
python mycode.py > file.out