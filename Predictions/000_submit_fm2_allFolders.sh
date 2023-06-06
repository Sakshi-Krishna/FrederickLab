#!/bin/bash

#SBATCH --job-name=fm2
#SBATCH --partition=super
#SBATCH --nodes=1
#SBATCH --time=01-00:00:00
#SBATCH --output=single.%j.out
#SBATCH --error=single.%j.err

for i in $( ls -1d 001_* ) ; do
    cd $i
    pwd
    sh submit_fm2.sh
    cd ..
done
