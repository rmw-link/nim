#!/usr/bin/env bash

DIR=$(dirname $(realpath "$0"))
cd $DIR
set -ex

if ! [ -x "$(command -v watchexec)" ]; then
cargo install watchexec-cli
fi
watchexec -r -e nim nimble run


