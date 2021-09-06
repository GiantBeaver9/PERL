use strict;
use warnings;

$|=1;

sub main{
	#here we could let the user parse their own file
	#all we would do is set the variable to <STDIN>
	#but just for the sake of this program, we have left it
	#just so we can learn about how to read files.
	my $file = 'C:\Users\Adam\Desktop\PERL\hi.txt';

	open(INPUT, $file) ? open(INPUT, $file) :
	die "input file ${file} was not found or recognized\n"; 	
	my $count = 0;
	while(my $line = <INPUT>){
	 print OUTPUT;

	 $count += 1;	
	}
	

	
	close INPUT;
};

main();