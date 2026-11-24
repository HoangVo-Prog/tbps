#!/bin/bash
DATASET_NAME="CUHK-PEDES"

CUDA_VISIBLE_DEVICES=0 \
python train.py \
--name irra \
--img_aug \
--batch_size 64 \
--dataset_name $DATASET_NAME \
--loss_names 'itc' \
--num_epoch 60 \
--root_dir ./data
