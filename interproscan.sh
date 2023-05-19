#!/bin/sh
#PBS -lwalltime=02:00:00
#PBS -lselect=1:ncpus=16:mem=16gb

cd /rds/general/user/sam321/ephemeral/pfam/interproscan-5.62-94.0

module load java/jdk-16
./interproscan.sh -iprlookup –goterms –pathways -cpu 16 -i ../23337_PseudomonasputidaLPK411.faa

