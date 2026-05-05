#!/bin/bash
n_states=3
n_obs=2
N=1000
T=100
dataset_type="LorenzSSMrn${n_obs}"
model_type="gru"
n_sup=20
script_name="main_danse_semisupervised_opt.py"
smnr=10.0

for sigma_e2_dB in -20.0 -10.0 -5.0 0.0 5.0
do
	python3.7 ${script_name} \
	--mode train \
	--rnn_model_type ${model_type} \
	--dataset_type ${dataset_type} \
	--n_sup ${n_sup} \
	--datafile ./data/synthetic_data/trajectories_m_${n_states}_n_${n_obs}_${dataset_type}_data_T_${T}_N_${N}_sigmae2_${sigma_e2_dB}dB_smnr_$(echo $smnr)dB.pkl \
	--splits ./data/synthetic_data/splits_m_${n_states}_n_${n_obs}_${dataset_type}_data_T_${T}_N_${N}_sigmae2_${sigma_e2_dB}dB_smnr_$(echo $smnr)dB.pkl
done
