#!/bin/bash

# for each folder inculding the prePro (X) and ProPro (Z)
for i in A C D E F G H I K L M N P Q R S T V Y W X Z
do
    # rewrite the list (delete current)
    rm -f 003_2klist_${i}.txt
    # write the files with one, two, and three digit numbering
    ls 001_${i}_fm2_wSC/?b_51.pdb    >> 003_2klist_${i}.txt
    ls 001_${i}_fm2_wSC/??b_51.pdb   >> 003_2klist_${i}.txt
    ls 001_${i}_fm2_wSC/???b_51.pdb  >> 003_2klist_${i}.txt
    ls 001_${i}_fm2_wSC/????b_51.pdb >> 003_2klist_${i}.txt
done

# add ../ to all the paths so that fixbb script works afterwards
sed -i 's/^001_/..\/001_/g' 003_2klist_*
