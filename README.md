# Permutation clustermass analysis with bwboundaries

This script will take WT output as generated from the runCwtCsd.m function. It's expecting files to be name like this: "MKO03_gapASSR_2_WT.mat". 

Where MKO is the group name, MKO03 is the subject ID, gapASSR is the condition, and 2 is the stim from that condition's stim list.

"MKO03_Tonotopy_8_WT.mat" for example would be the subject MKO03 for it's tonotopy condition where 8 kHz was being presented. WT are really big so it had to be parsed for space. This should all be adjustable in the code to call what your data is saved as. 

group files and StimVariableMAG should be altered to match your data

If this code is used, please also cite Jeff's paper: https://www.sciencedirect.com/science/article/abs/pii/S0197458022001762?via%3Dihub (Nicotine reduces age-related changes in cortical neural oscillations without affecting auditory brainstem responses)
