#!/bin/bash

# using bakta20250605 environment
# v1.11.0

while IFS=, read -r file;

do

bakta --db /data/storage/bactopia-ci/bactopia-tests/data/datasets/bakta/bakta/db/ og-contigs/$file.og.loc.fna;
done < cplist.txt
