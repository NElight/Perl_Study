#! /usr/bin/perl

$a = 10;
#ִ��whileѭ��
while ($a < 20){
	print "$a\n";
	$a += 1;
}
#ִ��untilѭ��
until ($a >25) {
	print "$a\n";
	$a += 1;
}
#forѭ��
for ($a = 1; $a < 10; $a ++) {
	print "$a\n";
}
#foreach
@list = (1, 334, 45, 56, 45);
foreach $a (@list) {
	print "\$a  =  $a\n";
}
#do while ѭ��
$a = 10;
do {
	print "a ===== $a";
	$a++;
}while($a < 15);

#next ======= next�����continue�Ĵ���
$a = 10;
while($a < 20) {
	if ($a == 15) {
		$a ++;
		next;
	}
	print "a === $a \n";
	$a ++;
}

#last ===== ���������е�break
$a = 10;
while ($a < 20) {
	if($a == 15) {
		$a = $a + 1;
		last;
	}
	print "\$a === $a\n";
	$a ++;
}

#continue 
$a = 0;
while ($a < 3) {
	print "a == $a \n";
}continue {
	$a = $a + 1;
}
foreach $a (@list) {
	print "a === $a \n";
}continue {
	last if $a == 45;
}

#redo 
$a = 0;
while ($a < 10) {
	if($a == 5) {
		$a ++;
		redo;
	}
	print "a ==== $a \n";
}continue {
	$a ++;
}
#goto
$a = 10;
LOOP:
do {
	if($a == 15) {
		$a ++;
		goto LOOP;
	}
	print "a == $a \n";
	$a ++;
}while ($a < 20);

for ( ; ; ) {
	$a ++;
	print "$a \n";
}



