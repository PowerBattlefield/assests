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
         if [ "$name" \< "09" -a "$name" \> "00" ];  
         then
             fname="c"${f:0-2}"_attack_forward_"
             bname=${file:0-4}
             let "forwardd = forwardd+1"
             filename=forward/$fname$forwardd$bname
             mv $file $filename
        
        elif [ "$name" \< "25" -a "$name" \> "16" ];  
         then
             fname="c"${f:0-2}"_attack_left_"
             bname=${file:0-4}
             let "leftt = leftt+1"
             filename=left/$fname$leftt$bname
             mv $file $filename
         elif [ "$name" \< "41" -a "$name" \> "32" ];  
         then
             fname="c"${f:0-2}"_attack_back_"
             bname=${file:0-4}
             let "backk = backk+1"
             filename=back/$fname$backk$bname
             mv $file $filename
        # if [ "$name" = 40 ];then	
	 #     break
         else
             mv $file other/
         fi
      done
  cd ..
  fi
done
