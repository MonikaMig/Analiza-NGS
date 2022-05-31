#!/bin/bash

echo '....................'
echo 'Fastqc for:' trimmed_5_1_paired.fastq trimmed_5_2_paired.fastq
echo '....................'

fastqc trimmed_5_1_paired.fastq 
fastqc trimmed_5_2_paired.fastq 

echo '....................'
echo 'Fastqc for:' trimmed_6_1_paired.fastq trimed_6_1_paired.fastq 
echo '....................'

fastqc trimmed_6_1_paired.fastq 
fastqc trimmed_6_2_paired.fastq 

echo '....................'
echo 'Fastqc for:' trimmed_7_1_paired.fastq trimmed_7_2_paired.fastq 
echo '....................'
	
fastqc trimmed_7_1_paired.fastq 
fastqc trimmed_7_2_paired.fastq 

