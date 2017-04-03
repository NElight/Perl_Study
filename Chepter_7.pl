#!/usr/bin/perl

use strict;
use feature qw/state say/;

$_ = "yabba dabba doo1";
if(/abba/) {
	say "it matched\n";
}

#匹配属性
if(/\p{Space}/) {
	say "the string has some whitespace.\n";
}

if(/\p{Digit}/) {
	say "the string has a digit.\n";
}

if(/\p{Hex}\p{Hex}/) {
	say "the string has a pair of hex digits.\n";
}

#匹配非属性
if(/\P{Space}/) {
	say "the string has one or more non-whitespace characters.\n";
}

#.号匹配一个字符，任何元字符加上\转义表示原来的含义
$_ = 'betty';
if(/bet.y/) {
	say "match bet.y\n";
}

$_ = 'a realo \\ backslash';
if(/\\/) {
	say "match \\.";
}

#*号匹配前面的字符0次或任意次
$_ = "fred\t\t\tbarney";
if(/fred\t*barney/) {
	say "match \*";
}
$_ = "freda;fjl a;ljdf barney";
if(/fred.*barney/) {
	say "match \.\*";
}

#+匹配一次或多次
$_ = "fredbarney";
if(/fred +barney/) {
	say "match +";
}
#?出现一次或不出现
if(/fred ?barney/) {
	say "match ?";
}

#()对字符串分组
$_ = "fredfredfred";
if(/(fred)+/) {
	say "match (fred)";
}

#\1 \2 \3
$_ = "abba";
if(/(.)\1/) {
	say "match same charactrer next to itself";
}

$_ = "yabba dabba doo";
if(/y(....) d\1/) {
	say "match .... d....";
}

if(/y(.)(.)\2\1/) {
	say "match abba";
}

#区分第几组，按照左括号的顺序来编号
if (/y((.)(.)\3\2) d\1/) {
	say "it match yabba dabba";
}

$_ = "aa11bb";
#使用\g{N}来引用捕获组中的匹配，N可以为负数，反向查询
if(/(.)\g{1}11/) {
	say "match aa11";
}

#\g{-N}表示反向查询距离此处的位置，便于维护
$_ = "xaa11bb";
if(/(.)(.)\g{-1}11/) {
	say "match";
}

# |号表示择一匹配
$_ = "fred	barney";
if(/fred|barney|betty/) {
	say "match fred|barney|betty";
}

if(/fred(|\t)+barney/) {
	say "match fred+barney";
}

#字符集 []
#[abcwxyz] = [a-cw-z] [a-zA-Z]
$_ = "the HAL-9000 requires authorization to continue";
if(/HAL-[0-9]+/) {
	say "the string mentions some model of HAL computer.";
}
#[^n\-z] 匹配除n,-,z之外的任意字符
#/a写在正则末尾表示按照ASCII语义展开
if(/HAL-[\d]+/a) {
	say "match HAL-shuzi in /a"
}








