#!/bin/bash
COMMIT=$1
DATE=$2

cd ~/Documents/Projects/iamaro

git checkout $COMMIT
mkdir -p ~/Documents/SublimePrj/SwiftReports
swiftlint --reporter json > ~/Documents/SublimePrj/SwiftReports/$DATE.json