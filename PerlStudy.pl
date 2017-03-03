#!/usr/bin/perl
$a = 1;
$b = "123";
$c = 1.3;
@arr = (1, 2, 3);
%e = ('a' => 1, 'b' => 2);

$x = 12345;
if (1217 + 116 == 1333) {
	# ִ�д�������
	print ("ok\n");
}

# ���� \n λ��˫�����ڣ���Ч
$str = "����̳�  \nwww.runoob.com";
print "$str\n";

# ���� \n λ�ڵ������ڣ���Ч
$str = '����̳�  \nwww.runoob.com';
print "$str\n";

# ֻ�� R ��ת��Ϊ��д
$str = "\urunoob";
print "$str\n";

# ���е���ĸ����ת��Ϊ��д
$str = "\Urunoob";
print "$str\n";

# ָ�����ֻ�ת��Ϊ��д
$str = "Welcome to \Urunoob\E.com!"; 
print "$str\n";

# ����\EΪֹ�ķǵ��ʣ�non-word���ַ����Ϸ�б��
$str = "\QWelcome to runoob's family";
print "$str\n";

$var = <<"EOF";

EOF
print "$var";


print "$var" . "str";
$c = "$var" . "$str";
print "$c";
print __LINE__ . "\n";
print __PACKAGE__;
print __FILE__;

$smile  = v9786;
$foo    = v102.111.111;
$martin = v77.97.114.116.105.110; 

print "smile = $smile\n";
print "foo = $foo\n";
print "martin = $martin\n";

=pwd
这是一个什么东西呢，这是一个多行注释
=cut

@arr = (12, 34, 56);
print "$arr[1]\n";

@arr = (1, 2, "jflafj");
print "$arr[2]";
@arr = qw/1 2 "dfjf" "afj"/;
print "@arr\n";
$arr[1] = 5;
print "@arr";

print "$arr[-1]";

@onetoten = (1..10);
print "@onetoten";
$onetoten = @onetoten;
print "$onetoten";
print "$#onetoten";

@sites = ("google", "runoob", "taobao");
print "1. \@sites = @sites\n";

push(@sites, "baidu");
print "2. \@sites = @sites\n";
#在数组前插入
unshift(@sites, "weibo");
print "3. \@sites = @sites\n";
pop(@sites);
print "4. \@sites = @sites\n";
shift(@sites);
print "5. \@sites = @sites\n";

@sites = qw/google taobao runoob weibo qq facebook 网易/;
@site2 = @sites[3, 4, 5];
print "@site2\n";
@site2 = @sites[3..5];
print "@site2\n";
@nums = (1..20);
print "before - @nums\n";
splice(@nums, 5, 5, 21..25);
print "after - @nums\n";

@arr = split("-", "www-runoob-com", 2);
print "@arr\n";

$joinStr = join("-", @arr);
print "$joinStr\n";

@sites = qw(google taobao runoob facebook);
print "before - @sites \n";
@sites = sort(@sites);
print "after - @sites \n";

# $[为废弃变量
print "$[\n";
#$[ = 1;
print "$sites[2]\n";

@arr1 = (1, 2, 3);
@arr2 = (4, 5, 6);
@numbers = (@arr1, @arr2);
print "@numbers\n";

@list = (1, 2, 3, 4, 5)[1..2];
print "@list\n";

#hash
%data = ('google', 'google.com', 'baidu', 'baidu.com');
print "$data{'google'}";
%data = ('google' => 'google.com', 'baidu' => 'baidu.com', 'laji' => 'laji.com');
print "%data\n";
%data = (-google => 'google.com', -taobao => 'taobao.com');
print "$data{-google}";
print "@data{-google, -taobao}\n";
@names = keys(%data);
@names = keys %data;
print "@names\n";

@values = values %data;
@values = values(%data);
print "@values\n";

if(exists($data{-facebook})) {
	print "facebook ------- $data{-facebook}\n";
}else {
	print "facebook not exists\n";
}

$size = @names;
print "$size\n";

$data{-facebook} = 'facebook.com';
@names = keys(%data);
print "@names\n";

delete $data{-facebook};
@names = keys(%data);
print "@names\n";

