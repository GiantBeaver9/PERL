use strict;
use warnings;

$|=1;

sub main{
	#here we could let the user parse their own file
	#all we would do is set the variable to <STDIN>
	#but just for the sake of this program, we have left it
	#just so we can learn about how to read files.
	my $file = 'C:\Users\Adam\Desktop\PERL\hi.txt';
	##Ternary Operator made easier to read
	open(INPUT, $file) ?
	open(INPUT, $file) :
	die "input file ${file} was not found or recognized\n"; 
	## End Ternary Operator
	
	my $output = "output2.txt";
	open OUTPUT, '>'.$output or die "Cannot create ${output}\n";
	
		
	my $count = 0;
	while(my $line = <INPUT>){
		#regex practice in PERL
		#s = string replace,
		#i = case insensitive
		#g = global
		$line =~ s/how/HOW/ig;
		#Could use this to highlight pieces of web scraping
		#We can use \b to set boundaries on words to keep it from 
		#disrupting words
		if($line =~ /ear/ or $line =~ /gram/){
			print OUTPUT $line;
		}
	 print "$line";

	 $count += 1;	
	}
	

	
	close INPUT;
	close OUTPUT;
};

main();