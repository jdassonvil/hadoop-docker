FROM h4dev/hadoop-base

ADD ./core-site.xml ./etc/hadoop/core-site.xml
ADD ./start.sh .
RUN chmod +x ./start.sh

EXPOSE 50075
EXPOSE 50475
EXPOSE 50010
EXPOSE 50020

CMD ["./start.sh"]
