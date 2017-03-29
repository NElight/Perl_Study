#! /usr/bin/perl
use strict;
use feature qw/state/;
use autodie;

while(defined($line = <STDIN>)) {
	pritn "i saw $line";
}

while (<STDIN>) {
	#输入存在在默认变量$_中.只是while的默认变量是$_
	print "i saw $_";
}

foreach (<STDIN>) {
	#只是foreach中的默认变量是$_;
	print "i saw $_";
}

while(<>) {
	chomp;
	print "it was $_ that i saw!\n";
}

@ARGV = qw# larry moe curly #;
while (<>) {
	chomp;
}

print <>;
print sort <>;

print "hello, %s, your password expires in %d days!\n", $user, $days_to_die;

# %2d %g %-10s %12.3f %%
print "hello, %10s, %-10s", "name", "name";

#将格式化字符串存入变量，动态生成格式
my @items = qw(willa dino pebbles);
my $format = "the items is >>$format<<\n";
printf $format, @items;

#句柄 STDIN; STDOUT; STDERR; DATA; ARGV;ARGVOUT
open CONFIG, 'dino';
open CONFIG, '<dino';
open BEDROCK, '>fred';
open LOG, '>>logfile';
my $selected_output = 'my_output';
open LOG, "> $selected_output";
open COMFIG, '<', 'dino';
open CONFIG, '<:encoding(UTF-8)', 'dino';
open BEDROCK, '>:utf8', $file_name;

#perl -MEncode -le "print for Encode -> encodings(':all')" 终端输入可以输出perl支持的所有编码

#自动解决DOS和Unix换行不一致的情况，借助crlf层
open BEDROCK, '>:crlf', $file_name;
open BEDROCK, '<:crlf', $file_name;

#binmode
binmode STDOUT;
binmode STDERR;
binmode STDOUT, ':encoding(UTF-8)';

my $success = open LOG, '>>', 'logfile';
if(!$success) {
	#open操作失败
}
close LOG;

#die 输出给定错误，退出程序
if (! open LOG, '>>', 'logfile') {
	# $!代表默认的系统错误信息
	die "cannot create logfile:$!";
}

if (@ARGV < 2) {
	#die后的信息加上\n就不会带退出程序时的行号
	die "not enough arguments\n";
	warn "this is warning\n";
}

#warn 和die差不多，送出警告信息到标准错误流
if(! open PASSWD, '/etc/passwd') {
	die "how did you get logged in? ($!)";
}

while (<PASSWD>) {
	chomp;
	print $_;
}

print LOG "captain log, stardate 3.1415\n";
printf STDERR "%d percent complete.\n", $done / $total * 100;

#select 改变标准输出
select BEDROCK;
print "i hope mr.slate doesn not find out about this\n";
print "wilma\n";

#$| 值为1时默认输出后立即刷新
select LOG;
$| = 1;# 不要将LOG内容保存到缓冲区
select STDOUT;
print LOG "this gets written to the LOG at once\n";












