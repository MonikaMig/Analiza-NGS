#!/bin/bash

echo '....................'
echo SRR064545_1.fastq.gz SRR064545_2.fastq.gz
echo '....................'

fastqc SRR064545_1.fastq.gz SRR064545_2.fastq.gz

echo '....................'
echo SRR064546_1.fastq.gz SRR064546_2.fastq.gz
echo '....................'

fastqc SRR064546_1.fastq.gz SRR064546_2.fastq.gz

echo '....................'
echo SRR064547_1.fastq.gz SRR064547_2.fastq.gz
echo '....................'
	
fastqc SRR064547_1.fastq.gz SRR064547_2.fastq.gz
