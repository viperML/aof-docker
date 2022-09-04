#!/usr/bin/env bash

DIR="$(cd $(dirname $BASH_SOURCE[0]); pwd)"

curl -o "$DIR/server-setup-config.yaml" -Ls https://raw.githubusercontent.com/TeamAOF/All-of-Fabric-5/main/server_files/server-setup-config.yaml

