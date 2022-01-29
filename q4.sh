#!/bin/bash
number="$1"

if [ $# -eq 2 ] ; then
     number=$(( $number + "$2" ))
fi
a=0
while [ $number -gt 0 ] ; do

  if [ $number -ge 1000 ] ; then
    ans="$ans M"
    a=1000
  elif [ $number -ge 900 ] ; then
    ans="$ans CM"
    a=900
  elif [ $number -ge 500 ] ; then
    ans="$ans D"
    a=500
  elif [ $number -ge 400 ] ; then
    ans="$ans CD"
    a=400
  elif [ $number -ge 100 ] ; then
    ans="$ans C"
    a=100
  elif [ $number -ge 90 ] ; then
    ans="$ans XC"
    a=90
  elif [ $number -ge 50 ] ; then
    ans="$ans L"
    a=50
  elif [ $number -ge 40 ] ; then
    ans="$ans XL"
    a=40
  elif [ $number -ge 10 ] ; then
    ans="$ans X"
    a=10
  elif [ $number -ge 9 ] ; then
    ans="$ans IX"
    a=9
  elif [ $number -ge 5 ] ; then
    ans="$ans V"
    a=5
  elif [ $number -ge 4 ] ; then
    ans="$ans IV"
    a=4
  elif [ $number -ge 1 ] ; then
    ans="$ans I"
    a=1
  fi
  number=$(( $number - $a ))

done
answer="$(echo -e "${ans}" | tr -d '[:space:]')"
echo $answer

