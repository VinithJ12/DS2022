#!/bin/bash


wget https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

tar -xzf lab3-bundle.tar.gz


# awk can remove spaces

awk '!/^[[:space:]]*$/' lab3_data.tsv

# Use `tr` - "translate"

tr '\t' ',' < lab3_data.tsv > cleaned_file.csv

# This outputs the 2nd line of the file and continues on

lines=$(tail -n +2 cleaned_file.csv | wc -l)

echo "The dataset has $lines lines (not counting the header)"


tar -czf converted-archive.tar.gz cleaned_file.csv
