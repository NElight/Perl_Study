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

foreach $a (qw/a b c d e f g/) {
	print $a . "\n";
}