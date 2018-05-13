#!/bin/bash

if ! command -V add-apt-repository >/dev/null 2>&1; then
    sudo apt-get install -y -q  software-properties-common ca-certificates apt-transport-https
fi

if ! command -V java >/dev/null 2>&1; then
    sudo apt-get install -y -q  python-software-properties debconf-utils
    sudo add-apt-repository -y ppa:webupd8team/java
    sudo apt-get update -y -q
    echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
    sudo apt-get install -y -q  oracle-java8-installer
fi


# bazel deps
sudo apt-get install -y -q  pkg-config zip g++ zlib1g-dev unzip wget python


if [ ! -f /etc/apt/sources.list.d/bazel.list ]; then
    echo "deb http://storage.googleapis.com/bazel-apt testing jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list
    curl https://storage.googleapis.com/bazel-apt/doc/apt-key.pub.gpg | sudo apt-key add -
fi

sudo apt-get update -y -q

# Bazel version 0.4.4 installation
wget https://github.com/bazelbuild/bazel/releases/download/0.4.4/bazel_0.4.4-linux-x86_64.deb
chmod +x bazel_0.4.4-linux-x86_64.deb
sudo dpkg -i bazel_0.4.4-linux-x86_64.deb
sudo apt-get install -f
