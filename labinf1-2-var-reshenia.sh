#!/bin/bash

mkdir test{1,2}
read -p "Введите URL вашего репозитория: " answer
cd test1
git clone $answer
download="$(ls -tr | tail)"
mv $download ../test2
rm -rf ../test1
sudo chmod 600 -R ../test2
echo "Экзамен выполнен" 
