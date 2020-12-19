if [ -a .hidden.txt ]
  then sudo rm .hidden.txt
  fi
Rscript code.r > .hidden.txt

if [ $(grep -e "0.258334" .hidden.txt | wc -l) -gt 0 ]
  then echo "PART 1 CORRECT"
else
  echo "PART 1 INCORRECT"
fi
if [ $(grep -e "0.2882805" .hidden.txt | wc -l) -gt 0 ]
  then echo "PART 2 CORRECT"
else
  echo "PART 2 INCORRECT"
fi
