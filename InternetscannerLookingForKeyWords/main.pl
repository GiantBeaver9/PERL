use strict;
use warnings;
use FindBin qw( $Bin );
use LWP::Simple;
use File::Spec;
use Path::Class;

my $coretests = file(file($0)->parent, '');
print $coretests;
sub main {
	print "What web page do you want to go to? Omit any HTTPS://\n";
	my $site = <STDIN>;
	print "What do you want to name the file we print to?\n";
	
	my $siteName = <STDIN>;
	chomp($site); 
	chomp($siteName);
	
	print "what would you like to look for on this webpage?\n";
	my $toLook = <STDIN>;
	chomp($toLook);
	print getstore("http://${site}", "${siteName}.txt"), "\n";
	$siteName = $siteName . ".txt";
	open OUTPUT, '>'."parsedPage.txt" or die;
	print $coretests . '\\' . ${siteName}; 
	open INPUT, File::Spec->catfile($coretests, '\\'.${siteName});
	while(my $lineInSite = <INPUT>){
		
		if($lineInSite =~ /$toLook/i){
			print OUTPUT $lineInSite;
		}
	}
	
	close OUTPUT;
	close INPUT;
}

main();