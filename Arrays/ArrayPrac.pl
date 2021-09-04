#!/usr/bin/perl
# dayarray.plx
use warnings;

my @days;
@days = qw(Monday Tuesday Wednesday Thursday Friday Saturday Sunday);
foreach $day (@days){
	print "$day, \n";
}