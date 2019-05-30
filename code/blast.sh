#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2:00:00
#SBATCH -J pap3_blast
#SBATCH --mail-type=ALL
#SBATCH --mail-user philip.carlsson.0001@student.uu.se

# Load modules
module load bioinfo-tools
module load blast

# Your Commands
blastp -db pap3_db -query /home/PROKKA_04122019/PROKKA_04122019.faa -out /home/Genome-analysis-paper-3/analysis/blast/pap3_blast_res.txt -evalue 1e-9 -max_target_seqs 5 -outfmt 5 
