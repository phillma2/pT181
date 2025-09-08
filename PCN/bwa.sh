#!/bin/bash

while IFS=, read -r sample;
do
bwa mem /data/storage/82k-samples/fna+bwa/$sample\.fna /data/storage/82k-samples/reads/$sample\_R1.fastq /data/storage/82k-samples/reads/$sample\_R2.fastq > /data/storage/82k-samples/bwa/$sample\.aln-pe.sam;
done < /data/storage/82k-samples/4400+_samples-split.bn
