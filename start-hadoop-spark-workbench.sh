#!/bin/bash

docker-compose up -d namenode
docker-compose up -d datanode
docker-compose up -d spark-master spark-worker spark-notebook hue

my_ip=`ip route get 1|awk '{print $NF;exit}'`
echo "Namenode: http://${my_ip}:50070"
echo "Datanode: http://${my_ip}:50075"
echo "Spark-master: http://${my_ip}:8080"
echo "Spark-notebook: http://${my_ip}:9001"
echo "Hue (HDFS Filebrowser): http://${my_ip}:8088/home"
