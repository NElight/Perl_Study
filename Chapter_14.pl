#!/usr/bin/perl 

use strict;
use feature qw/state say/;

#index
my $big = "abcdefg";
my $small = "de";
my $where = index($big , $small);
say $where;

$where = index($big, "d", $where + 1);
say $where;

#rindex
my $last_slash = rindex("/etc/passwd", "/", 6);
say $last_slash;

#substr 
my $part = substr($big, 2, 4);
say $part;

$part = substr($big, -3, 2);

#直接修改字符串
my $string = "hello, world";
substr($string, 0, 5) = "goodbye";
say $string;

#修改字符串中的特定部分
substr($string, -20) =~ s/fred/barney/g;

substr($string, 0, 5, "goodbye");

#sprintf
my $yr = 23455;
my $mn = 3245;
my $da = 324;
my $data_tag = sprintf "%4d/%2d/%2d", $yr, $mn, $da;

my $money = sprintf "%.2f", 2.499997;
say $money;

sub big_money{
	my $number = sprintf "%.2f", shift @_;
#	1 while $number =~ s/^(-?\d+)(\d\d\d)/$1, $2/);
}

#制定排序方法
sub sort_method {
	if ($a < $b) {
		-1;
	}elsif ($a > $b){
		1;
	}else {
		0;
	}
}

sort sort_method my @array;

# <=> 比较数字   cmp比较字符串
sub by_number{$a <=>$b}
sub by_str{$a cmp $b}


sub by_score {
#	$score{$b} <=> $score{$a};
}





