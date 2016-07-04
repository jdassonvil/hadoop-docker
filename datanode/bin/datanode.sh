docker run --net=host -d --name $1 \
-v datanode-$1:/data \
-e "HADOOP_NAMENODE=hdfs://localhost:9000" \
hadoop-datanode
