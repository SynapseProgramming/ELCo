#!/bin/sh
#SBATCH --job-name=elco_eval
#SBATCH --gpus=h100-47:1
#SBATCH --time=3:00:00
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=roald.ong@gmail.com

huggingface_path=/home/r/roald/hfcache
# model_name=bert-base
model_name=bart-large
# model_name=roberta-large
# model_name=roberta-base

export CUDA_VISIBLE_DEVICES=1

for seed in 43 44 45 46 47
do
    srun python scripts/emote.py --finetune 1 --model_name $model_name --portion 1 --seed $seed --hfpath $huggingface_path
done
