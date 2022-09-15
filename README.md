# viperML/minecraft-serverstarter-docker

Generic image for serverstarter-based minecraft servers.

Available for amd64 and arm64 hosts.

## Basic usage

```console
docker run \
    --mount type=bind,source=/path/to/server-setup-config.yaml,destination=/srv/minecraft-vendor/server-setup-config.yaml \
    ghcr.io/viperml/minecraft-serverstarter-docker
```

Optionally bind mount the runtime data into a docker volume, or whatever solution you want:

```
--mount type=volume,source=minecraftdata,destination=/srv/minecraft
```
