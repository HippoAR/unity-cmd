#! /bin/sh

echo "Add License"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -logFile \
  -serial $UNITY_SERIAL_NUMBER \
  -username $UNITY_USERNAME \
  -password $UNITY_PASSWORD \
  -quit
