#!/usr/bin/perl

use strict;
use feature qw/state say/;

#1.
#my %name_hash = (fred => 'flintstone', barney => 'rubble', wilma => 'flintstone',);
#my $last_name = <STDIN>;
#chomp($last_name);
#say $name_hash{$last_name};

#2.
#if(!open USER_FH, "<", "./image/test6") {
#	die "can not open file";
#}
#
#my %num_hash;
#while(<USER_FH>) {
#	chomp;
#	$num_hash{$_} = $num_hash{$_} + 1;
#}
#
#while((my $key, my $value) = each %num_hash) {
#	say "$key => $value";
#}

#3.
my $length;
foreach (keys %ENV) {
	my $temp = length $_;
	if($temp > $length) {
		$length = $temp;
	}
}

foreach (sort keys %ENV) {
	printf "%${length}s =>  %s\n", $_, $ENV{$_};
}


