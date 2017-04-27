#!/usr/bin/perl

use strict;
use feature qw/say/;

#system/exec system调用其它进程后等待返回，   exec调用其他进程后直接退出

#system "date";
#exec "date";

#``反引号捕获输出结果
#my $now = `date`;
#say $now;

my @function = qw{int rand sleep length hex eof not exit sqrt umask};
my %about;
foreach (@function) {
	$about{$_} = `perldoc -t -f $_`;
}
foreach (keys %about) {
	say $_ . ":" . $about{$_};
}

#开启异步进程并保持通讯
open DATE, "date|" or die "cannot pipe from date:$!";
open MAIL, "|mail merlyn" or die "cannot pipe to mail:$!";


my $now = <DATE>;
print MAIL "the time is now $now";

#kill发送信号
kill 2, 4201 or die "cannot signal 4201 with SIGINT";

#判断进程是否存活
my $pid = 2342;
unless (kill 0, $pid) {
	warn "$pid has gone away!";
}

my $temp_directory = "/tmp/myprog.$$";
mkdir $temp_directory, 0700 or die "cannot create $temp_directory";
sub clean_up {
	unlink glob "$temp_directory/*";
	rmdir $temp_directory;
}

sub my_int_handler {
	&clean_up;
	die "interrupted, exiting";
}

$SIG{'INT'} = 'my_int_handler';
&clean_up;













