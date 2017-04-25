#!/usr/bin/perl 

use strict;
use feature qw/state say/;

#$a = "zxy";

foreach $a (("abc", "def", "ghi")) {
	say $a;
}

foreach (qw/a b c d/) {
	if(defined ($a)) {
		say $a;
	}else {
		say "undef";
	}
}

my @array = qw(a b c d e);
my @reversedArray = reverse @array;
print @reversedArray;

#say $a;
