#!/bin/bash
set -eu

OUTPUT_DIR=./out
rm -fr "$OUTPUT_DIR"
mkdir -p "$OUTPUT_DIR"

cp -r images "$OUTPUT_DIR/"
cp index.css include-in-header.html include-before-body.html include-after-body.html "$OUTPUT_DIR/"

# For further options:
# https://pandoc.org/chunkedhtml-demo/6.2-variables.html#variables-for-html-slides

# All reveal.js configuration options are available as variables.
# https://revealjs.com/config/

pandoc index.md -t revealjs -s -o "$OUTPUT_DIR/index.html" --slide-level 3 \
    -V revealjs-url=https://unpkg.com/reveal.js@5.1.0 \
    -V slideNumber=true \
    --include-in-header=include-in-header.html \
    --include-before-body=include-before-body.html \
    --include-after-body=include-after-body.html \
    --katex
