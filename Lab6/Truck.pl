use strict;
use warnings;


my $FileName= $ARGV[0];

my $pickupTruck='pick( |-|)up truck';
my $price='\$\d+(,\d{3})*(\.\d+)?';

print "Enter the string : ";
my $line=<STDIN>;
chomp($line);

# read all the lines
if($line=~/((^|\W)red\W+(([\w-]+\W+){0,2})(?<=\W)$pickupTruck(?=\W).*(?<=\W)$price)/)
{
    print "Accepted\n";
}
elsif($line=~/((^|\W)$pickupTruck\W(([\w-]+\W){0,2})(?<=\W)red(?=\W).*(?<=\W)$price)/)
{
    print "Accepted\n";
}
else
{
    print "Rejected\n";
}