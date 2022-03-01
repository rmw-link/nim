#!/usr/bin/env bash

DIR=$(dirname $(realpath "$0"))
cd $DIR
set -ex
nim c -d:danger --passC:-flto --passL:-flto -r main.nim
strip main


