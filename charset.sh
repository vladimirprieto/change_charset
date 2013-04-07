#!/bin/bash
for i in $( find . -name "*.php" -o -name "*.js"  -o -name "*.css" -o -name "*.inc" ); do
    iconv -f ISO_8859-1 -t UTF-8 $i > $i.tmp
    rm $i
    mv $i.tmp $i
done