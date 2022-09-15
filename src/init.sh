#!/usr/bin/env bash
# This scripts boootstrap the vendor files into a target folder
# And runs serverstarter

set -eu

OLD_DIR="$(cd "$(dirname "${BASH_SOURCE[@]}")"; pwd)"
NEW_DIR="$1"

mkdir -p "$NEW_DIR"

for file in "$OLD_DIR"/*; do
    _path="$(realpath "$file")"
    ln -vsf "$_path" "$NEW_DIR"
done

cd "$NEW_DIR"

if ! [[ -e server-setup-config.yaml ]]; then
    echo "Server config not provided! Check the README on GitHub"
    exit 1
fi

java -jar serverstarter.jar
