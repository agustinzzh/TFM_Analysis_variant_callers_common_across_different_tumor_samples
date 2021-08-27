#!/bin/bash
## Initial SBATCH commands
#SBATCH --job-name=Strelka_10619
#SBATCH --mail-type=END
#SBATCH --mail-user=zzhang.6@alumni.unav.es
#SBATCH --time=5-23:59:00
#SBATCH --output=Logs_Strelka_10619.log
#SBATCH --mem=20G
#SBATCH --cpus-per-task=10
#SBATCH -p medium

/home/zzhang.6/strelka-2.9.2.centos6_x86_64/bin/configureStrelkaGermlineWorkflow.py \
    --bam /home/zzhang.6/TFM/raw_data/bam_hepamut/10619_normal.printed.bam \
    --referenceFasta /home/zzhang.6/TFM/raw_data/GRCh38.p12.genome.fa \
    --runDir /home/zzhang.6/TFM/results/strelka_10619
# execution on a single local machine with 20 parallel jobs
/home/zzhang.6/TFM/results/strelka_10619/runWorkflow.py -m local -j 20

