#!/usr/bin/env bash
DTU_TESTING="/home/linsc/dataset/dtu/"
# CKPT_FILE="./checkpoints/d192/d=160_ViewNum=3.ckpt"
CKPT_FILE="./checkpoints/d192/d=160_ViewNum=5_epoch=8.ckpt"
# CKPT_FILE="pre_trained.ckpt"
python eval.py --dataset=dtu_yao_eval --batch_size=1 --testpath=$DTU_TESTING --testlist lists/dtu/mini_test.txt --loadckpt $CKPT_FILE $@
