FROM quay.io/letsencrypt/letsencrypt
MAINTAINER dinesh <dinesh@defraglabs.co>

ENV DOCKER_HOST=unix:///var/run/docker.sock
RUN apt-get update && apt-get install -y \
        docker.io \
        jq \
        curl \
        wget \
        make

RUN mkdir /opt/certbot/curl
WORKDIR /opt/certbot/curl
RUN wget http://curl.haxx.se/download/curl-7.50.2.tar.bz2 && tar -xvjf curl-7.50.2.tar.bz2

RUN cd /opt/certbot/curl/curl-7.50.2 && ./configure && make && make install

# Resolve any issues of C-level lib
# location caches ("shared library cache")
RUN ldconfig

ADD start.sh /bin/start.sh

ENTRYPOINT [ "/bin/start.sh" ]
