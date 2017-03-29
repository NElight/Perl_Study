#! /usr/bin/perl
use feature qw/state/;

#子程序
sub marine {
	$n += 1;
	print "hello, sailor number $n!\n";
}
&marine;
&marine;
&marine;
&marine;

#子程序不存在有返回值和没有返回值，默认都有返回值，是子程序内计算的最后一行结果
sub sum_of_fred_and_barney {
	print "hey , you called the sub\n";
	$fred + $barney;#这就是返回值
}

$fred = 3;
$barney = 4;
$wilma = &sum_of_fred_and_barney;
print "$wilma\n";

sub large_of_fred_or_barney {
	if($fred > $barney) {
		$fred;
	}else {
		$barney;
	}
}

sub max {
#	my ($m, $n);
#	($m, $n) = @_;
	my ($m, $n) = @_;
	if($_[0] > $_[1]) {
		$_[0];
	}else {
		$_[1];
	}
}

sub max {
	my($max_so_far) = shift @_;
	foreach (@_) {
		if($_ > $max_so_far) {
			$max_so_far = $_;
		}
	}
	$max_so_far;
}

#调用子程序时一般可以省略&符号，但是如果子程序的名称和系统函数名称相同，则必须加上&符号
sub chomp {
	print "munch, munch!\n";
}
&chomp;

#state
sub marine {
	state $n = 0;
	$n += 1;
	print "hello, sailor number is $n\n";
}








