use strict;
use warnings;

use Term::ANSIColor qw(:constants);

my $FileName= $ARGV[0];
my $count=0;


open(my $fh,"<",$FileName); # opens the file

# read all the lines
while ( my $line = <$fh> ) {
    if($line=~/(ATG([ACGT]{3})+(TAA|TAG|TGA))/)
    {
        print GREEN BOLD,"$line",RESET;
        $count++;
    }
    else
    {
        print RED BOLD,"$line",RESET;
    }
}
close($fh);

print "\n";
print "\n";

print "The count is $count\n";