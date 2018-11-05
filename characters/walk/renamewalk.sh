#!/bin/bash
for f in ./*
do 
  if [ -d $f ] 
  then
      cd $f
      leftt=0
      backk=0
      forwardd=0
      mkdir left
      mkdir back
      mkdir forward
      mkdir other
      for file in $(ls *.png)
      do
         name=${file:9:2}
         if [ "$name" \< "29" -a "$name" \> "20" ];  
         then
             fname="c"${f:0-2}"_walk_forward_"
             bname=${file:0-4}
             let "forwardd = forwardd+1"
             filename=forward/$fname$forwardd$bname
             mv $file $filename
        
        elif [ "$name" \< "45" -a "$name" \> "36" ];  
         then
             fname="c"${f:0-2}"_walk_left_"
             bname=${file:0-4}
             let "leftt = leftt+1"
             filename=left/$fname$leftt$bname
             mv $file $filename
         elif [ "$name" \< "61" -a "$name" \> "52" ];  
         then
             fname="c"${f:0-2}"_walk_back_"
             bname=${file:0-4}
             let "backk = backk+1"
             filename=back/$fname$backk$bname
             mv $file $filename
         else
             mv $file other/
         fi
      done
  cd ..
  fi
done
