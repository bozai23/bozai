#!/bin/bash
astr='|-->'						#模拟进度条
for i in {0..100}
do
        echo -ne "\033[105G${i}%"		#以百分比显示进度
        echo -ne "\033[${i}G${astr}"		#以进度条显示进度
        sleep 0.2					#休眠0.2秒
done
echo
