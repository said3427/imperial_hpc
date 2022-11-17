#!/bin/sh
#PBS -lwalltime=04:00:00
#PBS -lselect=1:ncpus=8:mem=16gb

module load anaconda3/personal
#module load samtools/1.3.1
module load bio-bwa/0.7.15

source activate bioit

cd /rds/general/user/sam321/home/tnseq_isocost

export PATH="/rds/general/user/sam321/home/tools/samtools-1.15.1":$PATH

ReferenceKT2440="/rds/general/user/sam321/home/reference/KT2440/NC_002947.4.fasta"
ReferenceMG1655="/rds/general/user/sam321/home/reference/MG1655/sequence.fasta"

ProtKT2440="/rds/general/user/sam321/home/reference/KT2440/NC_002947.4.prot_table"
ProtMG1655="/rds/general/user/sam321/home/reference/MG1655/sequence.prot_table"

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


java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 10 -w 10  bam/KT.chemo.1.bam  > bedgraph/KT.chemo.1.bedgraph
cut -f3,4 bedgraph/KT.chemo.1.bedgraph > wig/KT.chemo.1.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 10 -w 10  bam/KT.chemo.2.bam  > bedgraph/KT.chemo.2.bedgraph
cut -f3,4 bedgraph/KT.chemo.2.bedgraph > wig/KT.chemo.2.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 10 -w 10  bam/KT.chemo.3.bam  > bedgraph/KT.chemo.3.bedgraph
cut -f3,4 bedgraph/KT.chemo.3.bedgraph > wig/KT.chemo.3.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 10 -w 10  bam/KT.chemo.I1.bam  > bedgraph/KT.chemo.I1.bedgraph
cut -f3,4 bedgraph/KT.chemo.I1.bedgraph > wig/KT.chemo.I1.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 10 -w 10  bam/KT.chemo.I2.bam  > bedgraph/KT.chemo.I2.bedgraph
cut -f3,4 bedgraph/KT.chemo.I2.bedgraph > wig/KT.chemo.I2.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 10 -w 10  bam/KT.chemo.I3.bam  > bedgraph/KT.chemo.I3.bedgraph
cut -f3,4 bedgraph/KT.chemo.I3.bedgraph > wig/KT.chemo.I3.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 10 -w 10  bam/MG.chemo.1.bam  > bedgraph/MG.chemo.1.bedgraph
cut -f3,4 bedgraph/MG.chemo.1.bedgraph > wig/MG.chemo.1.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 10 -w 10  bam/MG.chemo.2.bam  > bedgraph/MG.chemo.2.bedgraph
cut -f3,4 bedgraph/MG.chemo.2.bedgraph > wig/MG.chemo.2.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 10 -w 10  bam/MG.chemo.3.bam  > bedgraph/MG.chemo.3.bedgraph
cut -f3,4 bedgraph/MG.chemo.3.bedgraph > wig/MG.chemo.3.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 10 -w 10  bam/MG.chemo.I1.bam  > bedgraph/MG.chemo.I1.bedgraph
cut -f3,4 bedgraph/MG.chemo.I1.bedgraph > wig/MG.chemo.I1.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 10 -w 10  bam/MG.chemo.I2.bam  > bedgraph/MG.chemo.I2.bedgraph
cut -f3,4 bedgraph/MG.chemo.I2.bedgraph > wig/MG.chemo.I2.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 10 -w 10  bam/MG.chemo.I3.bam  > bedgraph/MG.chemo.I3.bedgraph
cut -f3,4 bedgraph/MG.chemo.I3.bedgraph > wig/MG.chemo.I3.wig

cd wig

transit convert gff_to_prot_table /rds/general/user/sam321/home/reference/MG1655/sequence.gff3 /rds/general/user/sam321/home/reference/MG1655/sequence.prot_table

transit resampling KT.chemo.1.wig,KT.chemo.2.wig,KT.chemo.3.wig KT.chemo.I1.wig,KT.chemo.I2.wig,KT.chemo.I3.wig $ProtKT2440 KT_chemo_InducedvsKT_chemo_NoInduced.resampling.txt -a
transit resampling MG.chemo.1.wig,MG.chemo.2.wig,MG.chemo.3.wig MG.chemo.I1.wig,MG.chemo.I2.wig,MG.chemo.I3.wig $ProtMG1655 MG_chemo_InducedvsMG_chemo_NoInduced.resampling.txt -a
#