#!/bin/bash
#SBATCH -e slurm.err           
#SBATCH --mem=20G                            
#SBATCH -c 6                                 
#SBATCH -p gpu-common --gres=gpu:1           
/opt/apps/matlabR2016a/bin/matlab -nojvm -nodisplay -singleCompThread -r mycode.m > file.out