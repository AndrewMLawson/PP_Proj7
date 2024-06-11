#!/bin/bash
#SBATCH -J AutoCorr
#SBATCH -A cs475-575
#SBATCH -p classmpifinal
#SBATCH -N 8 # number of nodes
#SBATCH -n 8 # number of tasks
#SBATCH -o mpiproject.out
#SBATCH -e mpiproject.err
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=lawsoand@oregonstate.edu
module load openmpi
mpic++ proj07.cpp -o proj07 -lm
mpiexec -mca btl self,tcp -np 8 ./proj07
