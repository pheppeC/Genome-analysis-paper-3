#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 14:30:00
#SBATCH -J pap3_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user philip.carlsson.0001@student.uu.se

# Load modules
module load bioinfo-tools
module load canu

# Commands
canu -p pap3_ass -d /home/pheppe/assembly/assemblytry1 genomesize=2.41m genomeSize=2.41m executiveThreads=2 stopOnReadQuality=false -pacbio-raw /home/pheppe/raw_data/DNA_raw_data/ERR2028495.fastq.gz -pacbio-raw /home/pheppe/raw_data/DNA_raw_data/ERR2028496.fastq.gz -pacbio-raw /home/pheppe/raw_data/DNA_raw_data/ERR2028497.fastq.gz -pacbio-raw /home/pheppe/raw_data/DNA_raw_data/ERR2028500.fastq.gz -pacbio-raw /home/pheppe/raw_data/DNA_raw_data/ERR2028501.fastq.gz -pacbio-raw /home/pheppe/raw_data/DNA_raw_data/ERR2028502.fastq.gz 
