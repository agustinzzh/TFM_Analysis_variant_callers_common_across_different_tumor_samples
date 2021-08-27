#!/bin/bash
## Initial SBATCH commands
#SBATCH --job-name=Strelka_4p
#SBATCH --mail-type=END
#SBATCH --mail-user=zzhang.6@alumni.unav.es
#SBATCH --time=20-23:59:00
#SBATCH --output=Logs_Strelka_4p.log
#SBATCH --mem=20G
#SBATCH --cpus-per-task=10
#SBATCH -p long

/home/zzhang.6/strelka-2.9.2.centos6_x86_64/bin/configureStrelkaGermlineWorkflow.py \
    --bam /home/zzhang.6/TFM/raw_data/bam_hepamut/10619_normal.printed.bam \
    --bam /home/zzhang.6/TFM/raw_data/bam_hepamut/10622_normal.printed.bam \
    --bam /home/zzhang.6/TFM/raw_data/bam_hepamut/10628_normal.printed.bam \
    --bam /home/zzhang.6/TFM/raw_data/bam_hepamut/10632_normal.printed.bam \
    --referenceFasta /home/zzhang.6/TFM/raw_data/GRCh38.p12.genome.fa \
    --runDir /home/zzhang.6/TFM/results/strelka_4pacientes
# execution on a single local machine with 20 parallel jobs
/home/zzhang.6/TFM/results/strelka_4pacientes/runWorkflow.py -m local -j 20

