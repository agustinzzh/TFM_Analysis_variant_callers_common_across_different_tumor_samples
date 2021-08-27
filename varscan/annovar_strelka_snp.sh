#!/bin/bash
## Initial SBATCH commands
#SBATCH --job-name=Annovar_strelka_snp
#SBATCH --mail-type=END
#SBATCH --mail-user=zzhang.6@alumni.unav.es
#SBATCH --time=23:59:00
#SBATCH --output=Log_annovar_strelka_snp.log
#SBATCH --mem=20G
#SBATCH --cpus-per-task=10
#SBATCH -p short
vcf=/home/zzhang.6/TFM/results/results_strelka/results/variants/somatic.snvs2.vcf


cd /home/zzhang.6/annovar/annovar

perl table_annovar.pl ${vcf} humandb/ -buildver hg19 -out strelka_snp -remove -protocol refGene,cytoBand,exac03,avsnp147,dbnsfp30a -operation g,r,f,f,f -nastring . -vcfinput -polish

