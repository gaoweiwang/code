#!/bin/bash
#PBS -N snRNAseq_C0021
#PBS -l nodes=1:ppn=6
#PBS -l walltime=8:00:00
#PBS -o C0021.out
#PBS -e C0021.err
#PBS -V
#PBS -M sjtu.gaoweiwang@gmail.com
#PBS -m abe
#PBS -A sander-group


#cd /oasis/tscc/scratch/gaw006/test
#snRNAseq genome generation
#cd /projects/sanderlab/gaowei/reference/refdata_transcripts_10x_snRNA
#awk 'BEGIN{FS="\t"; OFS="\t"} $3 == "transcript"{ $3="exon"; print}' /home/gaw006/tools/10x/refdata-cellranger-hg19-3.0.0/genes/genes.gtf > /projects/sanderlab/gaowei/reference/refdata_transcripts_10x_snRNA/genes.gtf
#/home/gaw006/tools/10x/cellranger-3.0.2/cellranger mkref --genome=hg-3.0.0_premrna --fasta=/home/gaw006/tools/10x/refdata-cellranger-hg19-3.0.0/fasta/genome.fa --genes=/projects/sanderlab/gaowei/reference/refdata_transcripts_10x_snRNA/genes.gtf

#cd /projects/sanderlab/gaowei/reference/
#/home/gaw006/tools/10x/cellranger-3.0.2/cellranger mkref --genome=Intrononly_gene_hg19 --fasta=/home/gaw006/tools/10x/refdata-cellranger-hg19-3.0.0/fasta/genome.fa --genes=/projects/sanderlab/gaowei/reference/hg19_gene_intrononly.gtf

cd /oasis/tscc/scratch/gaw006/test
#########ATAC-seq
#/home/gaw006/tools/10x/cellranger-atac-1.1.0/cellranger-atac count --id=C0021_unsorted --reference=/home/gaw006/tools/10x/refdata-cellranger-atac-hg19-1.1.0  --fastqs=/projects/sanderlab/gaowei/biobank_snATAC/C0021/C0021_unsorted  --sample=C0021_unsorted

#/home/gaw006/tools/10x/cellranger-atac-1.1.0/cellranger-atac count --id=C0021_sorted --reference=/home/gaw006/tools/10x/refdata-cellranger-atac-hg19-1.1.0  --fastqs=/projects/sanderlab/gaowei/biobank_snATAC/C0021/C0021_sorted  --sample=C0021_sorted

#/home/gaw006/tools/10x/cellranger-atac-1.1.0/cellranger-atac count --id=JYH810_1 --reference=/home/gaw006/tools/10x/refdata-cellranger-atac-hg19-1.1.0  --fastqs=/projects/sanderlab/gaowei/biobank_snATAC/A0016_20190515/JYH_810  --sample=JYH_810

#/home/gaw006/tools/10x/cellranger-atac-1.1.0/cellranger-atac count --id=JYH811 --reference=/home/gaw006/tools/10x/refdata-cellranger-atac-hg19-1.1.0  --fastqs=/projects/sanderlab/gaowei/biobank_snATAC/A0016_20190515/JYH_811  --sample=JYH_811

#/home/gaw006/tools/10x/cellranger-atac-1.1.0/cellranger-atac count --id=JYH812 --reference=/home/gaw006/tools/10x/refdata-cellranger-atac-hg19-1.1.0  --fastqs=/projects/sanderlab/gaowei/biobank_snATAC/A0016_20190515/JYH_812  --sample=JYH_812

#######RNA-seq
#/home/gaw006/tools/10x/cellranger-3.0.2/cellranger count --id=A0034_deepRNA_hg19_gaowei --transcriptome=/projects/sanderlab/gaowei/reference/refdata_transcripts_10x_gaowei/hg-3.0.0_gaowei  --fastqs=/projects/sanderlab/gaowei/biobank_snRNA/fastq_deep/A0034  --sample=A0034

#/home/gaw006/tools/10x/cellranger-3.0.2/cellranger count --id=A0034_deepRNA_hg19_10xprerna --transcriptome=/projects/sanderlab/gaowei/reference/refdata_transcripts_10x_snRNA/hg-3.0.0_premrna  --fastqs=/projects/sanderlab/gaowei/biobank_snRNA/fastq_deep/A0034  --sample=A0034

#/home/gaw006/tools/10x/cellranger-3.0.2/cellranger count --id=A0034_deepRNA_hg19_10x2 --transcriptome=/home/gaw006/tools/10x/refdata-cellranger-hg19-3.0.0  --fastqs=/projects/sanderlab/gaowei/biobank_snRNA/fastq_deep/A0034 --sample=A0034

#/home/gaw006/tools/10x/cellranger-3.0.2/cellranger count --id=A0033_deepRNA_hg19_ucsd --transcriptome=/projects/sanderlab/gaowei/reference/refdata_transcripts_10xucsd  --fastqs=/projects/sanderlab/gaowei/biobank_snRNA/fastq_deep/A0033  --sample=A0033

/home/gaw006/tools/10x/cellranger-3.0.2/cellranger count --id=A0034_deepRNA_hg19_intrononly --transcriptome=/projects/sanderlab/gaowei/reference/Intrononly_gene_hg19  --fastqs=/projects/sanderlab/gaowei/biobank_snRNA/fastq_deep/A0034 --sample=A0034

#/home/gaw006/tools/10x/cellranger-3.0.2/cellranger count --id=A0034_deepRNA_hg38_10x --transcriptome=/projects/sanderlab/gaowei/reference/refdata-cellranger-GRCh38-3.0.0  --fastqs=/projects/sanderlab/gaowei/biobank_snRNA/fastq_deep/A0034 --sample=A0034

#/home/gaw006/tools/10x/cellranger-3.0.2/cellranger count --id=nPOD6251_RNA_hg19_ucsd --transcriptome=/projects/sanderlab/gaowei/reference/refdata_transcripts_10xucsd  --fastqs=/projects/sanderlab/gaowei/biobank_snRNA/nPOD_6251 --sample=MM_9
