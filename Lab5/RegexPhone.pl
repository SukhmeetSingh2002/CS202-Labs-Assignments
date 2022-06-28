use strict;
use warnings;

print "Enter the phone no. : ";
my $in=<STDIN>;
chomp($in);

print "\n";

if($in=~/^\d{3}( |-|)\d{3}\g1\d{4}$/)
{
    print "True\n";
}
else
{
    print "False\n";
}