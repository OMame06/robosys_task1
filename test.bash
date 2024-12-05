#!/bin/bash

ng () {
       echo ${1}行目の入力に問題あり

}

out=$(echo 3| ./pesky_windows)
[ "$?" = 0 ] || ng $((LINENO - 1))
[ "$?" = 0 ] && echo OK

out=$(echo -3| ./pesky_windows)
[ "$?" = 0 ] || ng $((LINENO - 1))
[ "$?" = 0 ] && echo OK

out=$(echo 100| ./pesky_windows)
[ "$?" = 0 ] || ng $((LINENO - 1))
[ "$?" = 0 ] && echo OK

out=$(echo ABC| ./pesky_windows)
[ "$?" = 0 ] || ng $((LINENO - 1))
[ "$?" = 0 ] && echo OK

exit $res
