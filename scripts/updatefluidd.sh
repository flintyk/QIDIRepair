#!/bin/bash
#name:Update Fluidd
#dir:General/Fluidd
#description:Update Fluidd

cd ~/fluidd
rm -R ./*
rm .version
wget -q -O fluidd.zip https://github.com/fluidd-core/fluidd/releases/latest/download/fluidd.zip
unzip fluidd.zip
rm fluidd.zip
sudo service nginx restart

exit 0