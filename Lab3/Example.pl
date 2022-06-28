#!/usr/bin/perl

# Keyboard Input
print "enter your name ";
$name=<STDIN>;
print "enter your age ";
$age=<STDIN>;
print "Welcome $name";


$first = ($name,$age,$sex)[0];
print "name=$first"; 
print "and age = $age"; 

print "---------\n";

# Hashes
%fruits = (
'apple' =>'red',
'banana'=>'yellow',
'grape' =>'green'
);
print "colour of grape is $fruits{grape}\n";

print "---------\n";

# If else
$mark = 76;
if ($mark>75){
    print "passed with distinction\n";
}
elsif ($mark<35){
    print "failed\n";
}

else {
    print "passed\n";
}

print "---------\n";

# Loop
foreach $f (keys %fruits ) {
    $fruits{$f}= ucfirst ($fruits{$f});
    print "Color of $f is $fruits{$f}\n" ;
}

foreach (a..z){
    print uc;
}

print "\n---------\n";

# subroutines
$v1=10; $v2=30; #v1, v2 global
$v3=30;
$v3=add( $v1,$v2 );
sub add{
    my ($i,$j)=@_;
    print "inside add sub value of i=$i j=$j\n";
    print "inside add sub value of globals v1=$v1 v2=$v2 v3=$v3\n";
    return $i+$j;
}
print " Value of globals v1=$v1 v2=$v2\n";
print " Value of scoped variables v3=$v3\n";
print " Value of variables inside sub i=$i j=$j\n";

print "---------\n";

# refrences
$a=10;
$ref_toa=\$a;
print "value of a using reference = $$ref_toa\nValue of using directly=$a\nReference of a= $ref_toa";