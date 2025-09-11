# pT181
Repo for code associated with pT181 project (Phillips et al. 2025, bioRxiv)
"Transition of Staphylococcus aureus tetracycline resistance plasmid pT181 from independent multicopy replicon to predominantly integrated chromosomal element over 65 years"


## example scripts
finding pT181
- blast.1.sh - find pT181 in genomes
- getcol.1.sh - get samples clearing 4400bp threshold, start position

PCN
- blast.2.sh - find known chromosomal genes & tetK in genomes
- bwa.sh - fastq to sam
- samtools-view-sort-depth.sh - read depth at all sites
- glmm.pcn.reduced.Rmd - Rmd for GLMM for copy number; copy number x strain * bioproject

phitest
- ska.7988.sh - make skf file and alignment of all pT181 contigs (n = 7988)
- phitest.sh - perform phi test for recombination

rotation (of the plasmid)
- samtools.sh - start all plasmids at same spot relative to blast hit
- prelin.sh - remove extra header; prep for picard
- picard.sh - normalize pt181 contigs
