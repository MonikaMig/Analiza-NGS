# Project NGS analysis and SNP variant detectio

### Data
Data: https://www.ncbi.nlm.nih.gov/sra/SRX025959[accn] <br>
Project: “Pooled linkage analysis for discovery of Saccharomyces cerevisiae functional mutations by whole genome sequencing”

SRA:SRP003355, Whole Genome Sequencing
Experiments: 3 (3 samples)
Runs: 3 (3.8Gbp; 2.5Gb)
Organism: Saccharomyces cerevisiae
Layout: PAIRED
The purpose of this experiment was to identify mutated genes in vac6 and vac22 yeast mutants. 


### Steps of analysis:
A. Acquiring raw data - SRA repositorium<br>
B. Quality control - fastq<br>
C. Trimming - trimmomatic<br>
D. Quality control - fastq<br>
E. Comparison to the reference genome - hisat2<br>
F. Detection of polymorphisms - bcftools<br>
G. Biological sense and analysis of results<br>

### Steps in detail description:
A. Acquiring raw data 
Downloading 1,000,000 reads SRA:SRP003355 using command: fastq-dump. Output: 6 .fastq files, that can be found in original_files folder.

B. Quality control
Doing quality control using fastqc command.fastqc.sh bash script was used.
Results: 
•	There was no adapters
•	Per base sequence quality could be improved for all files. 
That can be found in results/quality_control1 folder.

C. Trimming
Trimmomatic tool was used to improve the quality, with parameters: SlIDINGWINDOW (4:20) and MINLEN (20). Output: fastq files, that can be found in results/triming folder.

D. Quality control
Redoing quality control using fastqc command to check if the quality is improved. Results: The quality was improved. As output file, htmls were produced, that can be found in results/quality_control2 folder.

E. Comparison to the reference genome
Mapping was done using hisat2 tool. At first index files were created using a reference genome (the reference genome was downloaded using a script located in scr_/genref_download.sh folder). 

Samtools with command view tool, used to convertion .sam files to .bam files(binary substitute for .sam files). Samtools command falgstat used- counted the number of alignments for each FLAG type,  sorts commnad to sort files and scommand stats – produces comprehensive statistics from alignment files.

As output file, BAM and stats files were produced, that can be found in results/mapping.

F. Detection of polymorphisms
For polymorphisms used bcftools, because this program can generated VCF or BCF containing genotype likelihoods for one or multiple alignment (BAM or CRAM) files. Mpileup - multi-way pileup producing genotype likelihoods. As output file, vcf was produced, that can be found in results/variant_detection_and_annotation folder.

7. Biological sense and analysis of results
For the final step decided to try methods of analysis:
* snpeff - for snpeff R64-1-1.105 database annotation, that can be found in results/variant_detection_and_annotation folder
* vcftoolz - comparison between samples, that can be found in  results/vcftoolz folder.

