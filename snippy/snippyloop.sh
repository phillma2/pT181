#!/bin/bash

while IFS=, read -r sample;

do

snippy --outdir $sample.snippyout --ref normalized-pt181/DRX100326-contig_17.fasta.norm --ctgs normalized-pt181/$sample.fasta.norm;

done < contiglist.txt
