#!/bin/bash

mkdir bcftools

cd bcftools

mkdir vcfs

bcftools mpileup -Ou -f gen_refer.fna 'projekt/results/mapping/SRR064545_sort.bam' | bcftools call --ploidy 1 -mv -Ob | bcftools view -i '%QUAL>=20' > '/bcftools/vcfs/SRR064545.vcf'

bcftools mpileup -Ou -f gen_refer.fna 'projekt/results/mapping/SRR064546_sort.bam' | bcftools call --ploidy 1 -mv -Ob | bcftools view -i '%QUAL>=20' > '/bcftools/vcfs/SRR064546.vcf'

bcftools mpileup -Ou -f gen_refer.fna 'projekt/results/mapping/SRR064547_sort.bam' | bcftools call --ploidy 1 -mv -Ob | bcftools view -i '%QUAL>=20' > '/bcftools/vcfs/SRR064547.vcf'