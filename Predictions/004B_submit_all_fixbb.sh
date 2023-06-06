#!/bin/bash

#SBATCH --job-name=fixbb
#SBATCH --partition=super
#SBATCH --nodes=1
#SBATCH --time=04-00:00:00
#SBATCH --output=single.%j.out
#SBATCH --error=single.%j.err

for listname in $( ls -1 003_*.txt ); do
    ## set output folder name
    listname_remove_end=${listname%.txt}
    amino_acid=${listname_remove_end#003_2klist_}
    outfolder=005_${amino_acid}_fm2_fixbb
    #change to fit your file path
    FIXBB_EXEC="/home/yiling/data/Sakshi/PDB/rosetta_src_3.13_bundle/rosetta_src_2021.16.61629_bundle/main/source/bin/fixbb.default.linuxgccrelease"
    DB="/home/yiling/data/Sakshi/PDB/rosetta_src_3.13_bundle/rosetta_src_2021.16.61629_bundle/main/database"

    cd $outfolder
    $FIXBB_EXEC -database $DB -in:file:list ../$listname -in:file:fullatom -resfile "/home/yiling/data/Sakshi/PDB/resfile.txt" -multi_cool_annealer 6 -nstruct 1 -ignore_zero_occupancy false -ignore_unrecognized_res -ex1 -ex2 -extrachi_cutoff 0 -linmem_ig 10
    cd ..
done
