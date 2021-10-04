#!/bin/bash

# checks
[[ $# != 1 ]] && echo "Usage: $0 <n>" && exit 1
! [[ $1 =~ ^[0-9]+$ ]] && echo "$1 is not a number" && exit 2

N=$1
a=0
b=1 
 
for (( i=0; i<N; i++ )); do
    fn=$((a + b))
    a=$b
    b=$fn
done
echo Fib number w/ ord $1 is $a
echo "::set-output name=result::$a"