#! /bin/sh

install() {
  file=$1

  echo "Installing $file"
  sudo installer -dumplog -package $file -target /
}

install "Unity-$VERSION.pkg"
install "UnitySetup-iOS-Support-for-Editor-$VERSION.pkg"
