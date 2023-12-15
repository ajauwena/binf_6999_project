#!/bin/bash
#SBATCH --account=def-lukens
#SBATCH --time=6:00:00
#SBATCH --mail-user=ajauwena@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --job-name=Indexing_the_Barley_Reference_Genome
#SBATCH --cpus-per-task=16
#SBATCH --mem=64G

module load bwa samtools bowtie2

dir_barley_reference_genome="/home/ajauwena/scratch/binf_6999/barley_reference_genome"

samtools faidx ${dir_barley_reference_genome}/GCA_904849725.1.fasta

bwa index -p ${dir_barley_reference_genome}/GCA_904849725.1.fasta.gz -a bwtsw ${dir_barley_reference_genome}/GCA_904849725.1.fasta.gz

# Maybe also use "bowtie2-build."

# ----- Mohamad's -----

#module load bwa samtools bowtie2

#samtools faidx barley_refseq.fa

#bwa index -p barley_refseq.fa.gz -a bwtsw barley_refseq.fa.gz

#bowtie2-build barley_refseq.fa /home/melian/scratch/barley_feb_2023/barley_index/barley_refseq