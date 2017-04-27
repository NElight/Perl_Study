#!/usr/bin/perl

use strict;
use feature qw/say/;

#eval
eval{my $barney = 5 / 0};
say "some error occurred:$@" if $@;

#grep
my @odd_numbers = grep {$_ % 2} 1..1000;
say "@odd_numbers";

#map Ó³Éä

#stat
#my $mtime = (stat $some_file)[1, 9, -1];
#say $mtime;