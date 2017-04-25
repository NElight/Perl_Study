#!/usr/bin/perl

use strict;
use feature qw/state say/;

my $what = 'fred';
my $str = "fredfredfred";
my $rel = ($str =~ /($what){3,}/);
if ($rel) {
	say "match";
}

if (@ARGV > 0) {
	say "@ARGV";
	foreach my $filename (@ARGV) {
		my $new_filename = $filename . '.out';
		open FILEIN, "<", $filename;
		open FILEOUT, ">>", $new_filename;
		
		while (<FILEIN>) {
			say $_;
		}
		
		select FILEOUT;
		while (<FILEIN>) {
			
			chomp;
			s/fred/\n/ig;
			s/wilma/fred/ig;
			s/\n/wilma/ig;
			
			print;
		}
	}
}
select STDOUT;

$^I = '.bak';
while (<>) {
	s/^/##copyright yzg\n/;
	print;
}


