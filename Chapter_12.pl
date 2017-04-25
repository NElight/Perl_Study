#!/usr/bin/perl

use strict;
use feature qw/state say/;

my $filename = "/usr/bin/perl";
#-e 检测文件是否存在
if (-e $filename) {
	say "exist";
}

#-M检测文件修改时间
open CONFIG, $filename;
if (-M CONFIG > 28) {
	say "TOO OLD";
}
my $file_size = -s CONFIG;
say $file_size;
close CONFIG;

#  _表示上次打开的句柄
if (-r $filename && -w _) {
	say "yes";
}

if (-r -w $filename) {
	say "yes";
}











