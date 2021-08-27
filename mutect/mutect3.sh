#!/bin/bash
## Initial SBATCH commands
#SBATCH --job-name=Mutect2
#SBATCH --mail-type=END
#SBATCH --mail-user=zzhang.6@alumni.unav.es
#SBATCH --time=5-23:59:00
#SBATCH --output=Log_Mutect3_1.log
#SBATCH --mem=20G
#SBATCH --cpus-per-task=10
#SBATCH -p medium
module load GATK

GENOME=/home/zzhang.6/TFM/raw_data/GRCh38.p12.genome.fa
normal=/home/zzhang.6/TFM/raw_data/19_normal.printed.bam
tumor=/home/zzhang.6/TFM/raw_data/19_tumor.printed.bam
pon=/home/zzhang.6/TFM/Mutect2/normal.vcf.gz

cd /home/zzhang.6/TFM/results/Mutect2

gatk Mutect2 -R ${GENOME} -I ${normal} -normal Hepa_normal -I ${tumor} -tumor Hepa_tumor -pon ${pon} -O 19_mutect2.vcf






