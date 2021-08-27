#!/bin/bash
## Initial SBATCH commands
#SBATCH --job-name=Varscan
#SBATCH --mail-type=END
#SBATCH --mail-user=zzhang.6@alumni.unav.es
#SBATCH --time=23:59:00
#SBATCH --output=Log_mpileup_10619_normal.log
#SBATCH --mem=20G
#SBATCH --cpus-per-task=10
#SBATCH -p short
module load SAMtools
path_index=/home/zzhang.6/TFM/raw_data/GRCh38.p12.genome.fa
normal=/home/zzhang.6/TFM/raw_data/bam_hepamut/10619_normal.printed.bam 

cd /home/zzhang.6/TFM/results/varscan_p10619

samtools mpileup -f ${path_index} ${normal} > p10619_normal.mpileup




