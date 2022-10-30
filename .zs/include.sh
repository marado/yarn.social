#!/bin/sh

if [ ! $# = 1 ]; then
  printf "Usage: %s <file>\n" "$(basename "$0")"
  exit 0
fi

if [ -f "$1" ]; then
  cat "$1"
else
  echo "error: file not found $1"
fi
