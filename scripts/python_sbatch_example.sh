#!/bin/bash
#SBATCH -e slurm.err                                                   # error log file
#SBATCH --mem=20G                                                      # request 20G memory
#SBATCH -c 6                                                           # request 6 gpu cores
#SBATCH --exclude=dcc-gpu-[31-32]                                      # exclude GPUs (those two have less than 4G RAM)
#SBATCH -p gpu-common --gres=gpu:1                                     # request 1 gpu for this job
module load Anaconda3/3.5.2                                            # load conda to make sure use GPU version of tf
# add cuda and cudnn path
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/opt/apps/rhel7/cudnn/lib64:$LD_LIBRARY_PATH
# add my library path
export PYTHONPATH=$PYTHONPATH:/dscrhome/bh163/code/uab
# execute my file
python train_spca_unet_psbs.py