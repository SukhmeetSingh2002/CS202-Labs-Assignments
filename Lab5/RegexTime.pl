use strict;
use warnings;

print "Enter the time : ";
my $in=<STDIN>;
chomp($in);

print "\n";

if($in=~/^(0?\d|1[012])\.[0-5]\d [ap]m$/)
{
    print "True\n";
}
else
{
    print "False\n";

}
