if [ -a .hidden.txt ]
  then sudo rm .hidden.txt
  fi
#R CMD BATCH code.r > .hidden.txt
Rscript code.r > .hidden.txt
FS_SCORE=0
if [ $(grep -e "0.258334" .hidden.txt | wc -l) -gt 0 ]
  then FS_SCORE=$((FS_SCORE+60))
fi
if [ $(grep -e "0.2882805" .hidden.txt | wc -l) -gt 0 ]
  then FS_SCORE=$((FS_SCORE+40))
fi
echo "FS_SCORE:$FS_SCORE%"