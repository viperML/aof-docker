FROM debian:bullseye

RUN apt update \
    && apt install -y \
    openjdk-17-jre \
    && rm -rf /var/lib/apt/lists/*

ARG SERVER_VERSION=2.4.0
ARG SERVER_SRC=/srv/aof-src
ARG SERVER_RUNTIME=/src/aod-runtime

ADD ./src $SERVER_SRC
ADD https://github.com/TeamAOF/ServerStarter/releases/download/v$SERVER_VERSION/serverstarter-$SERVER_VERSION.jar $SERVER_SRC/serverstarter.jar

CMD ["sh", "-c", "/srv/aof-src/bootstrap.sh /srv/aof-src /srv/aof-runtime"]