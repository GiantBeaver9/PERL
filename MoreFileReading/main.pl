use strict;
use warnings;

$|=-1;


sub main {
	my $output = "output.txt";
	
	open OUTPUT, '>'.$output or die "Cannot create ${output}\n";
	print OUTPUT "Hello\n";
	
	close OUTPUT;
}