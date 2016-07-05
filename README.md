# Hadoop on Docker

Run hadoop on a containerized environment.

## Getting stared

### Format the namenode volume
Before starting the cluster you need to go through some initilization steps.  
Run the init script:

```
./init.sh
docker build -t h4dev/hadoop-base ./hadoop-base
docker-compose build
docker volume create --name=namenode-data
docker volume create --name=datanode-data
docker run -v namenode-data:/var/hdfs/namenode h4dev/hadoop-namenode bin/hadoop namenode -format
```

This script will:

* Build the Dockerfiles 
* Create the data volumes
* Format the HDFS namenode

### Start the cluster
Just run `docker-compose up` to start the cluster.
