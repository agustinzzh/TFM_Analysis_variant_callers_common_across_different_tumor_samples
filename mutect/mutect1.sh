#!/bin/bash
## Initial SBATCH commands
#SBATCH --job-name=Mutect2
#SBATCH --mail-type=END
#SBATCH --mail-user=zzhang.6@alumni.unav.es
#SBATCH --time=23:59:00
#SBATCH --output=Log_Mutect2_1.log
#SBATCH --mem=20G
#SBATCH --cpus-per-task=10
#SBATCH -p short
module load GATK

GENOME=/home/zzhang.6/TFM/raw_data/GRCh38.p12.genome.fa
normal=/home/zzhang.6/TFM/raw_data/19_normal.printed.bam
#tumor=/home/zzhang.6/TFM/raw_data/19_tumor.printed.bam

cd /home/zzhang.6/TFM/results/Mutect2

gatk Mutect2 -R ${GENOME} -I ${normal} --tumor-sample Hepa_normal --max-mnp-distance 0 -O normal.vcf.gz






