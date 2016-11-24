FROM centos:7
RUN yum update -y && yum install -y java

ENV JAVA_HOME=/usr/lib/jvm/jre

ENV FLUME_VERSION 1.6.0

WORKDIR /tmp

RUN curl -o flume.tar.gz http://apache.claz.org/flume/${FLUME_VERSION}/apache-flume-${FLUME_VERSION}-bin.tar.gz \
&& tar -C /opt -xzf flume.tar.gz \
&& rm flume.tar.gz

WORKDIR /opt/apache-flume-${FLUME_VERSION}-bin

ADD ./flume-conf.properties ./conf/flume-conf.properties
ADD ./start.sh .

RUN chmod +x ./start.sh

EXPOSE 41414

CMD ["./start.sh"]
