#!/bin/bash

hisat2-build ~/projekt/original_files/gen_refer.fna ~/indeksy2/index

hisat2 -q -x ~/projekt/indeksy2/index -1 ./trimmed_5_1_paired.fastq -2 ./trimmed_5_2_paired.fastq -S SRR064545.sam

hisat2 -q -x ~/projekt/indeksy2/index -1 ./trimmed_6_1_paired.fastq -2 ./trimmed_6_2_paired.fastq -S SRR064546.sam

hisat2 -q -x ~/projekt/indeksy2/index -1 ./trimmed_7_1_paired.fastq -2 ./trimmed_7_2_paired.fastq -S SRR064547.sam