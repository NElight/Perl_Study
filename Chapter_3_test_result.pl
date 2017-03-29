#! /usr/bin/perl

#1.
#@list = <STDIN>;
#@list = reverse @list;
#print @list;

#2.
#@list = qw/fred betty barney dino wilma pebbles bamm-bamm/;
#@index = <STDIN>;
#foreach $index (@index) {
#	if($index <= $#list) {
#		print "$list[$index - 1] \n";
#	}
#}

#3.
chomp(@list = <STDIN>);
@sorted = sort @list;
print @sorted;