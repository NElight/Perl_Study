#!/usr/bin/perl

use strict;
use feature qw/state say/;

my %some_hash = ('foo', 35, 'bar', 12.4, 2.5, 'hello', 'wilma', 1.72e30, 'betty', "bye\n");
say %some_hash;
my @any_array = %some_hash;
say @any_array;

#hash 反序，键值翻转
my %inverse_hash = reverse %some_hash;
say %some_hash;
say %inverse_hash;

my %lash_name = (
	'fred' => 'flintstone',
	'dino' => undef,
	'barney' => 'rubble',
	'betty' => 'rubble',
	#左边的‘’可以省去，perl会自动加上引号
);

#keys values
my %hash = (a => 1, b => 2, c => 3,);
my @k = keys %hash;
say @k;
my @v = values %hash;
say @v;
my $count = keys %hash;
if	(%hash) {
	say "that was a true value!";
}

#each 
while ((my $key, my $value) = each %hash) {
	say "$key => $value";
}

foreach my $key (sort keys %hash) {
	my $value = %hash{$key};
	say "$key => $value";
}

my %books = (barney => 0, pebbles => undef);
#exists
if(exists $books{"pebbles"}) {
	say "hey , there is a library card for dino";
}

#delete
my $person = 'pebbles';
delete $books{$person};
say %books;

foreach (sort keys %books) {
	say $_;
	if($books{$_}) {
		say "$_ has $books{$_} items";
	}
}

# %ENV
say "PATH is $ENV{PATH}";
say "CHARACTER IS $ENV{CHARACTER}";



