#!/usr/bin/env bash

# f4964fa Merge pull request #4122 from stapelberg/bindingstate
# 4d9c313 _con_move_to_con: Traverse below con to check for fullscreen
# cf09cc7 Merge pull request #4125 from orestisfl/move-fullscreen-to-ws
# 9bc3f9c Merge remote-tracking branch 'vanilla/next' into gaps-next
# 4085c4b the stable version can now be found in the stable branch (#4129)
# 4e676ef i3-msg: add missing option (#4128)
# b402ce2 binding state post-submit review fixes
# 5bc5fc1 Merge pull request #4131 from stapelberg/bindingstate
# 2444fc6 Merge remote-tracking branch 'vanilla/next' into gaps-next
# 24e30a8 Fixed a typo in the docs
# 51b0583 Merge pull request #4133 from VasilyFomin/patch-1
# 025743e Fix i3bar Xorg memory leak (#4140)
#*d925f43 Merge remote-tracking branch 'vanilla/next' into gaps-next
# 874d862 route_click: Fix regression: release mouse
# a45eb81 Merge pull request #4144 from i3/orestisfl-patch-2
# 71b0f01 Merge remote-tracking branch 'vanilla/next' into gaps-next
# 2c1b18b Fixed a typo in the user's guide
# 1449d48 Merge pull request #4146 from lukaskern/next
# 838b600 kick tray clients before destroying the bar
# e674073 Merge pull request #4147 from compguy284/kick_tray_clients
# e29cb16 Merge remote-tracking branch 'vanilla/next' into gaps-next
cd i3
git co -b d925f43

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
