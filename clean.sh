#!/bin/sh
#PBS -lwalltime=12:00:00
#PBS -lselect=1:ncpus=8:mem=16gb

module load anaconda3/personal

source activate clean
cd /rds/general/user/sam321/home/CLEAN/app
python CLEAN_infer_fasta.py --fasta_data PseudomonasputidaLPK411
