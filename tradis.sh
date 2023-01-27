#!/bin/sh
#PBS -lwalltime=04:00:00
#PBS -lselect=2:ncpus=16:mem=32gb

module load anaconda3/personal
#module load samtools/1.3.1
module load bio-bwa/0.7.15

source activate tradis
#source activate bioit

cd /rds/general/user/sam321/home/tnseq_isocost

export PATH="/rds/general/user/sam321/home/tools/samtools-1.15.1":$PATH

ReferenceKT2440="/rds/general/user/sam321/home/reference/KT2440/NC_002947.4.fasta"
ReferenceMG1655="/rds/general/user/sam321/home/reference/MG1655/sequence.fasta"

ProtKT2440="/rds/general/user/sam321/home/reference/KT2440/NC_002947.4.prot_table"
ProtMG1655="/rds/general/user/sam321/home/reference/MG1655/sequence.prot_table"

cd KT2440
bacteria_tradis -f fastq.txt -n 16 -r $ReferenceKT2440 
cd ../MG1655
bacteria_tradis -f fastq.txt -n 16 -r $ReferenceMG1655
cd ../KTChemo
bacteria_tradis -f fastq.txt -n 16 -r $ReferenceKT2440
cd ../MGChemo
bacteria_tradis -f fastq.txt -n 16 -r $ReferenceMG1655
cd ../essential
bacteria_tradis -f fastq.txt -n 16 -r $ReferenceKT2440
