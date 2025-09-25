# pT181
Repo for code associated with pT181 project (Phillips et al. 2025, bioRxiv) - https://www.biorxiv.org/content/10.1101/2025.09.14.675889v1
"Transition of Staphylococcus aureus tetracycline resistance plasmid pT181 from independent multicopy replicon to predominantly integrated chromosomal element over 65 years"

All genomes used in this study are publicly available

## contents
finding pT181
- blast.1.sh - find pT181 in genomes
- getcol.1.sh - get samples clearing 4400bp threshold, start position

PCN
- blast.2.sh - find known chromosomal genes & tetK in genomes
- bwa.sh - fastq to sam
- samtools-view-sort-depth.sh - read depth at all sites
- depth+conlen.sh - script for avg depth calculations & contig length only (post-samtools)
- glmm.pcn.reduced.Rmd - Rmd for GLMM for copy number; copy number x strain * bioproject

phitest
- ska.7988.sh - make skf file and alignment of all pT181 contigs (n = 7988)
- phitest.sh - perform phi test for recombination

rotation (of the plasmid)
- samtools.sh - start all plasmids at same spot relative to blast hit
- prelin.sh - remove extra header; prep for picard
- picard.sh - normalize pt181 contigs

trees
- iqtree.sh - commands for building trees
- cds.partitions - regions of seq to be partitioned for CDS tree
- *.contree & *.treefile - trees, newick format

clinker
- gettingthecontigs.sh - pull out SRA contigs to be used for clinker figure
- bakta.sh - annotate contigs
- genes.red.csv - geneIDs for figure
- clinker.sh - run clinker

snippy
- snippyloop.sh - run snippy for pt181 contigs

filesforR
- pT181-reunifyG.Rmd - Rmd for PCN calculations, figuremaking, stats
- allthebacteria-sccmec.tsv - output from sccmec tool run on AtB
- pubmet-* - metadata for SRA runs
- 14.description.ncbi.txt - description for 14 pT181+ complete genomes

## additional files found elsewhere
- staphopia_v2_all_report.txt in Zenodo for Raghuram et al. 2024 msystems 
(https://zenodo.org/records/10471309)
- isolate_substrain_strain_freq_st_CC.tsv same as above
- dnaA_start_coords.gfs from https://github.com/VishnuRaghuram94/SCAPE/blob/main/timsfigsData.zip
