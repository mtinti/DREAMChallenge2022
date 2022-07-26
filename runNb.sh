#!/bin/bash
#$ -mods l_hard m_mem_free 32G
#$ -adds l_hard local_free 200G
#$ -cwd
#$ -V
#$ -j y
#$ -pe smp 8
#$ -N nb
#$ -o /cluster/majf_lab/mtinti/DreamChallenge/final_models/sub_$JOB_ID
#$ -l gpu=1
#$ -l h="gpu-4*|gpu-5*"

jupyter nbconvert --to notebook --execute submission-0.745-Copy1.ipynb
