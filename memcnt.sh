#!/bin/sh
clear
beep -f 2000 -l 50
beep -f 1000 -l 50
i=1
memsize=`expr ${1:-32} \* 1024`
echo "CPU MODE  High"
while [ $i -le ${memsize} ];
do
	echo "MEMORY 640KB + ${i}KB OK"
	i=`expr $i + 1024`
	sleep 0.025s
	printf '\e[1A\e[K'
done
	printf '\e[1A\e[K'

exit 0
