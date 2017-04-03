#!/usr/bin/perl

use strict;
use feature qw/state say/;

#1.
#foreach (@ARGV) {
#	if(@ARGV < 1) {
#		die "no enough argument";
#	}else {
#		my $file_name = './image/' . $_;
#		if(! open USER_FH, "<", $file_name) {
#			die "can not open file";
#		}
##		while (<USER_FH>) {
##			chomp;
##			say $_;
##		}	
#		
#		my @list = <USER_FH>;
#		my @reverseList = reverse @list;
#		say @reverseList;
#		
#	}
#}

#2.
#my $rule_line = "1234567890" x 3;
#say $rule_line;
#my @list = <STDIN>;
#my $style = "%20s\n" x @list;
#printf $style, @list;


#3.
my @list = qw/hello good-bye youare pig dog name/;
my $length = <STDIN>;
chomp($length);
my $style = "%${length}s\n" x @list;
printf $style, @list; 









