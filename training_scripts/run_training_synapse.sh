#!/bin/sh

DATASET_PATH=/cabinet/dataset/Synapse/NN-Unet/DATASET_Synapse_unetr_pp

export PYTHONPATH=.././
export RESULTS_FOLDER=/cabinet/yousef/Synapse-nnunet/output_synapse_lhunet_BEST_kernels_3_dec_5
export unetr_pp_preprocessed="$DATASET_PATH"/unetr_pp_raw/unetr_pp_raw_data/Task02_Synapse
export unetr_pp_raw_data_base="$DATASET_PATH"/unetr_pp_raw

python ../unetr_pp/run/run_training.py 3d_fullres unetr_pp_trainer_synapse 2 0
