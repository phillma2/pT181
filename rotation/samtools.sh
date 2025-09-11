#!/bin/bash

# to rotate plasmids such that all have same start position
# use coordinates from blast hit

while IFS=$'\t' read -r saccver sstart sub1;

do

# get the first half
samtools faidx 82k-renamed.fna $saccver:$sstart- >> $saccver.out |

# append 2nd half of hit
samtools faidx 82k-renamed.fna $saccver:1-$sub1 >> $saccver.out;

done < saccversstart.txt
