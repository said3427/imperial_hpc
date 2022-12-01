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

#bwa mem -t 8 $ReferenceKT2440 KTChemo/KT.chemo.1.R1.fastq.gz KTChemo/KT.chemo.1.R2.fastq.gz | samtools sort -@8 -o bam/KT.chemo.1.bam -
#bwa mem -t 8 $ReferenceKT2440 KTChemo/KT.chemo.2.R1.fastq.gz KTChemo/KT.chemo.2.R2.fastq.gz | samtools sort -@8 -o bam/KT.chemo.2.bam -
#bwa mem -t 8 $ReferenceKT2440 KTChemo/KT.chemo.3.R1.fastq.gz KTChemo/KT.chemo.3.R2.fastq.gz | samtools sort -@8 -o bam/KT.chemo.3.bam -
#bwa mem -t 8 $ReferenceKT2440 KTChemo/KT.chemo.I1.R1.fastq.gz KTChemo/KT.chemo.I1.R2.fastq.gz | samtools sort -@8 -o bam/KT.chemo.I1.bam -
#bwa mem -t 8 $ReferenceKT2440 KTChemo/KT.chemo.I2.R1.fastq.gz KTChemo/KT.chemo.I2.R2.fastq.gz | samtools sort -@8 -o bam/KT.chemo.I2.bam -
#bwa mem -t 8 $ReferenceKT2440 KTChemo/KT.chemo.I3.R1.fastq.gz KTChemo/KT.chemo.I3.R2.fastq.gz | samtools sort -@8 -o bam/KT.chemo.I3.bam -

#bwa mem -t 8 $ReferenceMG1655 MGChemo/MG.chemo.1.R1.fastq.gz MGChemo/KT.chemo.1.R2.fastq.gz | samtools sort -@8 -o bam/MG.chemo.1.bam -
#bwa mem -t 8 $ReferenceMG1655 MGChemo/MG.chemo.2.R1.fastq.gz MGChemo/KT.chemo.2.R2.fastq.gz | samtools sort -@8 -o bam/MG.chemo.2.bam -
#bwa mem -t 8 $ReferenceMG1655 MGChemo/MG.chemo.3.R1.fastq.gz MGChemo/KT.chemo.3.R2.fastq.gz | samtools sort -@8 -o bam/MG.chemo.3.bam -
#bwa mem -t 8 $ReferenceMG1655 MGChemo/MG.chemo.I1.R1.fastq.gz MGChemo/KT.chemo.I1.R2.fastq.gz | samtools sort -@8 -o bam/MG.chemo.I1.bam -
#bwa mem -t 8 $ReferenceMG1655 MGChemo/MG.chemo.I2.R1.fastq.gz MGChemo/KT.chemo.I2.R2.fastq.gz | samtools sort -@8 -o bam/MG.chemo.I2.bam -
#bwa mem -t 8 $ReferenceMG1655 MGChemo/MG.chemo.I3.R1.fastq.gz MGChemo/KT.chemo.I3.R2.fastq.gz | samtools sort -@8 -o bam/MG.chemo.I3.bam -

#bwa mem -t 8 $ReferenceKT2440 KT2440/KT.H.1.R1.fastq.gz KT2440/KT.H.1.R2.fastq.gz | samtools sort -@8 -o bam/KT.H.1.bam -
#bwa mem -t 8 $ReferenceKT2440 KT2440/KT.H.2.R1.fastq.gz KT2440/KT.H.2.R2.fastq.gz | samtools sort -@8 -o bam/KT.H.2.bam -
#bwa mem -t 8 $ReferenceKT2440 KT2440/KT.H.3.R1.fastq.gz KT2440/KT.H.3.R2.fastq.gz | samtools sort -@8 -o bam/KT.H.3.bam -
#bwa mem -t 8 $ReferenceKT2440 KT2440/KT.L.1.R1.fastq.gz KT2440/KT.L.1.R2.fastq.gz | samtools sort -@8 -o bam/KT.L.1.bam -
#bwa mem -t 8 $ReferenceKT2440 KT2440/KT.L.2.R1.fastq.gz KT2440/KT.L.2.R2.fastq.gz | samtools sort -@8 -o bam/KT.L.2.bam -
#bwa mem -t 8 $ReferenceKT2440 KT2440/KT.L.3.R1.fastq.gz KT2440/KT.L.3.R2.fastq.gz | samtools sort -@8 -o bam/KT.L.3.bam -

#bwa mem -t 8 $ReferenceMG1655 MG1655/MG.H.1.R1.fastq.gz MG1655/MG.H.1.R2.fastq.gz | samtools sort -@8 -o bam/MG.H.1.bam -
#bwa mem -t 8 $ReferenceMG1655 MG1655/MG.H.2.R1.fastq.gz MG1655/MG.H.2.R2.fastq.gz | samtools sort -@8 -o bam/MG.H.2.bam -
#bwa mem -t 8 $ReferenceMG1655 MG1655/MG.H.3.R1.fastq.gz MG1655/MG.H.3.R2.fastq.gz | samtools sort -@8 -o bam/MG.H.3.bam -
#bwa mem -t 8 $ReferenceMG1655 MG1655/MG.L.1.R1.fastq.gz MG1655/MG.L.1.R2.fastq.gz | samtools sort -@8 -o bam/MG.L.1.bam -
#bwa mem -t 8 $ReferenceMG1655 MG1655/MG.L.2.R1.fastq.gz MG1655/MG.L.2.R2.fastq.gz | samtools sort -@8 -o bam/MG.L.2.bam -
#bwa mem -t 8 $ReferenceMG1655 MG1655/MG.L.3.R1.fastq.gz MG1655/MG.L.3.R2.fastq.gz | samtools sort -@8 -o bam/MG.L.3.bam -

#bwa mem -t 8 $ReferenceKT2440 KT2440/KT.H.I1.R1.fastq.gz KT2440/KT.H.I1.R2.fastq.gz | samtools sort -@8 -o bam/KT.H.I1.bam -
#bwa mem -t 8 $ReferenceKT2440 KT2440/KT.H.I2.R1.fastq.gz KT2440/KT.H.I2.R2.fastq.gz | samtools sort -@8 -o bam/KT.H.I2.bam -
#bwa mem -t 8 $ReferenceKT2440 KT2440/KT.H.I3.R1.fastq.gz KT2440/KT.H.I3.R2.fastq.gz | samtools sort -@8 -o bam/KT.H.I3.bam -
#bwa mem -t 8 $ReferenceKT2440 KT2440/KT.L.I1.R1.fastq.gz KT2440/KT.L.I1.R2.fastq.gz | samtools sort -@8 -o bam/KT.L.I1.bam -
#bwa mem -t 8 $ReferenceKT2440 KT2440/KT.L.I2.R1.fastq.gz KT2440/KT.L.I2.R2.fastq.gz | samtools sort -@8 -o bam/KT.L.I2.bam -
#bwa mem -t 8 $ReferenceKT2440 KT2440/KT.L.I3.R1.fastq.gz KT2440/KT.L.I3.R2.fastq.gz | samtools sort -@8 -o bam/KT.L.I3.bam -

#bwa mem -t 8 $ReferenceMG1655 MG1655/MG.H.I1.R1.fastq.gz MG1655/MG.H.I1.R2.fastq.gz | samtools sort -@8 -o bam/MG.H.I1.bam -
#bwa mem -t 8 $ReferenceMG1655 MG1655/MG.H.I2.R1.fastq.gz MG1655/MG.H.I2.R2.fastq.gz | samtools sort -@8 -o bam/MG.H.I2.bam -
#bwa mem -t 8 $ReferenceMG1655 MG1655/MG.H.I3.R1.fastq.gz MG1655/MG.H.I3.R2.fastq.gz | samtools sort -@8 -o bam/MG.H.I3.bam -
#bwa mem -t 8 $ReferenceMG1655 MG1655/MG.L.I1.R1.fastq.gz MG1655/MG.L.I1.R2.fastq.gz | samtools sort -@8 -o bam/MG.L.I1.bam -
#bwa mem -t 8 $ReferenceMG1655 MG1655/MG.L.I2.R1.fastq.gz MG1655/MG.L.I2.R2.fastq.gz | samtools sort -@8 -o bam/MG.L.I2.bam -
#bwa mem -t 8 $ReferenceMG1655 MG1655/MG.L.I3.R1.fastq.gz MG1655/MG.L.I3.R2.fastq.gz | samtools sort -@8 -o bam/MG.L.I3.bam -

#bwa mem -t 8 $ReferenceKT2440 essential/citrate.1.R1.fastq.gz essential/citrate.1.R2.fastq.gz | samtools sort -@8 -o bam/citrate.1.bam -
#bwa mem -t 8 $ReferenceKT2440 essential/citrate.2.R1.fastq.gz essential/citrate.2.R2.fastq.gz | samtools sort -@8 -o bam/citrate.2.bam -
#bwa mem -t 8 $ReferenceKT2440 essential/citrate.3.R1.fastq.gz essential/citrate.3.R2.fastq.gz | samtools sort -@8 -o bam/citrate.3.bam -

#bwa mem -t 8 $ReferenceKT2440 essential/glucose.1.R1.fastq.gz essential/glucose.1.R2.fastq.gz | samtools sort -@8 -o bam/glucose.1.bam -
#bwa mem -t 8 $ReferenceKT2440 essential/glucose.2.R1.fastq.gz essential/glucose.2.R2.fastq.gz | samtools sort -@8 -o bam/glucose.2.bam -
#bwa mem -t 8 $ReferenceKT2440 essential/glucose.3.R1.fastq.gz essential/glucose.3.R2.fastq.gz | samtools sort -@8 -o bam/glucose.3.bam -

#bwa mem -t 8 $ReferenceKT2440 essential/parahydroxybenzoate.1.R1.fastq.gz essential/parahydroxybenzoate.1.R2.fastq.gz | samtools sort -@8 -o bam/parahydroxybenzoate.1.bam -
#bwa mem -t 8 $ReferenceKT2440 essential/parahydroxybenzoate.2.R1.fastq.gz essential/parahydroxybenzoate.2.R2.fastq.gz | samtools sort -@8 -o bam/parahydroxybenzoate.2.bam -
#bwa mem -t 8 $ReferenceKT2440 essential/parahydroxybenzoate.3.R1.fastq.gz essential/parahydroxybenzoate.3.R2.fastq.gz | samtools sort -@8 -o bam/parahydroxybenzoate.3.bam -
#bwa mem -t 8 $ReferenceKT2440 essential/parahydroxybenzoate.P1.R1.fastq.gz essential/parahydroxybenzoate.P1.R2.fastq.gz | samtools sort -@8 -o bam/parahydroxybenzoate.P1.bam -
#bwa mem -t 8 $ReferenceKT2440 essential/parahydroxybenzoate.P2.R1.fastq.gz essential/parahydroxybenzoate.P2.R2.fastq.gz | samtools sort -@8 -o bam/parahydroxybenzoate.P2.bam -
#bwa mem -t 8 $ReferenceKT2440 essential/parahydroxybenzoate.P3.R1.fastq.gz essential/parahydroxybenzoate.P3.R2.fastq.gz | samtools sort -@8 -o bam/parahydroxybenzoate.P3.bam -

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/KT.chemo.1.bam  > bedgraph/KT.chemo.1.bedgraph
cut -f3,4 bedgraph/KT.chemo.1.bedgraph > wig/KT.chemo.1.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/KT.chemo.2.bam  > bedgraph/KT.chemo.2.bedgraph
cut -f3,4 bedgraph/KT.chemo.2.bedgraph > wig/KT.chemo.2.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/KT.chemo.3.bam  > bedgraph/KT.chemo.3.bedgraph
cut -f3,4 bedgraph/KT.chemo.3.bedgraph > wig/KT.chemo.3.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/KT.chemo.I1.bam  > bedgraph/KT.chemo.I1.bedgraph
cut -f3,4 bedgraph/KT.chemo.I1.bedgraph > wig/KT.chemo.I1.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/KT.chemo.I2.bam  > bedgraph/KT.chemo.I2.bedgraph
cut -f3,4 bedgraph/KT.chemo.I2.bedgraph > wig/KT.chemo.I2.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/KT.chemo.I3.bam  > bedgraph/KT.chemo.I3.bedgraph
cut -f3,4 bedgraph/KT.chemo.I3.bedgraph > wig/KT.chemo.I3.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/MG.chemo.1.bam  > bedgraph/MG.chemo.1.bedgraph
cut -f3,4 bedgraph/MG.chemo.1.bedgraph > wig/MG.chemo.1.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/MG.chemo.2.bam  > bedgraph/MG.chemo.2.bedgraph
cut -f3,4 bedgraph/MG.chemo.2.bedgraph > wig/MG.chemo.2.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/MG.chemo.3.bam  > bedgraph/MG.chemo.3.bedgraph
cut -f3,4 bedgraph/MG.chemo.3.bedgraph > wig/MG.chemo.3.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/MG.chemo.I1.bam  > bedgraph/MG.chemo.I1.bedgraph
cut -f3,4 bedgraph/MG.chemo.I1.bedgraph > wig/MG.chemo.I1.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/MG.chemo.I2.bam  > bedgraph/MG.chemo.I2.bedgraph
cut -f3,4 bedgraph/MG.chemo.I2.bedgraph > wig/MG.chemo.I2.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/MG.chemo.I3.bam  > bedgraph/MG.chemo.I3.bedgraph
cut -f3,4 bedgraph/MG.chemo.I3.bedgraph > wig/MG.chemo.I3.wigI

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/KT.H.1.bam  > bedgraph/KT.H.1.bedgraph
cut -f3,4 bedgraph/KT.H.1.bedgraph > wig/KT.H.1.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/KT.H.2.bam  > bedgraph/KT.H.2.bedgraph
cut -f3,4 bedgraph/KT.H.2.bedgraph > wig/KT.H.2.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/KT.H.3.bam  > bedgraph/KT.H.3.bedgraph
cut -f3,4 bedgraph/KT.H.3.bedgraph > wig/KT.H.3.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/KT.H.I1.bam  > bedgraph/KT.H.I1.bedgraph
cut -f3,4 bedgraph/KT.H.I1.bedgraph > wig/KT.H.I1.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/KT.H.I2.bam  > bedgraph/KT.H.I2.bedgraph
cut -f3,4 bedgraph/KT.H.I2.bedgraph > wig/KT.H.I2.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/KT.H.I3.bam  > bedgraph/KT.H.I3.bedgraph
cut -f3,4 bedgraph/KT.H.I3.bedgraph > wig/KT.H.I3.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/MG.H.1.bam  > bedgraph/MG.H.1.bedgraph
cut -f3,4 bedgraph/MG.H.1.bedgraph > wig/MG.H.1.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/MG.H.2.bam  > bedgraph/MG.H.2.bedgraph
cut -f3,4 bedgraph/MG.H.2.bedgraph > wig/MG.H.2.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/MG.H.3.bam  > bedgraph/MG.H.3.bedgraph
cut -f3,4 bedgraph/MG.H.3.bedgraph > wig/MG.H.3.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/MG.H.I1.bam  > bedgraph/MG.H.I1.bedgraph
cut -f3,4 bedgraph/MG.H.I1.bedgraph > wig/MG.H.I1.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/MG.H.I2.bam  > bedgraph/MG.H.I2.bedgraph
cut -f3,4 bedgraph/MG.H.I2.bedgraph > wig/MG.H.I2.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/MG.H.I3.bam  > bedgraph/MG.H.I3.bedgraph
cut -f3,4 bedgraph/MG.H.I3.bedgraph > wig/MG.H.I3.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/KT.L.1.bam  > bedgraph/KT.L.1.bedgraph
cut -f3,4 bedgraph/KT.L.1.bedgraph > wig/KT.L.1.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/KT.L.2.bam  > bedgraph/KT.L.2.bedgraph
cut -f3,4 bedgraph/KT.L.2.bedgraph > wig/KT.L.2.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/KT.L.3.bam  > bedgraph/KT.L.3.bedgraph
cut -f3,4 bedgraph/KT.L.3.bedgraph > wig/KT.L.3.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/KT.L.I1.bam  > bedgraph/KT.L.I1.bedgraph
cut -f3,4 bedgraph/KT.L.I1.bedgraph > wig/KT.L.I1.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/KT.L.I2.bam  > bedgraph/KT.L.I2.bedgraph
cut -f3,4 bedgraph/KT.L.I2.bedgraph > wig/KT.L.I2.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/KT.L.I3.bam  > bedgraph/KT.L.I3.bedgraph
cut -f3,4 bedgraph/KT.L.I3.bedgraph > wig/KT.L.I3.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/glucose.1.bam  > bedgraph/glucose.1.bedgraph
cut -f3,4 bedgraph/glucose.1.bedgraph > wig/glucose.1.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/glucose.2.bam  > bedgraph/glucose.2.bedgraph
cut -f3,4 bedgraph/glucose.2.bedgraph > wig/glucose.2.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/glucose.3.bam  > bedgraph/glucose.3.bedgraph
cut -f3,4 bedgraph/glucose.3.bedgraph > wig/glucose.3.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/citrate.1.bam  > bedgraph/citrate.1.bedgraph
cut -f3,4 bedgraph/citrate.1.bedgraph > wig/citrate.1.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/citrate.2.bam  > bedgraph/citrate.2.bedgraph
cut -f3,4 bedgraph/citrate.2.bedgraph > wig/citrate.2.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/citrate.3.bam  > bedgraph/citrate.3.bedgraph
cut -f3,4 bedgraph/citrate.3.bedgraph > wig/citrate.3.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/parahydroxybenzoate.P1.bam  > bedgraph/parahydroxybenzoate.P1.bedgraph
cut -f3,4 bedgraph/parahydroxybenzoate.P1.bedgraph > wig/parahydroxybenzoate.P1.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/parahydroxybenzoate.P2.bam  > bedgraph/parahydroxybenzoate.P2.bedgraph
cut -f3,4 bedgraph/parahydroxybenzoate.P2.bedgraph > wig/parahydroxybenzoate.P2.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/parahydroxybenzoate.P3.bam  > bedgraph/parahydroxybenzoate.P3.bedgraph
cut -f3,4 bedgraph/parahydroxybenzoate.P3.bedgraph > wig/parahydroxybenzoate.P3.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/parahydroxybenzoate.1.bam  > bedgraph/parahydroxybenzoate.1.bedgraph
cut -f3,4 bedgraph/parahydroxybenzoate.1.bedgraph > wig/parahydroxybenzoate.1.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/parahydroxybenzoate.2.bam  > bedgraph/parahydroxybenzoate.2.bedgraph
cut -f3,4 bedgraph/parahydroxybenzoate.2.bedgraph > wig/parahydroxybenzoate.2.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/parahydroxybenzoate.3.bam  > bedgraph/parahydroxybenzoate.3.bedgraph
cut -f3,4 bedgraph/parahydroxybenzoate.3.bedgraph > wig/parahydroxybenzoate.3.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/MG.L.1.bam  > bedgraph/MG.L.1.bedgraph
cut -f3,4 bedgraph/MG.L.1.bedgraph > wig/MG.L.1.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/MG.L.2.bam  > bedgraph/MG.L.2.bedgraph
cut -f3,4 bedgraph/MG.L.2.bedgraph > wig/MG.L.2.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/MG.L.3.bam  > bedgraph/MG.L.3.bedgraph
cut -f3,4 bedgraph/MG.L.3.bedgraph > wig/MG.L.3.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/MG.L.I1.bam  > bedgraph/MG.L.I1.bedgraph
cut -f3,4 bedgraph/MG.L.I1.bedgraph > wig/MG.L.I1.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/MG.L.I2.bam  > bedgraph/MG.L.I2.bedgraph
cut -f3,4 bedgraph/MG.L.I2.bedgraph > wig/MG.L.I2.wig

java -jar /rds/general/user/sam321/home/tools/jvarkit/dist/bam2wig.jar -bg -s 1 -w 1  bam/MG.L.I3.bam  > bedgraph/MG.L.I3.bedgraph
cut -f3,4 bedgraph/MG.L.I3.bedgraph > wig/MG.L.I3.wig

cd wig

#transit convert gff_to_prot_table /rds/general/user/sam321/home/reference/MG1655/sequence.gff3 /rds/general/user/sam321/home/reference/MG1655/sequence.prot_table

transit resampling KT.chemo.1.wig,KT.chemo.2.wig,KT.chemo.3.wig KT.chemo.I1.wig,KT.chemo.I2.wig,KT.chemo.I3.wig $ProtKT2440 KT_chemo_InducedvsKT_chemo_NoInduced.resampling.txt -a
transit resampling MG.chemo.1.wig,MG.chemo.2.wig,MG.chemo.3.wig MG.chemo.I1.wig,MG.chemo.I2.wig,MG.chemo.I3.wig $ProtMG1655 MG_chemo_InducedvsMG_chemo_NoInduced.resampling.txt -a
transit resampling KT.H.1.wig,KT.H.2.wig,KT.H.3.wig KT.H.I1.wig,KT.H.I2.wig,KT.H.I3.wig $ProtKT2440 KT_H_InducedvsKT_H_NoInduced.resampling.txt -a
transit resampling MG.H.1.wig,MG.H.2.wig,MG.H.3.wig MG.H.I1.wig,MG.H.I2.wig,MG.H.I3.wig $ProtMG1655 MG_H_InducedvsMG_H_NoInduced.resampling.txt -a
transit resampling KT.L.1.wig,KT.L.2.wig,KT.L.3.wig KT.L.I1.wig,KT.L.I2.wig,KT.L.I3.wig $ProtKT2440 KT_L_InducedvsKT_L_NoInduced.resampling.txt -a
transit resampling MG.L.1.wig,MG.L.2.wig,MG.L.3.wig MG.L.I1.wig,MG.L.I2.wig,MG.L.I3.wig $ProtMG1655 MG_L_InducedvsMG_L_NoInduced.resampling.txt -a

transit resampling citrate.1.wig,citrate.2.wig,citrate.3.wig glucose.1.wig,glucose.2.wig,glucose.3.wig $ProtKT2440 citratevsGlucose.resampling.txt -a
transit resampling parahydroxybenzoate.1.wig,parahydroxybenzoate.2.wig,parahydroxybenzoate.3.wig glucose.1.wig,glucose.2.wig,glucose.3.wig $ProtKT2440 parahydroxybenzoatevsGlucose.resampling.txt -a
transit resampling parahydroxybenzoate.1.wig,parahydroxybenzoate.2.wig,parahydroxybenzoate.3.wig parahydroxybenzoate.P1.wig,parahydroxybenzoate.P2.wig,parahydroxybenzoate.P3.wig $ProtKT2440 parahydroxybenzoatevsParahydroxybenzoateP.resampling.txt -a

transit tn5gaps KT.chemo.1.wig,KT.chemo.2.wig,KT.chemo.3.wig $ProtKT2440 KT.chemo.tn5gaps.txt -m 10 -r Mean -iN 5 -iC 5
transit tn5gaps MG.chemo.1.wig,MG.chemo.2.wig,MG.chemo.3.wig $ProtMG1655 MG.chemo.tn5gaps.txt -m 10 -r Mean -iN 5 -iC 5
transit tn5gaps KT.H.1.wig,KT.H.2.wig,KT.H.3.wig $ProtKT2440 KT.H.tn5gaps.txt -m 10 -r Mean -iN 5 -iC 5
transit tn5gaps MG.H.1.wig,MG.H.2.wig,MG.H.3.wig $ProtMG1655 MG.H.tn5gaps.txt -m 10 -r Mean -iN 5 -iC 5
transit tn5gaps KT.L.1.wig,KT.L.2.wig,KT.L.3.wig $ProtKT2440 KT.L.tn5gaps.txt -m 10 -r Mean -iN 5 -iC 5
transit tn5gaps MG.L.1.wig,MG.L.2.wig,MG.L.3.wig $ProtMG1655 MG.L.tn5gaps.txt -m 10 -r Mean -iN 5 -iC 5
transit tn5gaps citrate.1.wig,citrate.2.wig,citrate.3.wig $ProtKT2440 citrate.tn5gaps.txt -m 10 -r Mean -iN 5 -iC 5
transit tn5gaps KT.chemo.I1.wig,KT.chemo.I2.wig,KT.chemo.I3.wig $ProtKT2440 KT.chemo.I.tn5gaps.txt -m 10 -r Mean -iN 5 -iC 5
transit tn5gaps MG.chemo.I1.wig,MG.chemo.I2.wig,MG.chemo.I3.wig $ProtMG1655 MG.chemo.I.tn5gaps.txt -m 10 -r Mean -iN 5 -iC 5
transit tn5gaps KT.H.I1.wig,KT.H.I2.wig,KT.H.I3.wig $ProtKT2440 KT.H.I.tn5gaps.txt -m 10 -r Mean -iN 5 -iC 5
transit tn5gaps MG.H.I1.wig,MG.H.I2.wig,MG.H.I3.wig $ProtMG1655 MG.H.I.tn5gaps.txt -m 10 -r Mean -iN 5 -iC 5
transit tn5gaps KT.L.I1.wig,KT.L.I2.wig,KT.L.I3.wig $ProtKT2440 KT.L.I.tn5gaps.txt -m 10 -r Mean -iN 5 -iC 5
transit tn5gaps MG.L.I1.wig,MG.L.I2.wig,MG.L.I3.wig $ProtMG1655 MG.L.I.tn5gaps.txt -m 10 -r Mean -iN 5 -iC 5
transit tn5gaps parahydroxybenzoate.1.wig,parahydroxybenzoate.2.wig,parahydroxybenzoate.3.wig $ProtKT2440 parahydroxybenzoate.tn5gaps.txt -m 10 -r Mean -iN 5 -iC 5
transit tn5gaps parahydroxybenzoate.P1.wig,parahydroxybenzoate.P2.wig,parahydroxybenzoate.P3.wig $ProtKT2440 parahydroxybenzoate.P.tn5gaps.txt -m 10 -r Mean -iN 5 -iC 5
transit tn5gaps glucose.1.wig,glucose.2.wig,glucose.3.wig $ProtKT2440 glucose.tn5gaps.txt -m 10 -r Mean -iN 5 -iC 5
