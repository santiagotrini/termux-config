#! /bin/bash

unzip spimsimulator-code-r764.zip
cd spimsimulator-code-r764/spim
cp ../../Makefile .
make && make install
sleep 1
