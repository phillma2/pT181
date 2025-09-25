#!/bin/bash

# use iqtree2 environment

# alignment (mapped kmers, .aln)
# partition file (use annotations from the reference seq) - cds.partitions has coding sequences from reference pT181

# gene regions only for all 7988 samples
iqtree2 -nt AUTO -B 1000 -s ska.map.7988.fullseq.aln -p cds.partitions --prefix cds7988samples

# all sites
iqtree2 -nt AUTO -B 1000 -s ska.map.7988.fullseq.aln --prefix wholePlasmid7988samples
