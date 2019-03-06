#!/bin/bash

GOOD=0
BAD=1
CANNOT_TEST=125

html=$(cat bisect/index.html)
# echo "$html"
# TODO use case/esac?
if [[ $html == *"mundo"* ]]; then
  exit $((BAD))
elif [[ $html == *"World"* ]]; then
  exit $((GOOD))
else
  exit $((CANNOT_TEST))
fi
