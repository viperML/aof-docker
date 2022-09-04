#!/usr/bin/env bash
set -eux

OLD_DIR="$1"
NEW_DIR="$2"

mkdir -p "$NEW_DIR"

for file in "$OLD_DIR"/*; do
    _path="$(realpath $file)"
    ln -vsf "$_path" "$NEW_DIR"
done

cd "$NEW_DIR"
java -jar serverstarter.jar
