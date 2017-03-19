#!/usr/bin/perl
use warnings;

print "hello world!\\n\n";
print 'hello world!\n'. "\n";

$a = 1;
print "$a\n";
print '$a'. "\n";
print 'a' x 3;

$a = 3;
$b = '4abc5';
$c = $a + $b;
print "$c\n";

$fred = 1;
$fred = $fred + 5;
print "$fred\n";

$what = "abcdefg adf";
$n = 3;
print "my abc $n${what}s.\n";

#$userIn = <STDIN>;
#print "$userIn\n";
#
#$add1 = <STDIN>;
#$add2 = <STDIN>;
#$rel = $add1 + $add2;
#print "$rel\n";

$str = 'abcddasf\n';
$str1 = chomp($str);
print $str;
print "-------\n";
print $str1;
print "-------\n";


