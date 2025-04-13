#!/bin/sh
#SBATCH --job-name=elco_eval
#SBATCH --gpus=h100-47:1
#SBATCH --time=3:00:00
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=roald.ong@gmail.com

source ~/venv/bin/activate

srun python3 elco_eval.py roberta-base