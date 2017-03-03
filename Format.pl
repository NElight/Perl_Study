#!/usr/bin/perl
$text = "google runoob taobao";
format STDOUT =
first: ^<<<<<  # 左边对其，字符串长度为6
	$text
second: ^<<<<<
	$text
third: ^<<<<  # 左边对其，字符长度为5，taobao最后一个o被截断
	$text
.
write