#!/bin/bash

blastn -db 82k-renamed.fna -query pT181.fasta -outfmt 6 -max_target_seqs 340000 -out blast.1.out

#qaccver saccver pident length mismatch gapopen qstart qend sstart send evalue bitscore
#is standard output format for this version of blast
