#!/usr/bin/perl

use strict;
use feature qw/state say/;

#unless 为假时使用
unless ($a == 1) {
	say "a == 1";
}

#until
my $i = 34;
my $j = 21;
until ($j > $i) {
	say "hello";
	$j ++;
}

# if unti unless while foreach
say "abcdefg" if (1 > 0);


my $n = 0;
while ($n < 10) {
	print " ", ($n += 2);
}

#elsif
if ($n == 1) {
	say $n;
}elsif ($n == 20) {
	say 20;
}

for ($i = 1; $i < 10; $i++) {
	say '啊啊啊';
}

#last === break
while (<>) {
	if (/__END__/) {
		last;
	}
}

#next === continue
#redo 跳回本次循环最顶部

LINE：while (<>){
	foreach (1..10) {
		last LINE;
	}
}

#？：














