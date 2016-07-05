FROM centos:7

RUN yum update -y && yum install -y java
ENV JAVA_HOME=/usr/lib/jvm/jre

ENV HBASE_VERSION 1.1.5

WORKDIR /tmp

RUN curl -o hbase.tar.gz http://apache.claz.org/hbase/${HBASE_VERSION}/hbase-${HBASE_VERSION}-bin.tar.gz \
&& tar -C /opt -xzf hbase.tar.gz \
&& rm hbase.tar.gz

WORKDIR /opt/hbase-${HBASE_VERSION}

ADD ./hbase-site.xml ./conf/hbase-site.xml
ADD ./regionserver ./conf/regionserver
ADD ./start.sh .
RUN chmod +x ./start.sh

CMD ["./start.sh"]
