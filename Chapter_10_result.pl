#!/usr/bin/perl

use strict;
use feature qw/state say/;

my $num = int(1 + rand 100);
while (<>) {
	chomp;
	if ($_ == "quit" || $_ == "exit" || $_ == "" || !defined($_)) {
		last;
	}elsif ($_ < $num) {
		say "too hight";
	}elsif ($_ > $num) {
		say "too low";
	}
}