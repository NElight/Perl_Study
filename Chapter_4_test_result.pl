#! /usr/bin/perl
use strict;
use feature qw(state);

#1.
sub total {
	my $total = 0;
	foreach (@_) {
		$total += $_;
	}
	return $total;
}

#my @fred = qw{1, 3, 5, 7, 9};
#my $fred_total = total(@fred);
#print "the total of \@fred is $fred_total.\n";
#print "enter some numbers on separate lines:";
#my $user_total = total(<STDIN>);
#print "the total of those numbers is $user_total.\n";

#2.
my @list = 1..1000;
my $rel = &total(@list);
print "rel is $rel\n";

#3.
sub average {
	my $sum = 0;
	my $num = @_;
	foreach (@_) {
		$sum += $_;
	}
	return $sum / $num;
}

sub above_average {
	my @rel;
	my $average = &average(@_);
	foreach (@_) {
		if($_ > $average) {
			push(@rel, $_);
		}
	}
	return @rel;
}

#my @fred = above_average(1..10);
#print "\@fred is @fred\n";
#print "(should be 6 7 8 9 10)\n";
#my @barney = above_average(100, 1..10);
#print "\@barney is @barney\n";
#print "(should be just 100\n";

#4.
sub greet {
	state @alreadyComeName;
	my ($name) = @_;
	push (@alreadyComeName, $name);
	my $count = @alreadyComeName;
	if($count > 1) {
#		print "hi $name, $alreadyComeName[$#alreadyComeName - 1] is also here \n ";
		print "hi $alreadyComeName[$#alreadyComeName], i have seen:@alreadyComeName[0..$#alreadyComeName - 1]\n";
	}else {
		print "hi $alreadyComeName[$#alreadyComeName], you are first one here!\n";
	}
}

greet("fred");
greet("barney");
greet("wilma");
greet("betty");








