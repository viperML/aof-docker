FROM debian:bullseye

RUN apt update \
    && apt install -y \
    openjdk-17-jre \
    && rm -rf /var/lib/apt/lists/*

ARG SERVERSTARTER_VERSION=2.4.0

ADD ./src /srv/minecraft-vendor
ADD https://github.com/EnigmaticaModpacks/ServerStarter/releases/download/v$SERVERSTARTER_VERSION/serverstarter-$SERVERSTARTER_VERSION.jar /srv/minecraft-vendor/serverstarter.jar

CMD ["sh", "-c", "/srv/minecraft-vendor/init.sh /srv/minecraft"]
