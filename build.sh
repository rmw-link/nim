#!/usr/bin/env bash

DIR=$(dirname $(realpath "$0"))
cd $DIR
set -ex
nimble build -d:danger --passC:-flto --passL:-flto
strip rmw


