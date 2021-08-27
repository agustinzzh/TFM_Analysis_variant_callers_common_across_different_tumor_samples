#!/bin/bash
## Initial SBATCH commands
#SBATCH --job-name=Annovar_mutect
#SBATCH --mail-type=END
#SBATCH --mail-user=zzhang.6@alumni.unav.es
#SBATCH --time=23:59:00
#SBATCH --output=Log_annovar_mutect.log
#SBATCH --mem=20G
#SBATCH --cpus-per-task=10
#SBATCH -p short
vcf=/home/zzhang.6/TFM/results/Mutect2/19_mutect2.vcf


cd /home/zzhang.6/annovar/annovar

perl table_annovar.pl ${vcf} humandb/ -buildver hg19 -out mutect -remove -protocol refGene,cytoBand,exac03,avsnp147,dbnsfp30a -operation g,r,f,f,f -nastring . -vcfinput -polish

