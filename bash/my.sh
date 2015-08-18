#!/bin/bash

freespace=$(df -h / | grep -E "\/$" | awk '{print$4}')

#text styling
greentext="\003[32m"
bold="\003[1m"
default="\033[0m"

#logging
logdate=$(date +"%Y%m%d")
logfile="$logdate"_report.log

#print
echo -e $bold"Quick system report for "$greentext"$HOSTNAME"$default
printf "\tSystem type:\t%s\n" $MACHTYPE
printf "\tBash Version:\t%s\n" $BASH_VERSION
printf "\tFree Space:\t%s\n" $freespace
printf "\tFiles in dir:\t%s\n" $(ls | wc -l)
printf "tGenerated on:\t%s\n" $(date +"%m%d%y")
echo -e $greentext"The summary has been saved to $logfile"$default

cat <<- EOF > $logfile
	This is a brief summary of some system information
EOF

printf "SYS:\t%s\n" $MACHTYPE >> $logfile
printf "BASH:\t%s\n" $BASH_VERSION >> $logfile
