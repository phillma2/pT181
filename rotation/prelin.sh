#!/bin/bash

while IFS=, read -r line;
do echo $">$line" >> $line.fasta |
grep -v ">" contiglin/$line.out >> $line.fasta;
done < contig.list

