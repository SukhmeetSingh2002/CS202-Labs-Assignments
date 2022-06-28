use strict;
use warnings;

my $FileName= $ARGV[0];
my $count=0;


open(my $fh,"<",$FileName); # opens the file

print "\n";

while ( my $line = <$fh> ) {
    while($line=~/\ba(\w)\g1\w*\b/ig)
    {
        $count++;
        print "$&\n";
    }
}
close($fh);

print "\n";
print "\n";

print "There are $count words that start with a and have the same 2nd and 3rd character\n";