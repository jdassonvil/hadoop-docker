docker run -d --name namenode \
-p 9000:9000 \
-p 8020:8020 \
-p 50070:50070 \
-p 50470:50470 \
-v namenode-data:/var/hdfs/namenode \
-e "HADOOP_NAMENODE=hdfs://0.0.0.0:9000" \
hadoop-namenode
