#!/bin/bash
## Initial SBATCH commands
#SBATCH --job-name=Annovar_varscan_indels
#SBATCH --mail-type=END
#SBATCH --mail-user=zzhang.6@alumni.unav.es
#SBATCH --time=23:59:00
#SBATCH --output=Log_annovar_varscan_indels.log
#SBATCH --mem=20G
#SBATCH --cpus-per-task=10
#SBATCH -p short
vcf=/home/zzhang.6/TFM/results/varscan/19_varscan.indel.vcf


cd /home/zzhang.6/annovar/annovar

perl table_annovar.pl ${vcf} humandb/ -buildver hg19 -out varscan_indels -remove -protocol refGene,cytoBand,exac03,avsnp147,dbnsfp30a -operation g,r,f,f,f -nastring . -vcfinput -polish

