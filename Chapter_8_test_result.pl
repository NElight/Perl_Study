#!/usr/bin/perl

use strict;
use feature qw/state say/;

#1.
$_ = "beforematchafter";
if(/match/) {
	say "($`)($&)($')";
}

#2.
$_ = "Mrs.wilma";
if(/(?<word>(\w+)a\z)/) {
	say "match";
#	say "$1";
	say "$+{word}";
}


