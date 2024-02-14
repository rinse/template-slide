#!/bin/bash
set -eu

OUTPUT_DIR=./build
rm -fr "$OUTPUT_DIR"
mkdir -p "$OUTPUT_DIR"

# For further options:
# https://pandoc.org/chunkedhtml-demo/6.2-variables.html#variables-for-html-slides

# All reveal.js configuration options are available as variables.
# https://revealjs.com/config/

pandoc index.md -t revealjs -s -o "$OUTPUT_DIR/index.html" --slide-level 3 \
    -V revealjs-url=https://unpkg.com/reveal.js@4.5.0 \
    -V slideNumber=true \
    --katex

cp -r images "$OUTPUT_DIR/"
