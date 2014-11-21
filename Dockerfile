FROM ubuntu:latest
MAINTAINER jburks725@gmail.com

# make sure the package repository is up to date
RUN apt-get update && \
    apt-get install -y unbound

COPY cache.conf /etc/unbound/unbound.conf.d/cache.conf

EXPOSE 53/udp

CMD ["/usr/sbin/unbound"]
