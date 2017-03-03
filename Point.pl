#!/usr/bin/perl

$scalarref = \$foo;
$arrayref = \$ARGV;
$hashref = \%ENV;
$coderef = \&handler;
$globref = \*foo;

$aref = [1, "foo", undef, 13];

my $aref = [
	[1, 2, 3],
	[4, 5, 6],
	[7, 8, 9],
];

$href = {APR => 4, AUG => 8};
$coderef = sub {print "Runoob!\n"};

$var = 10;
$r = \$var;
print "$$r \n";
print "$r \n";
=ref
SCALAR
ARRAY
HASH
CODE
GLOB
REF
=cut
print ref($r), "\n";
#Ñ­»·ÒýÓÃ
my $foo = 100;
$foo = \$foo;
print "$$foo\n";

sub PrintHash {
	my %hash = @_;
	foreach $item (%hash) {
		print "$item\n";
	}
}
%hash = ('name' => 'runoob', 'age' => 3);
PrintHash(%hash);
$a = \&PrintHash;
&$a(%hash);



