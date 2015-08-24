#!bin/bash

if [ ! -f x/b.rtf ]
then
  mv x/a.rtf ../cron
  mv b.rtf x/
else
  mv x/b.rtf ../cron
  mv a.rtf x/
fi
