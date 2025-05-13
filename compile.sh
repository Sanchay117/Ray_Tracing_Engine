#!/bin/bash

# Check if the user provided an argument
if [ -z "$1" ]; then
  echo "Usage: ./compile.sh <output_file>"
  exit 1
fi

g++ -o raytrace main.cpp -std=c++11
./raytrace > "$1"