use strict;
use warnings;

my $FileName= $ARGV[0];

open(my $fh,"<",$FileName); # opens the file

print "\n";

while ( my $line = <$fh> ) {
    while($line=~/"(\w+([^-']\w+(\S)?)?)"/g)
    {
        print "$1\n";
    }
}
close($fh);

print "\n";
print "\n";