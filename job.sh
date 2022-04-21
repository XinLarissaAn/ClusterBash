#!/bin/bash
#SBATCH --job-name="sentimentclassifier"
#SBATCH --nodes=1
#SBATCH --ntasks=10
#SBATCH --time=00:05:00
#SBATCH --partition=normal

# load the software modules and set the environment
module load 2020
module load Python/3.8.2-GCCcore-9.3.0
module load TensorFlow/2.3.1-foss-2020a-Python-3.8.2

# prepare the input
# best practices of changing working directory: home directory is slow
#cp -r /home/myfolder $TMPDIR
#cd $TMPDIR

# run the main task
echo "The analysis will start to run shortly"
python classifier.py dataset.json

# save your output
mkdir -p /home/myfolder/results
cp -r result.dat /home/myfolder/results


