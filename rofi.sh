#!/usr/bin/env bash

cd rofi
git co -b 4821320

autoreconf --force --install
./configure
make -j8
sudo make install

# ----------------------------------------------------------------------------
exit 0
