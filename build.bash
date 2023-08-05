#!/bin/bash
set -eu

OUTPUT_DIR=./build
rm -fr "$OUTPUT_DIR"
mkdir -p "$OUTPUT_DIR"

pandoc index.md -t revealjs -s -o build/index.html --slide-level 3 \
    -V revealjs-url=https://unpkg.com/reveal.js@4.5.0

cp -r images "$OUTPUT_DIR/"
