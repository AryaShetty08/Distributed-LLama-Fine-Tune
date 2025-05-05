#!/bin/bash
#SBATCH -N 2
#SBATCH -C gpu
#SBATCH -G 8
#SBATCH -q regular
#SBATCH -J LlamaFineTuning
#SBATCH --mail-user=aas445@scarletmail.rutgers.edu
#SBATCH --mail-type=ALL
#SBATCH -t 01:00:00
#SBATCH -A m_4431

#OpenMP settings:
export OMP_NUM_THREADS=1
export OMP_PLACES=threads
export OMP_PROC_BIND=spread

#run the application:
bash /pscratch/sd/a/aas445/code/assignment3/taScript.sh
