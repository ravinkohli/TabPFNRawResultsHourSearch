#!/bin/bash

# Parameters
#SBATCH --cpus-per-task=1
#SBATCH --error=/work/dlclarge1/rkohli-results_tabpfn_180/results_noah/TabPFNRawResultsHourSearch/log_test/%j_0_log.err
#SBATCH --job-name=submitit
#SBATCH --mem-per-cpu=6000
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --open-mode=append
#SBATCH --output=/work/dlclarge1/rkohli-results_tabpfn_180/results_noah/TabPFNRawResultsHourSearch/log_test/%j_0_log.out
#SBATCH --partition=bosch_cpu-cascadelake
#SBATCH --signal=USR2@90
#SBATCH --time=60
#SBATCH --wckey=submitit

# command
export SUBMITIT_EXECUTOR=slurm
srun --unbuffered --output /work/dlclarge1/rkohli-results_tabpfn_180/results_noah/TabPFNRawResultsHourSearch/log_test/%j_%t_log.out --error /work/dlclarge1/rkohli-results_tabpfn_180/results_noah/TabPFNRawResultsHourSearch/log_test/%j_%t_log.err /home/rkohli/anaconda3/envs/tabpfn-env/bin/python -u -m submitit.core._submit /work/dlclarge1/rkohli-results_tabpfn_180/results_noah/TabPFNRawResultsHourSearch/log_test
