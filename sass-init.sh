#!/bin/bash
# sass-init.sh: a shell script to generate a Sass architecture from a Manifest file
for i in `grep -P '^\s*@import\s+([\x27\x22]).+\1' $1 | sed -r '/^$/d;s/.*([\x27\x22])(.+)\1.*/\2/'`;
do
  DIR=`dirname $i`
  FIL=`basename $i`
  EXT=".sass"
  if [ -z "$2" ] || [ "$2" != "sass" ]
  then
    EXT=".scss"
  fi
  PRE=""
  if [ -z "$3" ] && [ "$3" != "no-prefix" ]
  then
    PRE="_"
  fi
  FIL="${DIR}/${PRE}${FIL}${EXT}"
  mkdir -p $DIR
  touch $FIL
done
