#!/usr/bin/env bash

cd i3
#git co -b 4.9.1

autoreconf --force --install
rm -Rf build/
mkdir build
# shellcheck disable=SC2164
cd build/
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make -j8
sudo make install

# ----------------------------------------------------------------------------
exit 0
