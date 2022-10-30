#!/bin/sh

if [ ! $# = 1 ]; then
  printf "Usage: %s <file>\n" "$(basename "$0")"
  exit 0
fi

fn="${ZS_OUTDIR}/$1"

if [ -f "${ZS_OUTDIR}/$1" ]; then
  cat "${ZS_OUTDIR}/$1"
else
  echo "error: file not found ${ZS_OUTDIR}/$1"
fi
