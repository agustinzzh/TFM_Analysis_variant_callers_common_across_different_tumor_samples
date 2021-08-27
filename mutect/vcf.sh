#!/bin/bash
## Initial SBATCH commands
#SBATCH --job-name=VCF
#SBATCH --mail-type=END
#SBATCH --mail-user=zzhang.6@alumni.unav.es
#SBATCH --time=5-23:59:00
#SBATCH --output=Log_vcf.log
#SBATCH --mem=20G
#SBATCH --cpus-per-task=10
#SBATCH -p medium
module load GATK

GENOME=/home/zzhang.6/TFM/raw_data/GRCh38.p12.genome.fa
tumor=/home/zzhang.6/TFM/raw_data/19_tumor.printed.bam

cd /home/zzhang.6/TFM/raw_data

gatk HaplotypeCaller --native-pair-hmm-threads 4 -R {GENOME} -I {tumor} -O 19_tumor.vcf




