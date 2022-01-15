#!/bin/bash -x

for file in `ls *.txt`
do
       folderName=`echo $file | awk -F. '{print $1}'`
       #echo "checking for already existing folder"
       if [ -d $folderName ]
       then
               rm -r $folderName
       fi
       #echo creating folder ${foldername}
       mkdir $folderName
       #echo copying ${file} to ${foldername}
       cp $file $folderName;
done
