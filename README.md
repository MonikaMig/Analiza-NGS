# Project NGS analysis and SNP variant detection
### Structure data
```bash
/projekt
├── original_files
│   ├── SRR064545_1.fastq.gz
│   ├── SRR064545_2.fastq.gz
│   ├── SRR064546_1.fastq.gz
│   ├── SRR064546_2.fastq.gz
│   ├── SRR064547_1.fastq.gz
│   └── SRR064547_2.fastq.gz
├── reference_genom
│   ├── gen_refer.fna
│   ├── gen_refer.fna.fai
│   └── S_cerevisiae_chromosome
│       ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.I.fa.gz
│       ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.II.fa.gz
│       ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.III.fa.gz
│       ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.IV.fa.gz
│       ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.IX.fa.gz
│       ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.V.fa.gz
│       ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.VI.fa.gz
│       ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.VII.fa.gz
│       ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.VIII.fa.gz
│       ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.X.fa.gz
│       ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XI.fa.gz
│       ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XII.fa.gz
│       ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XIII.fa.gz
│       ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XIV.fa.gz
│       ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XV.fa.gz
│       └── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XVI.fa.gz
├── results
│   ├── mapping
│   │   ├── mapping_hisat2.txt
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
└── src_
    ├── data_download.txt
    ├── genref_download.sh
    ├── hisat2.sh
    ├── quality_control1.sh
    ├── quality_control2.sh
    ├── sam_sort.sh
    ├── sam_stats.sh
    ├── samtools.sh
    ├── snpeff.sh
    ├── trimmo.txt
    ├── variant_calling.sh
    └── vcftoolz.txt

```

## src
```bash
└── src_
    ├── data_download.txt
    ├── genref_download.sh
    ├── hisat2.sh
    ├── quality_control1.sh
    ├── quality_control2.sh
    ├── sam_sort.sh
    ├── sam_stats.sh
    ├── samtools.sh
    ├── snpeff.sh
    ├── trimmo.txt
    ├── variant_calling.sh
    └── vcftoolz.txt
```
## Used scripts:
* data_download.txt - download of SRA samples
* genref_download.sh - downloading reference genome from ENSEMBL
* hisat2.sh - mapping samples to reference genome with hisat2
* quality_control1.sh - quality control with fastqc
* quality_control2.sh - quality control with fastqc after trimming
* sam_sort.sh - sorting bams
* sam_stats.sh - stats for bams; data after mapping and sorting
* samtools.sh - samtools was used to get .bam files (binary substitute for .sam files), falgstat - counts the number of alignments for each FLAG type
* snpeff.sh - download for snpEff R64-1-1.105 database annotation and annotation of variants with use of snpEff
* trimmo.txt - quality upgrade with Trimmomatic
* variant_calling.sh - variant detection with bcftools
* vcftoolz.txt - comprae (find the similarites and differences between VCF files); count (command counts samples, positions, calls, snps, indels, other variants, missing calls, and filter reasons); plot (the plot command shows a bar-chart of the locations of calls along the length of the genome; norrow (reformat the data into a tall and narrow format for easier viewing and to facilitate automated diff of files)
   
