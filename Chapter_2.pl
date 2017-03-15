#!/usr/bin/perl

$r = 12.5;
$circumference = $r * 2 * 3.141592654;
print $circumference . "\n";

chomp($r = <STDIN>);
$circumference = 0;
if ($r > 0) {
	$circumference = $r * 2 * 3.141592654;
}
print $circumference . "\n";

chomp($a = <STDIN>);
chomp($b = <STDIN>);
print $a * $b . "\n";

chomp($text = <STDIN>);
chomp($time = <STDIN>);
print $text x $time. "\n";