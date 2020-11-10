#!/bin/sh
while true
do
ps -ef | grep "$PWD/linkw.sh" | grep -v "grep"
if [ "$?" -eq 1 ]
then
sudo sh linkw.sh
echo "程序正在重启！"
else
echo "程序正在运行！"
fi
sleep 6000
done
