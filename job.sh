#!/bin/bash
#SBATCH --job-name="sentimentclassifier"
#SBATCH --nodes=1
#SBATCH --ntasks=10
#SBATCH --time=00:05:00
#SBATCH --partition=normal

# load the software modules and set the environment
module load 2020
module load Python/3.8.2-GCCcore-9.3.0

# prepare the input

# best practices of changing working directory: home directory is slow
cp -r $HOME/run3 $TMPDIR
cd $TMPDIR

# run the main task
echo "The analysis will run"

srun a.out

# save your output
cp -r $TMPDIR/* ~/results

