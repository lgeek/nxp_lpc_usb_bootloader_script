#!/bin/bash
if [ $# != 2 ]; then
  echo "Syntax: copy.sh [SOURCE IMAGE] [DESTIONATION BLOCK DEVICE]"
  exit
fi

dd if=$1 of=$2 bs=1 seek=2048
sync
