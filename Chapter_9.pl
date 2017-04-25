#!/usr/bin/perl

use strict;
use feature qw/state say/;

# s/// 查找替换
$_ = "he is out bowling with barney tonight";
s/barney/fred/;
say $_;

s/wilma/betty/;
say $_;

s/with (\w+)/against $1 is team/;
say $_;

$_= "green scaly dinosaur";
s/(\w+) (\w+)/$2, $1/;
say $_;
s/^/huge, /;
say $_;
s/,.*een//;
say $_;
s/green/red/;
say $_;
s/\w+$/($`!)$&/;
say $_;
s/\s+(!\W+)/$1 /;
say $_;
s/huge/gigantic/;
say $_;

$_ = "fred flintstone";
if(s/fred/wilma/) {
	say "successfully replaced fred with wilma!\n";
}

#/g 修饰符，让s///替换所有可能的，不重复的替换
$_ = "home, sweet home!";
s/home/cave/g;
say $_;
$_ = "input   data\t may have    extra whitespace";
s/\s+/ /g;
say $_;

#在模式中用到的操作符在替换模式中依然可用 /i /s /x
my $original = 'fred ate 1 rib';
my $copy = $original;
$copy =~ s/\d+ ribs?/10 ribs/;
say $original;
say $copy;

(my $copy = $original) =~ s/\d+ ribs?/10 ribs/;
my $copy = $original =~ s/\d+ ribs?/10 ribs/;

$_ = "i saw barney with fred";
s/(fred|barney)/\U$1/gi;
say $_;

$_ = "my name is lilei";
s/(.*)/\U$1/g;
say $_;

#/E
$_ = "i saw barney with fred";
s/(fred|barney)/\U$1 \E with i/;
say $_;

#\l,\u
s/(fred|barney)/\u$1 \E with i/;
say $_;

#/u/L
s/(fred|barney)/\u\L$1/;
say $_;

#split
my @b = split /:/, "abc:dbe:dek:df";
say "@b";

#/\s+/;
my $test = "this is a \t      test";
my @rel = split /\s+/, $test;
say "@rel";

#split 默认以空白分割字符
$_ = "this is a \t   test";
my @rel2 = split;
say @rel2;

#join
my $joinStr = join ":", 2, 3, 4, 5, 6;
say $joinStr;

my @str = split /:/, $joinStr;
my $rel3 = join "-", @str;
say $rel3;

my $test = "fred jsfjd  adf  5 f  a  aa f";
my @rel = ($test =~ /[a-z]+/g);
say "@rel";

my %rel = ($test =~ /(\w+)\s+(\w+)/g);
say keys %rel;

#非贪婪量词 +? *? ?? {1,53}? 优先匹配次数少的

#$^I 打开文件的时候会备份

#perl -p -i.bak -w -e 's/Randall/Randal/g' fred*.bat










