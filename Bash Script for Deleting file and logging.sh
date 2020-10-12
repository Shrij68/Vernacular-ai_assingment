#!/bin/sh

path="/home/ubuntu/audios/"
#gets 48 hours old .wav files only
completpath=$(find $path -maxdepth 1 -name "*.wav"  -type f -mmin +2880)
#present time
timestamp=`date +%d-%m-%Y`
#log file name
filenamelog=deleted-files-$timestamp.log

log=$path$filenamelog
deletedate=$(date -Is)
#delets 48hours old .wav files 
for filename in $completpath

do

        onlyfilename=$(basename $filename)
        ctime=$(stat -c %y $filename)
        rm $filename
        echo $onlyfilename $ctime $deletedate>>$log

done
