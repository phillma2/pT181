#!/bin/bash

while IFS=, read -r sample;
do
awk -F'\t' '{seen[$1]+=$3; count[$1]++} END{for (x in seen)print x, seen[x]/count[x], count[x]}' bwa/$sample.depths > $sample.depthlen;
done < listfordepthlen.txt
