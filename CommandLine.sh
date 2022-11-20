#!/bin/sh
>>dataframe.tsv
grep -c "United States" dataframe.tsv
grep -c "Spain" dataframe.tsv
grep -c "France" dataframe.tsv
grep -c "England" dataframe.tsv

cut -f4,5,8 dataframe.tsv | grep "Italy" > Italy.tsv | awk '{s+=$1} END {print s/NR}' Italy.tsv
cut -f4,5,8 dataframe.tsv | grep "Spain" > Spain.tsv |awk '{s+=$1} END {print s/NR}' Spain.tsv 
cut -f4,5,8 dataframe.tsv | grep "France" > France.tsv | awk '{s+=$1} END {print s/NR}' France.tsv
cut -f4,5,8 dataframe.tsv | grep "England" > England.tsv | awk '{s+=$1} END {print s/NR}' Englend.tsv
cut -f4,5,8 dataframe.tsv | grep "United States" > US.tsv | awk '{s+=$1} END {print s/NR}' US.tsv



cut -f4,5,8 dataframe.tsv | grep "Italy" > Italy.tsv | awk '{s+=$2} END {print s}' Italy.tsv
cut -f4,5,8 dataframe.tsv | grep "Spain" > Spain.tsv |awk '{s+=$2} END {print s}' Spain.tsv
cut -f4,5,8 dataframe.tsv | grep "France" > France.tsv | awk '{s+=$2} END {print s}' France.tsv
cut -f4,5,8 dataframe.tsv | grep "England" > England.tsv | awk '{s+=$2} END {print s}' Englend.tsv
cut -f4,5,8 dataframe.tsv | grep "United States" > US.tsv | awk '{s+=$2} END {print s}' US.tsv

chmod +x CommandLine.sh
