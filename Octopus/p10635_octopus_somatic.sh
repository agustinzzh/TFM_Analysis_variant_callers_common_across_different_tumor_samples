#!/bin/bash
## Initial SBATCH commands
#SBATCH --job-name=10635_octopus_somatics
#SBATCH --mail-type=END
#SBATCH --mail-user=zzhang.6@alumni.unav.es
#SBATCH --time=23:59:00
#SBATCH --output=Log_10635_octopus_somatics.log
#SBATCH --mem=20G
#SBATCH --cpus-per-task=10
#SBATCH -p short
module load Octopus-vcf
ref=/home/zzhang.6/TFM/raw_data/GRCh38.p12.genome.fa
bam_normal=/home/zzhang.6/TFM/raw_data/bam_hepamut/10635_normal.printed.bam
bam_tumor=/home/zzhang.6/TFM/raw_data/bam_hepamut/10635_tumor.printed.bam

cd /home/zzhang.6/TFM/results/Octopus

octopus -R ${ref} -I ${bam_normal} ${bam_tumor} --normal-sample Hepa_normal



