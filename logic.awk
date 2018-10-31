BEGIN {   FS = ","}
{
    if (curr_time < $2)   # oops! should be a == b
        #print curr_time" sebelum "$1 # ini yang kita ambil
        print $1","$2","$3","$4
    #else
       #print curr_time" setelah "$1
}