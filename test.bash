#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Riku Kinjo
# SPDX-License-Identifier: BSD-3-Clause

ng () {
       echo ${1}行目の入力に問題あり
}

echo 3| ./pesky_windows
[ "$?" = 0 ] || ng $((LINENO - 1))
[ "$?" = 0 ] && echo OK

echo -3| ./pesky_windows
[ "$?" = 0 ] || ng $((LINENO - 1))
[ "$?" = 0 ] && echo OK

echo  0| ./pesky_windows
[ "$?" = 0 ] || ng $((LINENO - 1))
[ "$?" = 0 ] && echo OK

echo 100| ./pesky_windows
[ "$?" = 0 ] || ng $((LINENO - 1))
[ "$?" = 0 ] && echo OK

echo 5.8| ./pesky_windows
[ "$?" = 0 ] || ng $((LINENO - 1))
[ "$?" = 0 ] && echo OK

echo ABC| ./pesky_windows
[ "$?" = 0 ] || ng $((LINENO - 1))
[ "$?" = 0 ] && echo OK
