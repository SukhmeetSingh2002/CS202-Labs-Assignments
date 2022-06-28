$FileName= $ARGV[0];

open($fh,"<",$FileName);
$totalLines=0;

print "---------\n";
while ( $line = <$fh> ) { 
    unshift @lineList,$line; #Adding line at first
    $totalLines++ # Counting total lines
}
close($fh);
print @lineList;
print "---------\n\n Total Lines = $totalLines\n";
