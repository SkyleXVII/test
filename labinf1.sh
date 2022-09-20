#!/bin/bash

mkdir test{1,2}
read -p "Введите URL ZIP файла репозитория: " answer
cd /home/skyle/test1
wget $answer
download="$(ls -tr | tail)"
file="$(unzip $download)"
rm $download
mv $file /home/skyle/test2
rm -rf /home/skyle/test1
chmod 600 -R /home/skyle/test2
echo "Лабораторная работа 1 выполнена"
