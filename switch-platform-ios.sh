#! /bin/sh

echo "Switch build target to ios"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -logFile \
  -projectPath $(pwd) \
  -buildTarget iOS \
  -quit
