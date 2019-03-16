#!/bin/bash

for i in `seq 501 1000`;
do
  # printf "Hello World\n<!--$i-->" > bisect/index.html
  printf "¡Hola, mundo!\n<!--$i-->" > bisect/index.html
  git commit -m "add filler commit $i" -- bisect/index.html
done
