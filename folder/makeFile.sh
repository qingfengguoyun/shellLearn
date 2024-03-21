#!/bin/bash
 echo "test"
# ls ./
 folder='./'
 mkdir ${folder} ;
 for i in {1..3};do
	touch "${folder}${i}.txt";

done
