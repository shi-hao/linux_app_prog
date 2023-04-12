#!/bin/bash


var="dfhjk_fewsk>dfakhi=vshbjy_df>brfdgr<rewrt"

echo $var

tmp=${var#*>} #掐头，最小匹配（去除从前往后第一个>及前面的所有字符）
echo $tmp

tmp=${var%%>*} #去尾，最大匹配（去除从后往前最后一个>及后面的所有字符）
echo $tmp

tmp=${var%#*>} #去尾，最大匹配（去除从后往前最后一个>及后面的所有字符）
echo $tmp



filename=/dir1/dir2/dir3/my.file.txt
echo $filename

# ${file#*/}：删掉第一个 / 及其左边的字符串：dir1/dir2/dir3/my.file.txt
# ${file##*/}：删掉最后一个 / 及其左边的字符串：my.file.txt
# ${file#*.}：删掉第一个 . 及其左边的字符串：file.txt
# ${file##*.}：删掉最后一个 . 及其左边的字符串：txt
# ${file%/*}：删掉最后一个 / 及其右边的字符串：/dir1/dir2/dir3
# ${file%%/*}：删掉第一个 / 及其右边的字符串：(空值)
# ${file%.*}：删掉最后一个 . 及其右边的字符串：/dir1/dir2/dir3/my.file
# ${file%%.*}：删掉第一个 . 及其右边的字符串：/dir1/dir2/dir3/my

tmp=${filename%/*}
echo $tmp
