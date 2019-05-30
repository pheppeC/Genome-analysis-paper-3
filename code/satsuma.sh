#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2:00:00
#SBATCH -J pap3_synteny
#SBATCH --mail-type=ALL
#SBATCH --mail-user philip.carlsson.0001@student.uu.se

# Load modules
module load bioinfo-tools
module load satsuma2

# Your Commands
SatsumaSynteny2 -q /home/pheppe/PROKKA_04122019/PROKKA_04122019.fna -t /home/pheppe/lepto.fna -o /home/pheppe/Genome-analysis-paper-3/analysis/synteny/
