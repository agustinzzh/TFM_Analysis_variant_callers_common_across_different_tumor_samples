#!/bin/bash
## Initial SBATCH commands
#SBATCH --job-name=10619_octopus_rf
#SBATCH --mail-type=END
#SBATCH --mail-user=zzhang.6@alumni.unav.es
#SBATCH --time=20-23:59:00
#SBATCH --output=Log_10619_octopus_rf.log
#SBATCH --mem=20G
#SBATCH --cpus-per-task=10
#SBATCH -p long
module load Octopus-vcf
ref=/home/zzhang.6/TFM/raw_data/GRCh38.p12.genome.fa
bam_normal=/home/zzhang.6/TFM/raw_data/bam_hepamut/10619_normal.printed.bam
bam_tumor=/home/zzhang.6/TFM/raw_data/bam_hepamut/10619_tumor.printed.bam
rf=/home/zzhang.6/TFM/raw_data/rf/somatic.v0.7.4.forest
rfg=/home/zzhang.6/TFM/raw_data/rf/germline.v0.7.4.forest

cd /home/zzhang.6/TFM/results/Octopus

octopus -R ${ref} -I ${bam_normal} ${bam_tumor} --normal-sample Hepa_normal --forest ${rfg} --somatic-forest ${rf} -o filtered_10619.vcf



