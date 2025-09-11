#!/bin/bash

while IFS=, read -r sample;

do

picard NormalizeFasta -I $sample.fasta -O $sample.fasta.norm --LINE_LENGTH 60;

done < contig.list
