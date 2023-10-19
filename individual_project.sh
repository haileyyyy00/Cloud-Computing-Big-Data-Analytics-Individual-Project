#!/bin/sh
sudo apt-get update 

sudo apt-get install -y docker.io 

sudo apt install unzip

docker --version

sudo usermod -aG docker $USER 

newgrp docker

sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

docker-compose version

sudo apt-get update

udo apt install docker-compose wget -y

mkdir $HOME/prac8 && cd $HOME/prac8

curl -L -o MLlib.zip https://www.dropbox.com/s/388xpkjkcv5bwyv/MLlib.zip?dl=0

unzip MLlib.zip

rm $HOME/prac8/nbs/*

sudo chmod -R 777 $HOME/prac8/nbs/

cd ~/prac8/nbs

git clone https://github.com/haileyyyy00/infs3208.git

sudo chmod -R 777 $HOME/prac8/nbs/infs3208

cd .. 

sudo docker-compose -f docker-compose_hdfs_spark.yml up -d