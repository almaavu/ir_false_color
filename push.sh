#!/usr/bin/env bash

scname=$(basename -- "$(readlink -f -- "$0")")
scdir="$(dirname $(readlink -f $0))"

read -p "Commit description: " desc


git commit -m "$desc" && \
#git rm -r --cached .
git push origin main
