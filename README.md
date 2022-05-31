# Project NGS analysis and SNP variant detection
### Structure data
```bash
./projekt
├── original_files
│   ├── gen_refer.fna
│   ├── gen_refer.fna.fai
│   ├── SRR064545_1.fastq.gz
│   ├── SRR064545_2.fastq.gz
│   ├── SRR064546_1.fastq.gz
│   ├── SRR064546_2.fastq.gz
│   ├── SRR064547_1.fastq.gz
│   └── SRR064547_2.fastq.gz
├── results
│   ├── mapping
│   │   ├── SRR064545.bam
│   │   ├── SRR064545_flagstat.txt
│   │   ├── SRR064545_sort.bam
│   │   ├── SRR064546.bam
│   │   ├── SRR064546_flagstat.txt
│   │   ├── SRR064546_sort.bam
│   │   ├── SRR064547.bam
│   │   ├── SRR064547_flagstat.txt
│   │   ├── SRR064547_sort.bam
│   │   ├── stats_SRR064545.stats
│   │   ├── stats_SRR064546.stats
│   │   └── stats_SRR064547.stats
│   ├── quality_control1
│   │   ├── SRR064545_1_fastqc.html
│   │   ├── SRR064545_1_fastqc.zip
│   │   ├── SRR064545_2_fastqc.html
│   │   ├── SRR064545_2_fastqc.zip
│   │   ├── SRR064546_1_fastqc.html
│   │   ├── SRR064546_1_fastqc.zip
│   │   ├── SRR064546_2_fastqc.html
│   │   ├── SRR064546_2_fastqc.zip
│   │   ├── SRR064547_1_fastqc.html
│   │   ├── SRR064547_1_fastqc.zip
│   │   ├── SRR064547_2_fastqc.html
│   │   └── SRR064547_2_fastqc.zip
│   ├── quality_control2
│   │   ├── trimmed_5_1_paired_fastqc.html
│   │   ├── trimmed_5_1_paired_fastqc.zip
│   │   ├── trimmed_5_2_paired_fastqc.html
│   │   ├── trimmed_5_2_paired_fastqc.zip
│   │   ├── trimmed_6_1_paired_fastqc.html
│   │   ├── trimmed_6_1_paired_fastqc.zip
│   │   ├── trimmed_6_2_paired_fastqc.html
│   │   ├── trimmed_6_2_paired_fastqc.zip
│   │   ├── trimmed_7_1_paired_fastqc.html
│   │   ├── trimmed_7_1_paired_fastqc.zip
│   │   ├── trimmed_7_2_paired_fastqc.html
│   │   └── trimmed_7_2_paired_fastqc.zip
│   ├── triming
│   │   ├── trimmed_5_1_paired.fastq
│   │   ├── trimmed_5_1_unpaired.fastq
│   │   ├── trimmed_5_2_paired.fastq
│   │   ├── trimmed_5_2_unpaired.fastq
│   │   ├── trimmed_6_1_paired.fastq
│   │   ├── trimmed_6_1_unpaired.fastq
│   │   ├── trimmed_6_2_paired.fastq
│   │   ├── trimmed_6_2_unpaired.fastq
│   │   ├── trimmed_7_1_paired.fastq
│   │   ├── trimmed_7_1_unpaired.fastq
│   │   ├── trimmed_7_2_paired.fastq
│   │   └── trimmed_7_2_unpaired.fastq
│   ├── variant_detection_and_annotations
│   │   └── snpEff
│   │       ├── R64-1-1.105
│   │       │   ├── sequence.bin
│   │       │   ├── sequence.IV.bin
│   │       │   └── snpEffectPredictor.bin
│   │       ├── SRR064545_ann.genes.txt
│   │       ├── SRR064545_ann.html
│   │       ├── SRR064545_ann.vcf
│   │       ├── SRR064546_ann.genes.txt
│   │       ├── SRR064546_ann.html
│   │       ├── SRR064546_ann.vcf
│   │       ├── SRR064547_ann.genes.txt
│   │       ├── SRR064547_ann.html
│   │       └── SRR064547_ann.vcf
│   ├── vcfs
│   │   ├── SRR064545.vcf
│   │   ├── SRR064546.vcf
│   │   └── SRR064547.vcf
│   └── vcftoolz
│       ├── count_45.txt
│       ├── count_46.txt
│       ├── count_47.txt
│       ├── plot_45.png
│       ├── plot_46.png
│       ├── plot_47.png
│       ├── summary.txt
│       ├── venn2.positions.pdf
│       ├── venn2.snps.pdf
│       └── venn3.pdf
└── src
    ├── genref_download.sh
    ├── hisat2.sh
    ├── quality_control1.sh
    ├── quality_control2.sh
    ├── sam_sort.sh
    ├── sam_stats.sh
    ├── samtools.sh
    ├── snpeff.sh
    ├── triming.sh
    ├── variant_calling.sh
    └── vcftoolz_kody.txt
