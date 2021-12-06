#!/bin/bash 

current_dir=$(pwd);
mkdir positives;
cd import;
declare -i x=1;

for f in *.NEF; 
do 
output_file="image$x.jpg";
output="$current_dir/positives/$output_file";
./negative2positive -a s -l 25 -cb level $f $output; 

printf "...writing image $f to $output_file... %s\n";
let "x++";
done