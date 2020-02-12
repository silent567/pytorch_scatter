#!/bin/bash

if [ "${TRAVIS_OS_NAME}" = "linux" ]; then
  wget -q https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
  chmod +x miniconda.sh
  ./miniconda.sh -b
  PATH=/home/travis/miniconda3/bin:${PATH}
fi

if [ "${TRAVIS_OS_NAME}" = "osx" ]; then
  wget -q https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -O miniconda.sh
  chmod +x miniconda.sh
  ./miniconda.sh -b
  PATH=/home/travis/miniconda3/bin:${PATH}
fi


if [ "${TRAVIS_OS_NAME}" = "windows" ]; then
  choco install miniconda3
fi
