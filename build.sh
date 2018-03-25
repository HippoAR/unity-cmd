#! /bin/sh

echo "Attempting to build $(pwd)"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -logFile \
  -projectPath $(pwd) \
  -buildTarget iOS \
  -executeMethod Build.MyBuild.BuildIOS \
  -quit
