FROM centos:7

RUN yum update -y && yum install -y java
ENV JAVA_HOME=/usr/lib/jvm/jre

ENV ZK_VERSION 3.4.8

WORKDIR /tmp

RUN curl -o zookeeper.tar.gz http://apache.claz.org/zookeeper/zookeeper-${ZK_VERSION}/zookeeper-${ZK_VERSION}.tar.gz \
&& tar -C /opt -xzf zookeeper.tar.gz \
&& rm zookeeper.tar.gz

WORKDIR /opt/zookeeper-${ZK_VERSION}
ADD ./zoo.cfg ./conf/zoo.cfg

CMD ["/bin/bash", "./bin/zkServer.sh", "start-foreground"]
