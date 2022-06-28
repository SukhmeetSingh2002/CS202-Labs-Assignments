use strict;
use warnings;


if(scalar(@ARGV)==0)
{
    warn "Name of file not provided" ; 
    print "Run the program like this\nperl $0 <FILENAME>\n";
    exit 1;
}
my $FileName= $ARGV[0];

print "Enter Delimiter : ";
my $Delimiter=<STDIN>;
chomp($Delimiter);


open(my $fh,"<",$FileName) or die "\nError opening '$FileName'"; # opens the file or exits

# read all the lines
while(my $line=<$fh>)
{
    # replace more than one consecutive occurences with only one occ.
    $line=~s/$Delimiter{2,}/$Delimiter/g;
    $line=~s/^$Delimiter//g;

    $line=~s/$Delimiter/\n/g;
    print $line;
}
close($fh);