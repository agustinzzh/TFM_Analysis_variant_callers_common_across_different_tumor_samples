#!/bin/bash
## Initial SBATCH commands
#SBATCH --job-name=Varscan_10619
#SBATCH --mail-type=END
#SBATCH --mail-user=zzhang.6@alumni.unav.es
#SBATCH --time=23:59:00
#SBATCH --output=Log_mpileup_10619_tumor.log
#SBATCH --mem=20G
#SBATCH --cpus-per-task=10
#SBATCH -p short
module load SAMtools
path_index=/home/zzhang.6/TFM/raw_data/GRCh38.p12.genome.fa
tumor=/home/zzhang.6/TFM/raw_data/bam_hepamut/10619_tumor.printed.bam 

cd /home/zzhang.6/TFM/results/varscan_p10619

samtools mpileup -f ${path_index} ${tumor} > p10619_tumor.mpileup




