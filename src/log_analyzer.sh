if [ -f $1 ];

then
sort $1 | uniq -u | wc -l
awk -F ' - ' '{print $1}' $1 | sort | uniq | wc -l
awk -F ' - ' '{print $4}' $1 | sort | uniq | wc -l

else
echo 'File does not exist and is not a regular file'
fi