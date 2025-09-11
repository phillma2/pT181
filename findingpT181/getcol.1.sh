#!/bin/bash

#using blast output (see blastn script)

#sum length for all contigs
awk -F"\t" '{seen[$2]+=$4; count[$1]++} END{for (x in seen)print x, seen[x]}' blast.1.out >> lengthsumtext.txt

# get the contig/sample info for samples >= 4400 bp subj cov
awk -F' ' '{ if ($NF>=4400) print $1 }' lengthsumtext.txt >> samplesoverorequal4400.txt

# get the blast hits so you can use samtools
while IFS=, read -r contig; do grep "$contig" blast.1.out >> blasthitsforsamplesover4400.txt; done < samplesoverorequal4400.txt

#sort them by sample, then by qstart
sort -k2,2 -k7,7 blasthitsforsamplesover4400.txt > sortedblasthitsover4400.txt

#get the position that we are linearizing with respect to by retrieving the hit were position 1 is for query
while IFS=, read -r contig; do grep -m 1 "$contig" sortedblasthitsover4400.txt >> firsthits.txt; done < samplesoverorequal4400.txt

# sample, sstart, the point before sstart
awk '{ print $2"\t"$9"\t"$9-1 }' firsthits.txt > saccversstart.txt

#blast output format is tsv
#qaccver saccver pident length mismatch gapopen qstart qend sstart send evalue bitscore

