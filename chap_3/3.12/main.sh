#!/usr/bin/env bash

main=`./main`
max=`./h2d $main`
min=$max

for(( i=2; i <= 100000; i++ ))
do
  main=`./main`
  val=`./h2d $main`

  if [ $val -ge $max ]
  then
    max=$val
  fi

  if [ $val -le $min ]
  then
    min=$val
  fi
done

echo $[$max - $min]
