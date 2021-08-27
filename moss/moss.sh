#!/bin/bash
## Initial SBATCH commands
#SBATCH --job-name=moss
#SBATCH --mail-type=END
#SBATCH --mail-user=zzhang.6@alumni.unav.es
#SBATCH --time=5-23:59:00
#SBATCH --output=Log_moss.log
#SBATCH --mem=20G
#SBATCH --cpus-per-task=10
#SBATCH -p medium
module load Moss
ref=/home/zzhang.6/TFM/raw_data/GRCh38.p12.genome.fa
normal=/home/zzhang.6/TFM/raw_data/bam_hepamut/10619_normal.printed.bam
vcf=/home/zzhang.6/TFM/raw_data/vcf_10619.vcf
vcf2=/home/zzhang.6/TFM/raw_data/vcf_10622.vcf
vcf3=/home/zzhang.6/TFM/raw_data/vcf_10628.vcf
vcf4=/home/zzhang.6/TFM/raw_data/vcf_10632.vcf
bam=/home/zzhang.6/TFM/raw_data/bam_hepamut/10619_normal.printed.bam
bam19=/home/zzhang.6/TFM/raw_data/bam_hepamut/10619_tumor.printed.bam
bam22=/home/zzhang.6/TFM/raw_data/bam_hepamut/10622_tumor.printed.bam
bam28=/home/zzhang.6/TFM/raw_data/bam_hepamut/10628_tumor.printed.bam
bam32=/home/zzhang.6/TFM/raw_data/bam_hepamut/10632_tumor.printed.bam
normal=/home/zzhang.6/TFM/raw_data/bam_hepamut/10619_normal.printed.bam
cd /home/zzhang.6/TFM/results/Moss

moss -r ${ref} -b ${bam} -b ${bam19} -b ${bam22} -b ${bam28} -b ${bam32} -v ${vcf} -v ${vcf2} -v ${vcf3} -v ${vcf4} -m 4 -t -0.693 --ignore0 --grid-size 200 -o moss.vcf




