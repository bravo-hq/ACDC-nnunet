#!/bin/sh

DATASET_PATH=/cabinet/dataset/ACDC/DATASET_Acdc

export PYTHONPATH=.././
export RESULTS_FOLDER=/cabinet/yousef/ACDC-nnunet/output_acdc_lhunet_res_coll_batch_2
export unetr_pp_preprocessed="$DATASET_PATH"/unetr_pp_raw/unetr_pp_raw_data/Task01_ACDC
export unetr_pp_raw_data_base="$DATASET_PATH"/unetr_pp_raw

python ../unetr_pp/run/run_training.py 3d_fullres unetr_pp_trainer_acdc 1 0 --continue_training
