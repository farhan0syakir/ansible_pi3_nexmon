d1=`date -d "2018-01-01 16:20:10" +%s`
d2=`date -d "2018-01-01 16:20:15" +%s`
if [ $d1 -le $d2 ]; #d1 lebih dulu dari d2
then
    echo "1" #d1 lebih dulu
else 
    echo "2" #d2 lebih dulu
fi  
