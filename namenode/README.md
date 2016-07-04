
```
docker run --rm --name namenode-format -v namenode-data:/var/hdfs/namenode hadoop-namenode ./bin/hdfs namenode -format
```

```
docker run -e "HADOOP_NAMENODE=hdfs:localhost:9000" -v namenode-data:/var/hdfs/namenode -d --name namenode -p 9000:9000 hadoop-namenode
```
