#!/usr/bin/perl

use File::Basename;
#use File::Basename qw//;
use File::Spec;
use feature qw/state say/;

my $loacl = "/usr/bin/perl5";
my $basename = basename $loacl;
my $basename = File::Basename::basename $loacl;
say $basename;

my $dirname = dirname $loacl;
my $basename = basename $loacl;
$basename =~ s/^/not/;
my $name_name = "$dirname/$basename";
say $name_name;

my $new_name = File::Spec-> catfile($dirname, $basename);
say $new_name;









