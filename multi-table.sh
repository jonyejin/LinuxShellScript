#!/bin/bash

# 변수 개수 확인
if [ $# -ne 2 ]; then
 echo "Error! Usage: $0 param1 param2"
 exit -1
fi
echo $1
echo $2

zero=0

# 정수이고 유효 범위인지 확인
if [[ "$1" = *[a-zA-Z]* ]] || [[ "$2" = *[a-zA-Z]* ]] || [[ "$1" = *.* ]] || [[ "$2" = *.* ]] || [[ $zero -ge $1 ]] || [[ $zero -ge $2 ]]; then 
  echo "Error! Usage: $0 param1(Positive Int) param2(Positive Int)"
  exit -1
fi


for i in $(seq 1 $1)
do
  for j in $(seq 1 $2)
    do
      printf "$i*$j = `expr $i \* $j`" 
      if [ `expr $j % $2` == 0 ]
      then
        printf "\n"
      else
        printf " "
      fi
    done
done
exit 0