use strict;
use warnings;

$|=-1;


sub main{
	
	
	my $file = 'C:\Users\Adam\Desktop\PERL\hi.txt';
	
	open(INPUT, $file) or die ("I'm dead");
	my $count = 1;
	

	while(my $line = <INPUT>){
		if ($line =~ /(a.)/) {
			print "Found match in line $count\n";
			$count = $count + 1;
			}
	}
};

main();