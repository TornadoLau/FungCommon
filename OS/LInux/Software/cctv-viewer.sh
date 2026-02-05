#!/bin/bash
apt-get update
apt-get -y upgrade
apt-get -y install git
git clone --recurse-submodules https://github.com/iEvgeny/cctv-viewer.git
cd cctv-viewer
apt install -y qml-module-qtquick-controls qml-module-qtquick-controls2 qml-module-qtquick-dialogs qml-module-qtmultimedia
apt update -y && apt install -y  \
  build-essential \
  cmake \
  qttools5-dev \
  qtbase5-dev \
  qtdeclarative5-dev \
  qtmultimedia5-dev \
  qttranslations5-l10n \
  libgtest-dev \
  libavutil-dev \
  libavformat-dev \
  libavdevice-dev \
  libva-dev
  
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DPACKAGER=make
make install
