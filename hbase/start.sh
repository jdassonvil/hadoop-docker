#!/bin/bash

sed -i "s,{{namenode}},$HADOOP_NAMENODE," ./conf/hbase-site.xml
echo "Hadoop namenode configured to $HADOOP_NAMENODE"

sed -i "s,{{zk}},$ZOOKEEPER," ./conf/hbase-site.xml
echo "Zookeeper configured to $ZOOKEEPER"

sed -i "s,{{regionserver}},$HBASE_RS," ./conf/regionserver
echo "HBase region server configured to $HBASE_RS"

./bin/hbase $@
