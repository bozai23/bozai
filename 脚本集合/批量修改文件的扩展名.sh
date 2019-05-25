#!/bin/bash
for i in $(ls *.$1)
do
 mv $i ${i%.*}.$2   #m=${i%.*}    mv $i $m.doc
done

