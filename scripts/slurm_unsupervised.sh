#!/bin/sh
#SBATCH --job-name=elco_eval
#SBATCH --gpus=h100-47:1
#SBATCH --time=3:00:00
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=roald.ong@gmail.com

huggingface_path=/home/r/roald/hfcache
# model_name=bert-base
# model_name=bart-large
# model_name=roberta-large
model_name=roberta-base

source ~/venv/bin/activate
# . /home/r/roald/ELCo/venv/bin/activate



export CUDA_VISIBLE_DEVICES=0

srun python scripts/emote.py --finetune 0 --model_name $model_name --portion 1 --hfpath $huggingface_path