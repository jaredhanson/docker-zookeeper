FROM ubuntu:14.04
MAINTAINER Jared Hanson <jaredhanson@gmail.com>

RUN apt-get -qq update
RUN apt-get -qqy install zookeeper


EXPOSE 2181

ENTRYPOINT ["/usr/share/zookeeper/bin/zkServer.sh"]
CMD ["start-foreground"]
