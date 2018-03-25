#! /bin/sh

echo "Attempting to build $(pwd) for iOS"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -logFile \
  -serial $UNITY_SERIAL_NUMBER \
  -username $UNITY_USERNAME \
  -password $UNITY_PASSWORD \
  -quit

/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -logFile \
  -projectPath $(pwd) \
  -buildTarget iOS \
  -executeMethod Build.MyBuild.BuildIOS \
  -quit

/Applications/Unity/Unity.app/Contents/MacOS/Unity -quit -batchmode -returnlicense -logFile

echo 'Logs from build'
cat $(pwd)/unity.log
