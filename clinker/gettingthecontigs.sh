#!/bin/bash

while IFS=$'\t' read -r location;

do

samtools faidx /data/storage/82k-samples/blastindex/82k-renamed.fna $location > $location.og.loc.fna

done < cplist.txt 
