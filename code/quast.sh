#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 1:00:00
#SBATCH -J pap3_assembly_val
#SBATCH --mail-type=ALL
#SBATCH --mail-user philip.carlsson.0001@student.uu.se

# Load modules
module load bioinfo-tools
module load quast

# Your Commands
quast.py \
-o /home/pheppe/Genome-analysis-paper-3/analysis/assembly_assesment \
-R /proj/g2019003/nobackup/private/3_Christel_2017/reference/OBMB01.fasta \
/home/pheppe/assemblytry1/pap3_ass.contigs.fasta

