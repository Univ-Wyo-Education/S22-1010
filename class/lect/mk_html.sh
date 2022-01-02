#!/bin/bash

DIR=../../../

# echo "1=$1 2=$2"
bn=$(basename $1 .raw.md)
# echo "bn=$bn"

m4 -P $bn.raw.md >$bn.tmp
blackfriday-tool ./$bn.tmp > $bn.tmp2
cat ./${DIR}/css/pre ./${DIR}/css/markdown.css ./${DIR}/css/post ./${DIR}/css/md.css ./${DIR}/css/hpre $bn.tmp2 ./${DIR}/css/hpost >$bn.html
echo "file://$(pwd)/$bn.html" >>open.1
rm -f $bn.tmp $bn.tmp2
