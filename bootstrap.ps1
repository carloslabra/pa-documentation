# get cmake (and 7-zip) from AWS and add to dependencies

$cmakeZip="cmake-3.3.1-win.7z"
$bsDir=".\dependencies\bootstrap"

# make a directory for temp bootstrap stuff to go ...
if ( !(Test-Path $bsDir) )
{
  New-Item -ItemType directory -Path $bsDir
}

# Get required binaries
Invoke-WebRequest -Uri https://s3-eu-west-1.amazonaws.com/particle-analytics/dependencies/windows/7za.exe -Method Get -OutFile $bsDir\7za.exe
Invoke-WebRequest -Uri https://s3-eu-west-1.amazonaws.com/particle-analytics/dependencies/windows/cmake-3.3.1-win.7z -Method Get -OutFile $bsDir\$cmakeZip

# extract required binaries, with some cmake dir-name tidying
cd $bsDir
if ( Test-Path cmake )
{
  Remove-Item cmake -Recurse -Force
}

Invoke-Expression -Command ".\7za.exe x $cmakeZip -ocmake -y"

cd ../..
