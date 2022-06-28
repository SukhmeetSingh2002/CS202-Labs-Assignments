use strict;
use warnings;

my $FileName= $ARGV[0];
my $count=0;

open(my $fh,"<",$FileName); # opens the file


# read all the lines
while ( my $line = <$fh> ) {
    if($line=~/\b[jJ]ava\b/)
    {
        print $line;
        $count++;
    }
}
close($fh);

print "\n";
print "\n";

print "The count is $count\n";
