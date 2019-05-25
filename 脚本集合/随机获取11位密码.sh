#!/bin/bash
x=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ123456789
for i in {1..11}
do
s=$[RANDOM%62]
echo -n ${x:s:1} #输出不换行
done
echo    #不输出换行

