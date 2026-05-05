#!/bin/bash
T=1000
n_obs=2
normalize=false
script_name="./bin/generate_data.py"
smnr=20.0

for N in 500
do
    python3.8 ${script_name} \
    --n_states 3 \
    --n_obs ${n_obs} \
    --num_samples $N \
    --sequence_length $T \
    --sigma_e2_dB -10.0 \
    --smnr_dB $smnr \
    --dataset_type LorenzSSMrn${n_obs} \
    --normalize ${normalize} \
    --output_path ./data/synthetic_data/ 
done