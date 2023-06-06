# FrederickLab

Ramachandran Plot - Create a map of phi/psi angle pairings from prediction data /n
1D Prediction Generator - Create a 1D prediction with differently colored secondary regions /n
Predition /n
/t 000_make_folders.sh - makes folders for PDB files /n
/t 000_submit_fm2_allFolders.sh - submits request to flexible meccano to generate statistical ensemble /n
/t 002_make_the2klists.sh - combines pdbs into 1 file (2k refers to 2000 structures; change if needed) /n
/t 004A_make_fixbb_folders.sh - make folders for corrected sidechains /n
/t 004B_submit_all_fixbb.sh - runs fixbb from Rosetta Commons to optimize sidechain configuration /n
/t 006_make_cs_folder.sh - make folders to hold chemical shift predicitons /n
/t 007_submit_predisct_cs.sh - submit ensemble from 005 folders to PPM_One to get chemical shifts /n
/t 009_make_joined_rama_cs_folders.sh - make folders to hold files that zip together phi/psi angles and chemical shifts /n
/t 010_run_all_joined_dihedral_cs.py - combines phi/psi of residue of interest with its predicted chemical shift
