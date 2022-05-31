#!/bin/bash


echo '................................................'
echo 'Converts SAM to BAM:'
echo '................................................'

samtools view -S -b SRR064545.sam > SRR064545.bam
samtools view -S -b SRR064546.sam > SRR064546.bam
samtools view -S -b SRR064547.sam > SRR064547.bam

echo '................................................'
echo 'Counts the number of alignments for:' 
echo '................................................'

samtools flagstat SRR064545.bam > SRR064545_flagstat.txt
samtools flagstat SRR064546.bam > SRR064546_flagstat.txt
samtools flagstat SRR064547.bam > SRR064547_flagstat.txt

