#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

print "Number Converte\n";
print "Input a number to convert to Hexadecimal\n";

my $toHex = <STDIN>;
print "${toHex} in Hexadecimal is ", hex($toHex), "\n";

print "Input a Hexadecimal to convert to Decimal, don't forget to put 0x first!\n";

my $toDec = <STDIN>;

print "${toDec} in Hexadecimal is ", hex($toDec), "\n";

