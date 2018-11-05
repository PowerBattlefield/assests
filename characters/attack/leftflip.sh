#!/bin/bash
for f in ./*
do 
  if [ -d $f ] 
  then
      cd $f
      mkdir right
      python flip.py ${f:0-2}
  cd ..
  fi
done
