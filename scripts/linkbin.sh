#!/bin/bash
#
# symlink file to ~/.local/bin, if there is an extension, trim it
# 
# for ref
# filename="${$rp##*/}"
# extension="${filename##*.}"

rp=$(realpath "$1")
filename=$(basename "$1")
linkname="${filename%.*}"


ln -s "$rp" "$HOME/.local/bin/$linkname"
