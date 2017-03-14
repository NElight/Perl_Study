#!/usr/bin/perl
$text = "google runoob taobao";
format STDOUT =
first: ^<<<<<  # 左边对其，字符串长度为6
	$text
second: ^<<<<<
	$text
third: ^<<<<  # 左边对其，字符长度为5，taobao最后一个o被截断
	$text
.
write;


format EMPLOYEE = 
=================================
@<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< @<<
$name $age
@#####.##
$salary
================================
.

format EMPLOYEE_TOP = 
==========================
NAME                   AGE
==========================
.
select(STDOUT);
$~ = EMPLOYEE;
$^ = EMPLOYEE_TOP;

@n = ("Ali", "Runoob", "Jaffer");
@a = (20, 30, 40);
@s = (2000.00, 2500.00, 4000.000);
$i = 0;
foreach (@n) {
	$name = $_;
	$age = $a[$i];
	$salary = $s[$i++];
	write;
}

$~ = "MYFORMAT";
write;

format MYFORMAT =
=====================
	Text #cabc a 
====================
.
write;






