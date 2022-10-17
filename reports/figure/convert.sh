#!/bin/sh

for i in boxplot distribution decline serrata
do
    filename=${i}-1
    convert ${filename}.pdf ${filename}.jpg
done
