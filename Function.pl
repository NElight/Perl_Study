#!/usr/bin/perl
#���庯��
sub hello {
	print "Hello world;\n";
}

hello();

sub Average {
	#��ȡ���д���Ĳ���
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

#���ֳ���������
sub PrintList {
	my @list = @_;
	print "@list\n";
}

$a = 10;
@b = qw/1 2 3 4/;
PrintList($a, @b);

#���ӳ��򴫵�hash
sub PrintHash {
	my %hash = @_;
	foreach my $key (keys %hash) {
		my $value = $hash{$key};
		print "$key : $value \n";
	}
}

%hash = (-name => 'runoob', 'age' => 3);
PrintHash(%hash);

#�ӳ���ķ���ֵ, ������return�򷵻غ������һ�е�ֵ��ʹ��return����ֵ
sub add_a_b {
	$_[0] + $_[1];
	
#	return $_[0] + $[1];
}
print add_a_b(1, 2);

sub somefunc {
	my $variable;
	my ($another, @an_array, @a_hash);
}

#local ��ȫ�ֱ���һ����ʱ��ֵ�����������Լ������ӳ����С�
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

#state����������������c�е�static

use feature 'state';
sub PrintCount {
	state $count = 0;
	print "$count\n";
	$count++;
}

for (1..5) {
	PrintCount();
}







