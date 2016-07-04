FROM hadoop-base

ADD ./hdfs-site.xml ./etc/hadoop/hdfs-site.xml
ADD ./core-site.xml ./etc/hadoop/core-site.xml
ADD ./start.sh .
RUN chmod +x ./start.sh

EXPOSE 50070
EXPOSE 50470
EXPOSE 8020
EXPOSE 9000

CMD ["./start.sh"]
