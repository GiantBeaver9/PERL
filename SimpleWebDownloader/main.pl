use strict;
use warnings;
use LWP::Simple;

sub main {
	print "let's find some images to download \n
please input a website (just the www.example.com part, no http(s)\n";
	my $https = <STDIN>;
	print "Now what do you want to call the file you store the information in?\n";
	my $filename = <STDIN>;
	print getstore("http://${https}", "${filename}.html"), "\n";
	print "Would you like to download an image?\n";
	my $yOrN = <STDIN>;
	$yOrN = uc substr $yOrN, 0, 1;

	
	if ($yOrN eq "Y"){
		print "please input the location of the image, no leading HTTPS\n";
		my $imageURL = <STDIN>;
		print "now the name of the file \n";
		my $imageName = <STDIN>;
		my $filetype = substr $imageURL, length($imageURL)-3, length($imageURL);
		print getstore('https://$imageURL', "$imageName".".${filetype}");
		print "Done!\n";
		
	};
}


main();
