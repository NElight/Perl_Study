#!/usr/bin/perl

use strict;
use feature qw/state say/;
use 5.24.1;

#m// m%% m## 匹配符

#模式匹配修饰符 /a ASCII
#/i 忽略大小写
say "would you like to play a game?";
#chomp($_ = <STDIN>);
if(/yes/i) {
	say "in that case , i recommend that you go bowling.";
}
#/s匹配任意字符, .无法匹配换行符,如果用/s修饰后，可以匹配任意字符
$_ = "i saw barney\ndown at the bowling alley\nwith Fred\nlast night.\n";
if(/barney.*Fred/s) {
	say "that string mentions Fred after Barney!";
}
#/x允许在正则表达式中随意加上空白符，从而使它更易阅读、理解

#组合选项修饰符
if(/barney.*fred/is) { #表示/s，/i两种修饰符
	say "that string mentions Fred after Barney!";
}

if(m{
	barney #小伙子 barney
	.*     #夹在中间的不管什么字符
	fred   #大嗓门的fred
}six) {
	say "that string mentions Fred after Barney!";
}

#绑定操作符
#=~绑定操作符，拿右边的模式匹配左边的字符串，而不是默认匹配$_
my $some_other = "i dream of betty rubble.";
if($some_other =~ m/\brub/i) {
	say "aye, ther is the rub.";
}

say "do you like perl?";
my $likes_perl = <STDIN> =~ /\byes\b/i;
if($likes_perl) {
	say "you said earlier taht you like perl.";
}

#模式中的内插
my $what = "larry";
#while(<>) {
#	if(/\A($what)/) {
#		say "we saw $what in beginning of $_";
#	}
#}

#捕获变量
$_ = "hello there,neighbor";
if(/\s([a-zA-Z]+),/) {
	say "the word is $1";
}

#?: 表示不捕获，只是为了分组
if(/(?:bronto)?saurus (steak|burger)/) {
	say "Fred wants a $1";
}

#?<LABEL>PATTERN 将捕获的内存直接存入变量
my $name = 'Fred and Barney';
if($name =~ m/(?<name1>\w+) (?:and|or) (?<name2>\w+)/) {
	say "i saw $+{name1} and $+{name2}";
}

#my $str = "jack and rose"; 
#if ($str =~ /(?<first>\S+) (?:and|or) (?<second>\S+)/) { 
#    my ($first, $second) = ($+{first}, $+{second}); 
#    print "$first\n$second\n";  # jack, rose 
#} 

#$&正则表达式匹配的字符串  $`保存了匹配字符串之前的部分  $'保存了匹配字符串之后的部分
if("hello there, neighbor" =~ /\s(\w+),/ip) {
	say "that actually matched '$&'";
	say "that was ($`)($&)($')";
	say "that was (${^PREMATCH})(${^MATCH})(${^POSTMATCH})";#使用\p才能使用这三个名称
}

#使用{}制定匹配重复次数 /a{5,15}/ 匹配a5到15次 /(fred){3,}/无上限 /(fred){8}只能匹配8次/

while(<>){
	chomp;
	if(/YOUR_PATTERN_GOES_HERE/) {
		say "Matched: |$`<$&>$'|";
	}else {
		say "No match: |$_|";
	}
}







