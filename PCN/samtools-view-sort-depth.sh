#!/bin/bash

while IFS=, read -r sample;

do

#sam to bam
samtools view -bS bwa/$sample.aln-pe.sam > bwa/$sample.bam

#bam to sorted bam
samtools sort bwa/$sample.bam -o bwa/$sample.sorted.bam

#sorted bam to depth at all sites
samtools depth -a bwa/$sample.sorted.bam > bwa/$sample.depths

awk -F'\t' '{seen[$1]+=$3; count[$1]++} END{for (x in seen)print x, seen[x]/count[x]}' bwa/$sample.depths > bwa/$sample.avgdepths;

done < 4400+_samples-split.ex
