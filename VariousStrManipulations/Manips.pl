#!/usr/bin/perl

use 5.010;
use strict;
use warnings;


print "What is your first name?";
my $first = <STDIN>;
print "And your last name?";
my $last = <STDIN>;
print "Hello, $first\n";
print "Mr. $last how are you doing?\n";

print "Your first and last name have ", length($first) + length($last), " characters in them \n";
my $num = 35;

print $num * 25;


print "echo! "x$num;