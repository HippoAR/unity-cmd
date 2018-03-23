#! /bin/sh

# See $BASE_URL/$HASH/unity-$VERSION-$PLATFORM.ini for complete list
# of available packages, where PLATFORM is `osx` or `win`
BASE_URL=https://netstorage.unity3d.com/unity

download() {
  file=$1
  url="$BASE_URL/$UNITY_INSTALLER_HASH/$file"

  echo "Downloading from $url: "
  curl -o `basename "$file"` "$url"
}

file="Unity-$UNITY_VERSION.pkg"
if [ -e "$file" ]
then
	echo "$file exists."
else
	download "MacEditorInstaller/Unity-$UNITY_VERSION.pkg"
fi

file="UnitySetup-iOS-Support-for-Editor-$UNITY_VERSION.pkg"
if [ -e "$file" ]
then
	echo "$file exists."
else
  download "MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-$UNITY_VERSION.pkg"
fi
