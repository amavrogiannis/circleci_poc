#!/bin/sh
BUILD_ID="$(echo $(expr $CIRCLE_BUILD_NUM))"
echo "export BUILD_ID" > /mnt/ramdisk/buildimg
echo BUILD_ID=$BUILD_ID 