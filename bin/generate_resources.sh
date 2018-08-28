#!/bin/sh

IFS="
"
files=$(find $1 -name "*.jpg")
echo "resources:"
for file in $files; do
    echo "- name: $(basename $file)"
    echo "  src: $(basename $file)"
    echo "  title: TITLE"
    echo "  params:"
    echo "    camera: CAMERA"
done

