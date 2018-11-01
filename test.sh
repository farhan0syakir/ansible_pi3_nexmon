#!/bin/bash
# one_minute_ago=`date -d "1 minute ago" +%s`
one_minute_ago="2018-10-31 17:40:55"
# d1=`date -d "1 minute ago"`

awk 'f;/Station/{f=1}' coba-02.csv |awk '{ print $1$2" "$3$4" "$5$6 }'|sort --unique | grep -v "DA:A1:19" > result.csv

#run awk
awk -vone_minute_ago="$one_minute_ago" -f logic.awk result.csv > res_2.csv
#versify
awk -F"," '{print $3}' res_2.csv | sort
