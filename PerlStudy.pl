$a = 1;
$b = "123";
$c = 1.3;
@arr = (1, 2, 3);
%e = ('a' => 1, 'b' => 2);

$x = 12345;
if (1217 + 116 == 1333) {
	# 执行代码语句块
	print ("ok\n");
}

#!/usr/bin/perl

# 换行 \n 位于双引号内，有效
$str = "菜鸟教程  \nwww.runoob.com";
print "$str\n";

# 换行 \n 位于单引号内，无效
$str = '菜鸟教程  \nwww.runoob.com';
print "$str\n";

# 只有 R 会转换为大写
$str = "\urunoob";
print "$str\n";

# 所有的字母都会转换为大写
$str = "\Urunoob";
print "$str\n";

# 指定部分会转换为大写
$str = "Welcome to \Urunoob\E.com!"; 
print "$str\n";

# 将到\E为止的非单词（non-word）字符加上反斜线
$str = "\QWelcome to runoob's family";
print "$str\n";

$var = <<"EOF";
我在那里，我是睡，我在干什么。
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