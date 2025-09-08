# pT181
Repo for code associated with pT181 project (Phillips et al. 2025, bioRxiv)
"Transition of Staphylococcus aureus tetracycline resistance plasmid pT181 from independent multicopy replicon to predominantly integrated chromosomal element over 65 years"


## example scripts / workflow
finding pT181
- blast.1.sh - find pT181 in genomes

PCN
- blast.2.sh - find known chromosomal genes & tetK in genomes
- bwa.sh - fastq to sam
- samtools-view-sort-depth.sh - read depth at all sites
