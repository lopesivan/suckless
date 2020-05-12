git format-patch --stdout HEAD^ >  ../_patches/st-font-size-`date +%Y%m%d`-`git log -n1 --format=format:"%h"`.diff
