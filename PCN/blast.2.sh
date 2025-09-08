#!/bin/bash

blastn -query lawful+tetK_toblast.ffn -db 82k-renamed.fna -outfmt 6 -num_alignments 20000000 -max_hsps 107900000 -out blast.2.out
