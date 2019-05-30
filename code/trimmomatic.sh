#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 15:00:00
#SBATCH -J pap3_trimmomatic
#SBATCH --mail-type=ALL
#SBATCH --mail-user philip.carlsson.0001@student.uu.se

# Load modules
module load bioinfo-tools
module load trimmomatic

# Your Commands
for name in ERR2036629 ERR2036630 ERR2036631 ERR2036632 ERR2036633 ERR2117288 ERR2117289 ERR2117290 ERR2117291 ERR2117292
do
java -jar /sw/apps/bioinfo/trimmomatic/0.36/rackham/trimmomatic-0.36.jar PE -threads 2 \
/home/pheppe/raw_data/RNA_raw_data/${name}_1.fastq.gz \
/home/pheppe/raw_data/RNA_raw_data/${name}_2.fastq.gz \
/home/pheppe/Genome-analysis-paper-3/analysis/trimmomatic/$name.1P.fastq.gz \
/home/pheppe/Genome-analysis-paper-3/analysis/trimmomatic/$name.1U.fastq.gz \
/home/pheppe/Genome-analysis-paper-3/analysis/trimmomatic/$name.2P.fastq.gz \
/home/pheppe/Genome-analysis-paper-3/analysis/trimmomatic/$name.2U.fastq.gz \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 \
LEADING:20 \
TRAILING:20 \
SLIDINGWINDOW:1:3 \
MINLEN:40 \
MAXINFO:40:0.5 
done
