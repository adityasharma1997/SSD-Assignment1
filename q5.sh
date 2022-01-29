#!/bin/bash
mkdir temp_activity
cd temp_activity
touch temp{1..50}.txt
for i in {1..25}; do mv "temp$i.txt" "temp$i.md"; done
for i in $(ls); do
var=$(echo $i |awk -F "." '{print$1}' )
ext=$(echo $i |awk -F "." '{print$2}')
mv "${var}.${ext}" "${var}_modified.${ext}";
done

for i in {26..50}; do
zip -q -r txt_compressed.zip temp${i}_modified.txt ;done




