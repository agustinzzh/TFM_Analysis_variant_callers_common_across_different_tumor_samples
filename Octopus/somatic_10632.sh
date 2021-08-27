#!/bin/bash
## Initial SBATCH commands
#SBATCH --job-name=10632_octopus_rf
#SBATCH --mail-type=END
#SBATCH --mail-user=zzhang.6@alumni.unav.es
#SBATCH --time=20-23:59:00
#SBATCH --output=Log_10632_filter_somaticrf.log
#SBATCH --mem=20G
#SBATCH --cpus-per-task=10
#SBATCH -p long
module load Octopus-vcf
ref=/home/zzhang.6/TFM/raw_data/GRCh38.p12.genome.fa
bam_normal=/home/zzhang.6/TFM/raw_data/bam_hepamut/10632_normal.printed.bam
bam_tumor=/home/zzhang.6/TFM/raw_data/bam_hepamut/10632_tumor.printed.bam
rf=/home/zzhang.6/TFM/raw_data/rf/somatic.v0.7.4.forest
rfg=/home/zzhang.6/TFM/raw_data/rf/germline.v0.7.4.forest
vcf=/home/zzhang.6/TFM/results/Octopus/filtered_10632.vcf
cd /home/zzhang.6/TFM/results/Octopus



 octopus -R ${ref} -I ${bam_normal} ${bam_tumor} --normal-sample Hepa_normal \
    --filter-vcf ${vcf} \
    --forest ${rf} \
    -o 10632_somatic_filtered.vcf.gz