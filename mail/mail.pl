use strict;
use warnings;

use LWP;

##setting up the information to send the email
my $title="Practice Perl Mail";
my $to = "To send to...";
my $from = 'form';
my $subject = "test";

open(MAIL,"|/usr/sbin/sendmail -t");
#Puting everything in the mail
print MAIL "To: $to\n";
print MAIL "From: $from\n";
print MAIL "Subject: $subject\n\n";

#body

print MAIL"This is a test of email via PERL";

close(MAIL);

print "<html><head><title>$title</title></head>\n<body>\n\n";

print "<h1>$title></h1><p>A message has been sent from $from to $to</p></body></html";


