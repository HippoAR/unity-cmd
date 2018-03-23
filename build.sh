#! /bin/sh

echo "Attempting to build $(pwd) for iOS"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -logFile $(pwd)/unity.log \
  -serial UNITY_SERIAL_NUMBER \
  -username UNITY_USERNAME \
  -password UNITY_PASSWORD \
  -projectPath $(pwd) \
  -executeMethod Build.MyBuild.BuildIOS \
  -quit

echo 'Logs from build'
cat $(pwd)/unity.log
