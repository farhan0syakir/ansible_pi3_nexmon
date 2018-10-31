#!/bin/bash
curr_time="2018-10-31 17:40:55"
d1=`date -d "1 minute ago" +%s`
# d1=`date -d "1 minute ago"`
# echo "$d1"

awk 'f;/Station/{f=1}' coba-02.csv |awk '{ print $1$2" "$3$4" "$5$6 }'|sort --unique | grep -v "DA:A1:19" > result.csv

#run awk
awk -vcurr_time="$curr_time" -f logic.awk result.csv 
