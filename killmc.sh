#!/bin/bash

minecraft="org.prismlauncher.EntryPoint"

if jps -lV | grep $minecraft; then
  pkill -9 -f $minecraft
  echo "Killed hanging process"
  exit 1
else
  echo "Exited successfully"
  exit 0
fi
