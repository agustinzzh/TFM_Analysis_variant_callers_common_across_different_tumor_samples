#!/bin/bash
## Initial SBATCH commands
#SBATCH --job-name=10619_octopus_normal
#SBATCH --mail-type=END
#SBATCH --mail-user=zzhang.6@alumni.unav.es
#SBATCH --time=23:59:00
#SBATCH --output=Log_pileup10619_octopus_normal.log
#SBATCH --mem=20G
#SBATCH --cpus-per-task=10
#SBATCH -p short
module load Octopus-vcf
ref=/home/zzhang.6/TFM/raw_data/GRCh38.p12.genome.fa
bam=/home/zzhang.6/TFM/raw_data/bam_hepamut/10619_normal.printed.bam

cd /home/zzhang.6/TFM/results/Octopus

octopus --reference ${ref} --reads ${bam}



