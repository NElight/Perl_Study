#!usr/bin/perl
#@a = (1, 2, 3, 4);
#@b = qw/1 2 3 4/;
#@c = qw{
#	name
#	age
#	height
#};
@array = 5..9;
$fred = pop(@array);
print "$fred\n";
$fred = pop(@array);
print "$fred\n";
pop @array;

push @array, 0;
print @array;
print "\n";
push @array, 1..10;
print @array;
print "\n";

shift @array;
print @array;
print"\n";
unshift @array,1;
print "@array";
print"\n";

$a = 4;
splice @array, 3, 4, $a;
print "@array";

@array = qw{abc def ghi};
$y = "2*4";
$array = 2;
print "this is $array[$y - 1] 2sfsa \n";
print "this is $array\[1\]sd;fjl \n";
print "this is ${array}[1]\n";

$end = $#array;
print $array[$end];
foreach $a (qw/a b c d e f g/) {
	print $a . "\n";
}
($fred, $barney, $dino) = ("a", "b", "c");
print $fred, $barney, $dino, "\n";

#交换两个变量的值
($fred, $barney) = ($barney, $fred);
($array[0], $array[1]) = ($array[1], $array[0]);

#忽略掉末尾的两个值
($fred, $barney) = qw<flintstone rubble slate granite>;
#$dino的值为undef
($wilma, $dino) = qw[flintstone];

@rocks = qw/bedrock slate lava/;
foreach $rock (@rocks) {
	$rock = "\t$rock";
	$rock .= "\n";
}
print "the rocks are: \n", @rocks;
print $rock;

foreach (1..10) {
	#$_是perl最常用的默认变量
	print "i can count to $_!\n";
}

$_ = "Yabba dabba doo\n";
print;#$_为默认变量

#reverse
@fred = 6..10;
@barney = reverse(@fred);
print @barney;
@wilma = reverse(6..10);
print @wilma;
@fred = reverse(@fred);
print "@fred";

#sort
@rocks = qw/bedrock slate rubble granite/;
@sorted = sort(@rocks);
print "@sorted\n";
@back = reverse sort @rocks;
print "@back\n";

#each 取数组中元素的索引和值， 取hash中键值对
while(my($index, $value) = each @rocks) {
	print "$index : $value\n";
}

foreach $index (0..$#rocks) {
	print "$index : $rocks[$index]\n";
}

#上下文
@backwards = reverse qw/yabba dabba doo/;
print "@backwards\n";
$backwards = reverse qw/yabba dabba doo/;
print "$backwards\n";

@oneElementArray = undef;#生成一个只含有一个元素undef的数组
@emptyArray = ();#清空数组，变为空

#scalar 告诉perl强制转换到标量上下文
print "how many rocks do you have?\n";
print "i have", @backwards, "rocks\n";
print "i have", scalar @backwards, "rocks!\n";#强制切换标量上下文

@stanrdIn = <STDIN>;
#chomp(@stanrdIn);
print "@stanrdIn";
chomp(@stdIn = <STDIN>);
print @stdIn;






