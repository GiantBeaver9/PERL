#!/usr/bin/perl
#currency1.plx
use warnings;
use strict;
print "What is the exchange rate of Yen to Pounds?";
my $yen = <STDIN>;
print "How many Yen do you have?";
my $money = <STDIN>;
print "${money} Yen is ", (${money}/$yen), " pounds\n";