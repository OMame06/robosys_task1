#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Riku Kinjo
# SPDX-License-Identifier: BSD-3-Clause

ng () {
       echo ${1}行目の入力に問題あり
       out=1
}

res=0

out=0
echo 3| ./pesky_windows
[ "$?" = 0 ] || ng $((LINENO - 1))
[ "$out" = 0 ] && echo OK

out=0
echo -3| ./pesky_windows
[ "$?" = 0 ] || ng $((LINENO - 1))
[ "$out" = 0 ] && echo OK

out=0
echo  0| ./pesky_windows
[ "$?" = 0 ] || ng $((LINENO - 1))
[ "$out" = 0 ] && echo OK

out=0
echo 100| ./pesky_windows
[ "$?" = 0 ] || ng $((LINENO - 1))
[ "$out" = 0 ] && echo OK

out=0
echo 5.8| ./pesky_windows
[ "$?" = 0 ] || ng $((LINENO - 1))
[ "$out" = 0 ] && echo OK

out=0
echo ABC| ./pesky_windows
[ "$?" = 0 ] || ng $((LINENO - 1))
[ "$out" = 0 ] && echo OK

[ "$res" = 0 ] && echo OK

exit $res
