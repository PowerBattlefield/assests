#!/bin/bash
  i=0
for f in ./*
do 
  if [ -d $f ] 
  then
          let "i=i+1"
      cd $f
      forwardd=0
      for file in $(ls *.png)
      do
         name=${file:9:2}
             fname="c"$i"star_"
             bname=${file:0-4}
             let "forwardd = forwardd+1"
             filename=$fname$forwardd$bname
             mv $file $filename
   done
  cd ..
  fi
done
