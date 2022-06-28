#!/usr/bin/perl
$Num1 = 3;
@Num1 = (1, "one", 1.5, $Num1);
print "The array is: @Num1 \n";
print "The number is $Num1 \n";
$Num1[0] = 5;
print "The array is: @Num1 \n";
@array = (1,2,3); # Assignment – whole array using list
print @array; # Operations on Array
print "@array";
$array[3] = 4; # Assigning element
print "@array \n";
push @array,'4'; # New element can be added at the end using push
print "@array \n";
$last = pop @array; # Last element can be removed using pop function
print "last = $last\n";
@array = (1,2,3);
$first =shift @array; # First element can be removed using shift
print "first = $first\n";
@array = (3,4,5);
unshift @array,'2'; # Element can be added at the front using unshift
print "array = @array\n";