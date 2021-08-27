#!/bin/bash
## Initial SBATCH commands
#SBATCH --job-name=filter
#SBATCH --mail-type=END
#SBATCH --mail-user=zzhang.6@alumni.unav.es
#SBATCH --time=5-23:59:00
#SBATCH --output=Log_filter.log
#SBATCH --mem=20G
#SBATCH --cpus-per-task=10
#SBATCH -p medium
module load GATK

GENOME=/home/zzhang.6/TFM/raw_data/GRCh38.p12.genome.fa
normal=/home/zzhang.6/TFM/raw_data/19_normal.printed.bam
tumor=/home/zzhang.6/TFM/raw_data/19_tumor.printed.bam
pon=/home/zzhang.6/TFM/Mutect2/normal.vcf.gz
vcf=/home/zzhang.6/TFM/results/Mutect2/19_mutect2.vcf
table=/home/zzhang.6/TFM/results/Mutect2/tumor_calculatecontamination.table

cd /home/zzhang.6/TFM/results/Mutect2

gatk FilterMutectCalls \
-V ${vcf} \
--contamination-table ${table} \
-O somatic_oncefiltered.vcf.gz





