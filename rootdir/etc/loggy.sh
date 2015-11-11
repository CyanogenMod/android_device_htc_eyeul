#!/bin/sh
# loggy.sh.

date=`date +%F_%H-%M-%S`
logcat -v time -f  /storage/sdcard0/cm13logcat_${date}.txt
