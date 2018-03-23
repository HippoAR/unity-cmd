#! /bin/sh

project="xx"

echo "Attempting to build $project for OS X"
/Applications/Unity/Unity.app/Contents/MacOS/Unity
  -batchmode
  -nographics
  -silent-crashes
  -logFile $(pwd)/unity.log
  -projectPath $(pwd)
  -quit

echo 'Logs from build'
cat $(pwd)/unity.log
