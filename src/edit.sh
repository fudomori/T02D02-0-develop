echo 'File directory T02DO2-0/src:'
read file

echo 'String search:'
read search

echo 'String replace:'
read replace


if [ -f $file ];

then 
echo 'File exists and is a regular file'
sed -i '' "s/$search/$replace/g" $file

size=$(stat -f %z $file )
hash=$(shasum -a 256 $file | cut -b -64 )
date=$(date +"%Y-%m-%d %H:%M" )

echo src/$file - "$size "- "$date" - "$hash" - sha256 >> files.log

else
echo 'File does not exist and is not a regular file'
fi