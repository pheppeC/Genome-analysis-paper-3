#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 20:00:00
#SBATCH -J pap3_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user philip.carlsson.0001@student.uu.se

# Load modules
module load bioinfo-tools
module load canu

# Your Commands
canu \
  -p pap3_ass -d assemblytry1 \
  genomeSize=2.6m \
  -pacbio-raw /home/pheppe/raw_data/DNA_raw_data/*.fastq.gz \
  stopOnReadQuality=false \
  maxThreads=2
