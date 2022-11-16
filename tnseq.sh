#!/bin/sh
#PBS -lwalltime=04:00:00
#PBS -lselect=1:ncpus=8:mem=16gb

module load anaconda3/personal

source activate bioit

cd /rds/general/user/sam321/home/tnseq_isocost

export PATH="/rds/general/user/sam321/home/samtools-1.15.1":$PATH

ReferenceKT2440="/rds/general/user/sam321/home/reference/KT2440/NC_002947.4.fasta"
ReferenceMG1655="/rds/general/user/sam321/home/reference/MG1655/sequence.fasta"

bwa mem -t 8 $ReferenceKT2440 KTChemo/KT.chemo.1.R1.fastq.gz KTChemo/KT.chemo.1.R2.fastq.gz | samtools sort -@8 -o bam/KT.chemo.1.bam -
bwa mem -t 8 $ReferenceKT2440 KTChemo/KT.chemo.2.R1.fastq.gz KTChemo/KT.chemo.2.R2.fastq.gz | samtools sort -@8 -o bam/KT.chemo.2.bam -
bwa mem -t 8 $ReferenceKT2440 KTChemo/KT.chemo.3.R1.fastq.gz KTChemo/KT.chemo.3.R2.fastq.gz | samtools sort -@8 -o bam/KT.chemo.3.bam -
bwa mem -t 8 $ReferenceKT2440 KTChemo/KT.chemo.I1.R1.fastq.gz KTChemo/KT.chemo.I1.R2.fastq.gz | samtools sort -@8 -o bam/KT.chemo.I1.bam -
bwa mem -t 8 $ReferenceKT2440 KTChemo/KT.chemo.I2.R1.fastq.gz KTChemo/KT.chemo.I2.R2.fastq.gz | samtools sort -@8 -o bam/KT.chemo.I2.bam -
bwa mem -t 8 $ReferenceKT2440 KTChemo/KT.chemo.I3.R1.fastq.gz KTChemo/KT.chemo.I3.R2.fastq.gz | samtools sort -@8 -o bam/KT.chemo.I3.bam -

bwa mem -t 8 $ReferenceMG1655 MGChemo/MG.chemo.1.R1.fastq.gz MGChemo/KT.chemo.1.R2.fastq.gz | samtools sort -@8 -o bam/MG.chemo.1.bam -
bwa mem -t 8 $ReferenceMG1655 MGChemo/MG.chemo.2.R1.fastq.gz MGChemo/KT.chemo.2.R2.fastq.gz | samtools sort -@8 -o bam/MG.chemo.2.bam -
bwa mem -t 8 $ReferenceMG1655 MGChemo/MG.chemo.3.R1.fastq.gz MGChemo/KT.chemo.3.R2.fastq.gz | samtools sort -@8 -o bam/MG.chemo.3.bam -
bwa mem -t 8 $ReferenceMG1655 MGChemo/MG.chemo.I1.R1.fastq.gz MGChemo/KT.chemo.I1.R2.fastq.gz | samtools sort -@8 -o bam/MG.chemo.I1.bam -
bwa mem -t 8 $ReferenceMG1655 MGChemo/MG.chemo.I2.R1.fastq.gz MGChemo/KT.chemo.I2.R2.fastq.gz | samtools sort -@8 -o bam/MG.chemo.I2.bam -
bwa mem -t 8 $ReferenceMG1655 MGChemo/MG.chemo.I3.R1.fastq.gz MGChemo/KT.chemo.I3.R2.fastq.gz | samtools sort -@8 -o bam/MG.chemo.I3.bam -
