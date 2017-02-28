#!/usr/bin/perl
# **
$a = 10;
$b = 20;
$c = $a ** $b;
print "$c \n";

# <=>  检查两个操作数的值是否相等, 如果左边的数小于右边的数返回 -1，如果相等返回 0, 如果左边的数大于右边的数返回 1 。
$c = $a <=> $b;
print "$c \n";

# and ==== &&
# or ==== ||
# not ====== !
$a = true;
$b = false;
$c = $a and $b;
print "$c\n";
$c = $a or $b;
print "$c\n";
$c = not($a);
print "$c\n";

#引号运算
#q{} 为字符串添加单引号
$a = 10;
$b = q{$a};
print "$b\n";
#qq{} 为字符串添加双引号
$b = qq{$a};
print "$b\n";
#qx{} 为字符串添加反引号
$t = qx{date};
print "$t\n";

#. 用于连接两个字符串
$a = "run";
$b = "oob";
$c = $a . $b;
print "$c\n ";
$c = "-" x 3;
print "$c\n";
@c = (2..5);
print "@c\n";
# -> 箭头用于指定一个类的方法 $obj->$a


