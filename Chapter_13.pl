#!/usr/bin/perl

use strict;
use feature qw/state say/;

my @all_file = glob "*";
say "@all_file";

my @all_pm_file = glob "*.pm";
say "@all_pm_file";

chdir "/etc";
my @all_file = glob "*";
say "@all_file";

my $name = "fred";
my @lines = readline $name;
say "@lines";

opendir DIRNAME, "~";
foreach my $file (readdir DIRNAME) {
	say $file; 
}
