#!/bin/bash
sed -i "s,{{namenode}},$HADOOP_NAMENODE," ./etc/hadoop/core-site.xml
echo "Hadoop namenode configured to $HADOOP_NAMENODE"

./bin/hdfs datanode
