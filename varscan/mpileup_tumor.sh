#!/bin/bash
## Initial SBATCH commands
#SBATCH --job-name=Varscan
#SBATCH --mail-type=END
#SBATCH --mail-user=zzhang.6@alumni.unav.es
#SBATCH --time=23:59:00
#SBATCH --output=Log_mpileup_tumor.log
#SBATCH --mem=20G
#SBATCH --cpus-per-task=10
#SBATCH -p short
module load SAMtools
path_index=/home/zzhang.6/TFM/raw_data/GRCh38.p12.genome.fa

tumor=/home/zzhang.6/TFM/raw_data/19_tumor.printed.bam

cd /home/zzhang.6/TFM/results/varscan

samtools mpileup -f ${path_index} ${tumor} > 19_tumor.mpileup




