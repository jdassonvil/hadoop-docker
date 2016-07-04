# Hadoop on Docker

Run hadoop on a containerized environment.

## Getting stared

### Format the namenode volume
```
docker volume create
docker run -v namenode-data:/data hadoop-base dfs format /data

```
