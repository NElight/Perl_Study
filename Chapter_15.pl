#!/usr/bin/perl

use strict;
use feature qw/say/;

use 5.24.1;

#~~Ö»ÄÜÆ¥Åä²Ù×÷·û
my @names1 = ("1");
my @names2 = ("1");
#say "the arrays have the same elements"  if @names1 ~~ @names2;

#given-when
given($ARGV[0]) {
	when ($_ ~~ /fred/i) {say "name has fred"}
	when (/^fred/) {say "name has fred in head"}
	default {say "i dont see a fred"}
}