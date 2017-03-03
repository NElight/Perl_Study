#!/usr/bin/perl
#定义函数
sub hello {
	print "Hello world;\n";
}

hello();

sub Average {
	#获取所有传入的参数
	$n = scalar(@_);
	$sum = 0;
	
	foreach $item (@_) {
		$sum += $item;
	}
	$average = $sum / $n;
	print "@_\n";
	print "$_[0] \n";
	print "$average\n";
}
Average (10, 20, 30);

#向字程序传入数组
sub PrintList {
	my @list = @_;
	print "@list\n";
}

$a = 10;
@b = qw/1 2 3 4/;
PrintList($a, @b);

#向子程序传递hash
sub PrintHash {
	my %hash = @_;
	foreach my $key (keys %hash) {
		my $value = $hash{$key};
		print "$key : $value \n";
	}
}

%hash = (-name => 'runoob', 'age' => 3);
PrintHash(%hash);

#子程序的返回值, 不是用return则返回函数最后一行的值，使用return返回值
sub add_a_b {
	$_[0] + $_[1];
	
#	return $_[0] + $[1];
}
print add_a_b(1, 2);

sub somefunc {
	my $variable;
	my ($another, @an_array, @a_hash);
}

#local 给全局变量一个临时的值，存在于他以及他的子程序中。
$string = "hello, world";
sub PrintRunoob {
	local $string;
	$string = "hellow, runbool";
	PrintMe();
	print "$string\n";
}

sub PrintMe {
	print "$string\n";
}

sub PrintHello {
	print "$string \n";
}

PrintRunoob();
PrintHello();

#state操作符功能类似于c中的static

use feature 'state';
sub PrintCount {
	state $count = 0;
	print "$count\n";
	$count++;
}

for (1..5) {
	PrintCount();
}







