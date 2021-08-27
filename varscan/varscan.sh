#!/bin/bash
## Initial SBATCH commands
#SBATCH --job-name=Varscan
#SBATCH --mail-type=END
#SBATCH --mail-user=zzhang.6@alumni.unav.es
#SBATCH --time=23:59:00
#SBATCH --output=Log_varscan.log
#SBATCH --mem=20G
#SBATCH --cpus-per-task=10
#SBATCH -p short
module load VarScan


cd /home/zzhang.6/TFM/results/varscan

java -jar $EBROOTVARSCAN/VarScan.v2.4.2.jar somatic 19_normal.mpileup 19_tumor.mpileup 19_varscan --output-vcf

java -jar $EBROOTVARSCAN/Varscan.v2.4.2.jar	processSomatic 19_varscan.snp.vcf
java -jar $EBROOTVARSCAN/Varscan.v2.4.2.jar	processSomatic 19_varscan.indel.vcf




