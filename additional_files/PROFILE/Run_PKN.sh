#!/bin/sh

ulimit -n 3000

model=PKN

# Plot only values for model output nodes (dead-end nodes regulated by inhibitors/activators but not regulating any other node) are saved 
sim_case=GDSC_mutasMutants_RNAasTrans_PKN

listin="TNFa:0.5,EGF:0.5,IL6:0.5,IGF_1:0.5"
listout="Survival,MYC,Cell_cycle,Caspase8,Caspase9"

python3 Scripts/Simulations/MaBoSS_specific.py $model -sy Linux -p 2 "results_"$sim_case".txt" -i $listin -o $listout -s $sim_case -m "Results/Profiles/PKN_CL_GDSC_mutations_prost.csv" -rb "Results/Profiles/PKN_CL_GDSC_RNA_norm_prost.csv" -rf 100

