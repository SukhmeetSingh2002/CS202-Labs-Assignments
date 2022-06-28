use strict;
use warnings;




print "Enter the string : ";
my $line=<STDIN>;
chomp($line);

# read all the lines
if($line=~/(ATG([ACGT]{3})+(TAA|TAG|TGA))/)
{
    print "Accepted\n";
}
else
{
    print "Rejected\n";
}