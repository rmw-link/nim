#!/usr/bin/env bash

DIR=$(dirname $(realpath "$0"))
cd $DIR
set -ex

cd roaringbitmap/cpp
c2nim --nep1 roaring64map.hh
mv roaring64map.nim $DIR
