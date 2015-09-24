#!/bin/sh

cmake=cmake-3.3.1-Linux-x86_64.7z
zip=7za

bsDir=dependencies/bootstrap 
rm -rf $bsDir
mkdir -p $bsDir

# Get required binaries
wget https://s3-eu-west-1.amazonaws.com/particle-analytics/Dependencies/Linux/$zip -P $bsDir 2> /dev/null
wget https://s3-eu-west-1.amazonaws.com/particle-analytics/Dependencies/Linux/$cmake -P $bsDir 2> /dev/null

# extract cmake binaries
cd $bsDir
chmod +x $zip
./$zip x $cmake -ocmake -y
