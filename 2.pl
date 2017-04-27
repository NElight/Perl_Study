#!/usr/bin/perl

use strict;
use feature qw/say/;

open INPUT, "<", "./test";
$^I = ".bak";
my $gene_id;
my $gene_seq;
my $gene_bool; # 0 + 1 
print sprintf "%-15s%-15s%-15s%-15s%-15s\n", "Seq_ID", "Seq_Length(bp)", "GC%", "Sign_num", "Sign_pos";
while (<INPUT>) {
    if (/^>.*-/) {
    	handle_seq($gene_seq, $gene_bool);
    	$gene_id = $_;
    	$gene_seq = undef;
    	$gene_bool = 1;
    }elsif (/^>.*\+/) {
    	handle_seq($gene_seq, $gene_bool);
    	$gene_id = $_;
    	$gene_seq = undef;
    	$gene_bool = 0;
    }else {
    	chomp($_);
    	$gene_seq .= $_;
    }
}

handle_seq($gene_seq, $gene_bool);



sub handle_seq {
	my ($seq, $bool) = @_;
	return "" if ((!defined($seq)) || ($seq eq ""));
	
	my $gene_length = length $seq;
	my $gene_CG_count = $seq =~ tr/GC/GC/;
	my $gene_CG_percent = eval{$gene_CG_count / $gene_length * 100};
	
	my $gene_AATT_count = 0;
	my $gene_AATT_pos = "";
	
	if ($bool == 1) {
		$seq = reverse $seq;
		$seq =~ tr/ATGC/TACG/;
#		say $seq;
		($gene_AATT_count, $gene_AATT_pos) = &handle_AATT_seq($seq);
		
	}else {
		($gene_AATT_count, $gene_AATT_pos) = &handle_AATT_seq($seq);
	}
	chomp($gene_id);
	$gene_id =~ s/\+|-//;
	print sprintf "%-15s%-15s%-15.2f%-15s%-15s\n", $gene_id, $gene_length, $gene_CG_percent, $gene_AATT_count, $gene_AATT_pos;
#	say STDOUT $seq;
}

sub handle_AATT_seq {
	my ($seq) = @_;
	my ($pos, $count, $now) = (0, 0, -1);
	my @pos_array;
	until ($pos == -1) {
		$pos = index ($seq, "AATT", $now + 1);
		if ($pos >= 0) {
			$count ++;
			$now = $pos;
			
			my $str = join ("-", ($pos, $pos + 3));
			push @pos_array, $str;
		}
	}
	
	my $gene_AATT_pos = join (",", @pos_array);
	return $count, $gene_AATT_pos;
	
}





