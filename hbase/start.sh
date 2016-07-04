#!/bin/bash

sed -i "s,{{namenode}},$HADOOP_NAMENODE," ./conf/hbase-site.xml
echo "Hadoop namenode configured to $HADOOP_NAMENODE"

sed -i "s,{{zk}},$ZOOKEEPER," ./conf/hbase-site.xml
echo "Zookeeper configured to $ZOOKEEPER"

./bin/hbase $@
