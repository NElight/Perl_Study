#!/usr/bin/perl
$text = "google runoob taobao";
format STDOUT =
first: ^<<<<<  # ��߶��䣬�ַ�������Ϊ6
	$text
second: ^<<<<<
	$text
third: ^<<<<  # ��߶��䣬�ַ�����Ϊ5��taobao���һ��o���ض�
	$text
.
write