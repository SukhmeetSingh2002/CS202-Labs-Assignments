$FileName= $ARGV[0];

open($fh,"<",$FileName);

while ( $line = <$fh> ) { 
    print $line; 
}
close($fh);
