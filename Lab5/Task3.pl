use strict;
use warnings;

my $FileName= $ARGV[0];
my $count=0;

open(my $fh,"<",$FileName); # opens the file


# read all the lines
while ( my $line = <$fh> ) {
    while($line=~/\b\w+[A-Z]\w+\b/g)
    {
        print "$&\n";
        $count++;
    }
}
close($fh);

print "\n";
print "\n";

print "The count is $count\n";
