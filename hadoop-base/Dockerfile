FROM centos:7

# Required binaries setup
RUN yum update -y && yum install -y ssh rsync java which
ENV JAVA_HOME=/usr/lib/jvm/jre

ENV HADOOP_VERSION 2.7.2

WORKDIR /tmp

RUN curl -o hadoop.tar.gz http://www.gtlib.gatech.edu/pub/apache/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz \
 && tar -C /opt -xzf hadoop.tar.gz \
 && rm hadoop.tar.gz
 

WORKDIR /opt/hadoop-${HADOOP_VERSION}
