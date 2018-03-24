#! /bin/sh

echo "Attempting to build $(pwd) for iOS"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -logFile $(pwd)/unity.log \
  -username $UNITY_USERNAME \
  -password $UNITY_PASSWORD \
  -serial $UNITY_SERIAL_NUMBER \
  -projectPath $(pwd) \
  -buildTarget iOS \
  -executeMethod Build.MyBuild.BuildIOS \
  -quit

echo 'Logs from build'
cat $(pwd)/unity.log
