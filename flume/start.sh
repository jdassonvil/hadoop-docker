#!/bin/bash

sed -i "s,{{namenode}},$HADOOP_NAMENODE," ./conf/flume-conf.properties
echo "Hadoop namenode configured to $HADOOP_NAMENODE"

bin/flume-ng agent -n agent -c conf -f conf/flume-conf.properties
