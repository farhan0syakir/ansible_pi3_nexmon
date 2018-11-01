#!/bin/bash
csv_dump="coba-02.csv"
#one_minute_ago=`date -d "1 minute ago" +"%Y-%m-%d %H-%M:%S"`
one_minute_ago="2018-10-31 17:40:55"
# d1=`date -d "1 minute ago"`
echo "$one_minute_ago"
awk 'f;/Station/{f=1}' "$csv_dump" |awk '{ print $1$2" "$3$4" "$5$6 }'|sort --unique | grep -v "DA:A1:19" > temp_1.csv

#run awk
awk -vone_minute_ago="$one_minute_ago" -f logic.awk temp_1.csv > temp_2.csv
#versify
awk -F"," '{print $3}' temp_2.csv | sort

#hapus sampah
rm -rf temp_1.csv temp_2.csv