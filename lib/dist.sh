#!/usr/bin/env bash

DIR=$(dirname $(realpath "$0"))
cd $DIR
set -ex

cargo +nightly build \
-Z build-std=std,panic_abort \
-Z build-std-features=panic_immediate_abort \
--target x86_64-apple-darwin \
--release
