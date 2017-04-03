#! /usr/bin/perl
use strict;
use feature qw/state say/;

#1.
#while(<STDIN>) {
#	chomp;
#	if(/(.)*fred(.)*/) {
#		say "$_";
#	}
#}

#2.
#if(! open USER_FH, "<", "./image/test7") {
#	die "can not open file";
#}
#
#while(<USER_FH>) {
#	if(/(.)*[fF]red(.)*/) {
#		say "$_";
#	}
#}

#3.
#while(<STDIN>) {
#	chomp;
#	if(/(.)*\.(.)*/) {
#		say "$_";
#	}
#}

#if(! open USER_FH, "<", "./image/test7") {
#	die "can not open file";
#}
#
#my $pa = '(.)*\.(.)*';
#while(<USER_FH>) {
#	if(/$pa/) {
#		say "$_";
#	}
#}

#4.
#my $pa = '[A-Z](.)*[a-z]+';
#if(! open USER_FH, "<", "./image/test7") {
#	die "can not open file";
#}
#
#while(<USER_FH>) {
#	if(/$pa/) {
#		say "$_";
#	}
#}

#5.
#my $pa = '(.+)\g{-1}';
#if(! open USER_FH, "<", "./image/test7") {
#	die "can not open file";
#}
#
#while(<USER_FH>) {
#	if(/$pa/) {
#		say "$_";
#	}
#}

#6.
my $pa = 'wilma.*fred|fred.*wilma';
if(! open USER_FH, "<", "./image/test7") {
	die "can not open file";
}

while(<USER_FH>) {
	if(/$pa/) {
		say "$_";
	}
}



