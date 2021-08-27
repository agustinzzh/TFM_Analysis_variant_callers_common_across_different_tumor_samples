#!/bin/bash
## Initial SBATCH commands
#SBATCH --job-name=Varscan_p10619
#SBATCH --mail-type=END
#SBATCH --mail-user=zzhang.6@alumni.unav.es
#SBATCH --time=23:59:00
#SBATCH --output=Log_varscan_p10619.log
#SBATCH --mem=20G
#SBATCH --cpus-per-task=10
#SBATCH -p short
module load VarScan


cd /home/zzhang.6/TFM/results/varscan_p10619

java -jar $EBROOTVARSCAN/VarScan.v2.4.2.jar somatic p10619_tumor.mpileup p10619_tumor.mpileup p10619_varscan --output-vcf

java -jar $EBROOTVARSCAN/Varscan.v2.4.2.jar	processSomatic p10619_varscan.snp.vcf
java -jar $EBROOTVARSCAN/Varscan.v2.4.2.jar	processSomatic p10619_varscan.indel.vcf




