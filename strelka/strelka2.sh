#!/bin/bash
## Initial SBATCH commands
#SBATCH --job-name=Strelka
#SBATCH --mail-type=END
#SBATCH --mail-user=zzhang.6@alumni.unav.es
#SBATCH --time=23:59:00
#SBATCH --output=LogsNas_014_Strelka_N5.log
#SBATCH --mem=20G
#SBATCH --cpus-per-task=10
#SBATCH -p short

/home/zzhang.6/strelka-2.9.2.centos6_x86_64/bin/configureStrelkaSomaticWorkflow.py \
    --normalBam /home/zzhang.6/TFM/Strelka/19_normal.printed.bam \
    --tumorBam /home/zzhang.6/TFM/Strelka/19_tumor.printed.bam \
    --referenceFasta /home/zzhang.6/TFM/raw_data/gencode.v37.transcripts.fa \
    --runDir /home/zzhang.6/TFM/results
# execution on a single local machine with 20 parallel jobs
/home/zzhang.6/TFM/results/runWorkflow.py -m local -j 20

