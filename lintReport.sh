#!/bin/bash

cd ~/Documents/Projects/iamaro
git checkout dev
#return date from last 6 months format YYYY-mm-dd

FROMDATE=`date -j -v-6m +%F`

git log --after=$FROMDATE --merges --date=short --pretty='%H %ad' > ~/Documents/SublimePrj/devMerges.txt

file=~/Documents/SublimePrj/devMerges.txt
while IFS= read line
do
        # display $line or do somthing with $line
    /bin/bash ~/Documents/SublimePrj/checkoutAndSwiftlint.sh $line
done <"$file"