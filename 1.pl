#!/usr/bin/perl

use strict;
use feature qw/say/;

open INPUT, "<", "./test" or die "cannot open file";
open OUTPUT, ">", "./output" or die "cannot write file";
$^I = ".bak";
my $gene_seq;
my $gene_bool; # 0 + 1 -
select OUTPUT;
while (<INPUT>) {
    if (/^>.*-/) {
    	print &handle_seq($gene_seq, $gene_bool);
    	$gene_seq = undef;
    	print $_;
    	$gene_bool = 1;
    }elsif (/^>.*\+/) {
    	print &handle_seq($gene_seq, $gene_bool);
    	$gene_seq = undef;
    	print $_;
    	$gene_bool = 0;
    }else {
    	chomp($_);
    	$gene_seq .= $_;
    }
}

print &handle_seq($gene_seq, $gene_bool);
close OUTPUT;

sub handle_seq {
	my ($seq, $bool) = @_;
	return "" if ((!defined($seq)) || ($seq eq ""));
	$seq = substr ($seq, 61, 240);
	if ($bool == 1) {
		$seq = reverse $seq;
		$seq =~ tr/ATGC/TACG/;
	}
	say STDOUT $seq;
	my $rel;
	for (my $index = 0; $index < length($seq); $index += 3) {
		$rel .= &codon2aa (substr($seq, $index, 3));
	}
	say STDOUT $rel;
	return $rel . "\n";
}

sub codon2aa   
{   
       my($codon) = @_;   
       
       if ( $codon =~ /TCA/i )    { return 'S' }    # Serine   
    elsif ( $codon =~ /TCC/i )    { return 'S' }    # Serine   
    elsif ( $codon =~ /TCG/i )    { return 'S' }    # Serine   
    elsif ( $codon =~ /TCT/i )    { return 'S' }    # Serine   
    elsif ( $codon =~ /TTC/i )    { return 'F' }    # Phenylalanine   
    elsif ( $codon =~ /TTT/i )    { return 'F' }    # Phenylalanine   
    elsif ( $codon =~ /TTA/i )    { return 'L' }    # Leucine   
    elsif ( $codon =~ /TTG/i )    { return 'L' }    # Leucine   
    elsif ( $codon =~ /TAC/i )    { return 'Y' }    # Tyrosine   
    elsif ( $codon =~ /TAT/i )    { return 'Y' }    # Tyrosine   
    elsif ( $codon =~ /TAA/i )    { return '_' }    # Stop终止密码子  
    elsif ( $codon =~ /TAG/i )    { return '_' }    # Stop终止密码子  
    elsif ( $codon =~ /TGC/i )    { return 'C' }    # Cysteine   
    elsif ( $codon =~ /TGT/i )    { return 'C' }    # Cysteine   
    elsif ( $codon =~ /TGA/i )    { return '_' }    # Stop   
    elsif ( $codon =~ /TGG/i )    { return 'W' }    # Tryptophan   
    elsif ( $codon =~ /CTA/i )    { return 'L' }    # Leucine   
    elsif ( $codon =~ /CTC/i )    { return 'L' }    # Leucine   
    elsif ( $codon =~ /CTG/i )    { return 'L' }    # Leucine   
    elsif ( $codon =~ /CTT/i )    { return 'L' }    # Leucine   
    elsif ( $codon =~ /CCA/i )    { return 'P' }    # Proline   
    elsif ( $codon =~ /CCC/i )    { return 'P' }    # Proline   
    elsif ( $codon =~ /CCG/i )    { return 'P' }    # Proline   
    elsif ( $codon =~ /CCT/i )    { return 'P' }    # Proline   
    elsif ( $codon =~ /CAC/i )    { return 'H' }    # Histidine   
    elsif ( $codon =~ /CAT/i )    { return 'H' }    # Histidine   
    elsif ( $codon =~ /CAA/i )    { return 'Q' }    # Glutamine   
    elsif ( $codon =~ /CAG/i )    { return 'Q' }    # Glutamine   
    elsif ( $codon =~ /CGA/i )    { return 'R' }    # Arginine   
    elsif ( $codon =~ /CGC/i )    { return 'R' }    # Arginine   
    elsif ( $codon =~ /CGG/i )    { return 'R' }    # Arginine   
    elsif ( $codon =~ /CGT/i )    { return 'R' }    # Arginine   
    elsif ( $codon =~ /ATA/i )    { return 'I' }    # Isoleucine   
    elsif ( $codon =~ /ATC/i )    { return 'I' }    # Isoleucine   
    elsif ( $codon =~ /ATT/i )    { return 'I' }    # Isoleucine   
    elsif ( $codon =~ /ATG/i )    { return 'M' }    # Methionine   
    elsif ( $codon =~ /ACA/i )    { return 'T' }    # Threonine   
    elsif ( $codon =~ /ACC/i )    { return 'T' }    # Threonine   
    elsif ( $codon =~ /ACG/i )    { return 'T' }    # Threonine   
    elsif ( $codon =~ /ACT/i )    { return 'T' }    # Threonine   
    elsif ( $codon =~ /AAC/i )    { return 'N' }    # Asparagine   
    elsif ( $codon =~ /AAT/i )    { return 'N' }    # Asparagine   
    elsif ( $codon =~ /AAA/i )    { return 'K' }    # Lysine   
    elsif ( $codon =~ /AAG/i )    { return 'K' }    # Lysine   
    elsif ( $codon =~ /AGC/i )    { return 'S' }    # Serine   
    elsif ( $codon =~ /AGT/i )    { return 'S' }    # Serine   
    elsif ( $codon =~ /AGA/i )    { return 'R' }    # Arginine   
    elsif ( $codon =~ /AGG/i )    { return 'R' }    # Arginine   
    elsif ( $codon =~ /GTA/i )    { return 'V' }    # Valine   
    elsif ( $codon =~ /GTC/i )    { return 'V' }    # Valine   
    elsif ( $codon =~ /GTG/i )    { return 'V' }    # Valine   
    elsif ( $codon =~ /GTT/i )    { return 'V' }    # Valine   
    elsif ( $codon =~ /GCA/i )    { return 'A' }    # Alanine   
    elsif ( $codon =~ /GCC/i )    { return 'A' }    # Alanine   
    elsif ( $codon =~ /GCG/i )    { return 'A' }    # Alanine   
    elsif ( $codon =~ /GCT/i )    { return 'A' }    # Alanine   
    elsif ( $codon =~ /GAC/i )    { return 'D' }    # Aspartic Acid   
    elsif ( $codon =~ /GAT/i )    { return 'D' }    # Aspartic Acid   
    elsif ( $codon =~ /GAA/i )    { return 'E' }    # Glutamic Acid   
    elsif ( $codon =~ /GAG/i )    { return 'E' }    # Glutamic Acid   
    elsif ( $codon =~ /GGA/i )    { return 'G' }    # Glycine   
    elsif ( $codon =~ /GGC/i )    { return 'G' }    # Glycine   
    elsif ( $codon =~ /GGG/i )    { return 'G' }    # Glycine      
    elsif ( $codon =~ /GGT/i )    { return 'G' }    # Glycine   
    else   
    {   
        print STDERR "Bad codon \"$codon\"!!\n";     
        return "";
    }
}

sub codon2aa222   
{   
    my($codon) = @_;   
   
    $codon = uc $codon;#uc=uppercase;lc=lowercase  
                   #也就是大小写转换，uc表示将所有的小写 转换为大写  
               #lc将所有的大写转换为小写  
    
    my(%genetic_code) = (   
       
    'TCA' => 'S',    # Serine   
    'TCC' => 'S',    # Serine   
    'TCG' => 'S',    # Serine   
    'TCT' => 'S',    # Serine   
    'TTC' => 'F',    # Phenylalanine   
    'TTT' => 'F',    # Phenylalanine   
    'TTA' => 'L',    # Leucine   
    'TTG' => 'L',    # Leucine   
    'TAC' => 'Y',    # Tyrosine    
    'TAT' => 'Y',    # Tyrosine   
    'TAA' => '_',    # Stop   
    'TAG' => '_',    # Stop   
    'TGC' => 'C',    # Cysteine   
    'TGT' => 'C',    # Cysteine   
    'TGA' => '_',    # Stop   
    'TGG' => 'W',    # Tryptophan   
    'CTA' => 'L',    # Leucine   
    'CTC' => 'L',    # Leucine   
    'CTG' => 'L',    # Leucine   
    'CTT' => 'L',    # Leucine   
    'CCA' => 'P',    # Proline   
    'CCC' => 'P',    # Proline   
    'CCG' => 'P',    # Proline   
    'CCT' => 'P',    # Proline   
    'CAC' => 'H',    # Histidine   
    'CAT' => 'H',    # Histidine   
    'CAA' => 'Q',    # Glutamine   
    'CAG' => 'Q',    # Glutamine   
    'CGA' => 'R',    # Arginine   
    'CGC' => 'R',    # Arginine   
    'CGG' => 'R',    # Arginine   
    'CGT' => 'R',    # Arginine   
    'ATA' => 'I',    # Isoleucine   
    'ATC' => 'I',    # Isoleucine   
    'ATT' => 'I',    # Isoleucine   
    'ATG' => 'M',    # Methionine   
    'ACA' => 'T',    # Threonine   
    'ACC' => 'T',    # Threonine   
    'ACG' => 'T',    # Threonine   
    'ACT' => 'T',    # Threonine   
    'AAC' => 'N',    # Asparagine   
    'AAT' => 'N',    # Asparagine   
    'AAA' => 'K',    # Lysine   
    'AAG' => 'K',    # Lysine   
    'AGC' => 'S',    # Serine   
    'AGT' => 'S',    # Serine   
    'AGA' => 'R',    # Arginine   
    'AGG' => 'R',    # Arginine   
    'GTA' => 'V',    # Valine   
    'GTC' => 'V',    # Valine   
    'GTG' => 'V',    # Valine   
    'GTT' => 'V',    # Valine   
    'GCA' => 'A',    # Alanine   
    'GCC' => 'A',    # Alanine   
    'GCG' => 'A',    # Alanine   
    'GCT' => 'A',    # Alanine       
    'GAC' => 'D',    # Aspartic Acid   
    'GAT' => 'D',    # Aspartic Acid   
    'GAA' => 'E',    # Glutamic Acid   
    'GAG' => 'E',    # Glutamic Acid   
    'GGA' => 'G',    # Glycine   
    'GGC' => 'G',    # Glycine   
    'GGG' => 'G',    # Glycine   
    'GGT' => 'G',    # Glycine   
    );   
   
    if(exists $genetic_code{$codon})   
    {   
        return $genetic_code{$codon};   
    }  
    else  
    {   
   
            print STDERR "Bad codon \"$codon\"!!\n";   
            exit;   
    }   
}  
