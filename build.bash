#!/bin/bash
set -eu

OUTPUT_DIR=./out
rm -fr "$OUTPUT_DIR"
mkdir -p "$OUTPUT_DIR"

# For further options:
# https://pandoc.org/chunkedhtml-demo/6.2-variables.html#variables-for-html-slides

# All reveal.js configuration options are available as variables.
# https://revealjs.com/config/

pandoc index.md -t revealjs -s -o "$OUTPUT_DIR/index.html" --slide-level 3 \
    -V revealjs-url=https://unpkg.com/reveal.js@5.1.0 \
    -V slideNumber=true \
    --include-in-header=<(cat ./custom.css | sed -e '1i<style>' -e '$a</style>') \
    --katex

cp -r images "$OUTPUT_DIR/"
