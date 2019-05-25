#!/bin/bash
a=$(sed -n '/bash$/s/:.*//p' /etc/passwd)
for i in $a
do
   b=$(grep $i /etc/shadow)
   c=${b#*:}
   d=${c%%:*}
echo "$i    --->   $d"
done

