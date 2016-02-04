#!/bin/sh

set -e

export VENDOR=samsung
export DEVICE=kltedcmactive
./../../$VENDOR/klte-common/setup-makefiles.sh $@
