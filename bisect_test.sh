#!/bin/bash

GOOD=0
BAD=1
CANNOT_TEST=125

html=$(cat bisect/index.html)
# echo "$html"
if [[ $html == *"mundo"* ]]; then
  exit $((BAD))
elif [[ $html == *"World"* ]]; then
  exit $((GOOD))
else
  exit $((CANNOT_TEST))
fi
