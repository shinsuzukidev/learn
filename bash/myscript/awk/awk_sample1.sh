#!/bin/bash


cat test.csv | awk '
 #-------------------- begin
 BEGIN { 
   print "job start" 
   FS=","
   RS="\n" 
   OFS="-"
 }
 #-------------------- job
 { 
   print $NF ":" $1 "-" $2 "-" $3 
 }
 #-------------------- end 
 END { 
   print "job end" 
 }
'
