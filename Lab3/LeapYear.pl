print "Enter the year : ";
$year=<STDIN>;
$year=$year*1;
$isLeap=leapyear($year);
if($isLeap==1){
    print "$year is a Leap Year\n";
}
else{
    print "$year is a not a Leap Year\n";
}
sub leapyear {
    $yearCheck=@_[0];
    if($yearCheck%400==0){
        return 1;
    }
    elsif($yearCheck%100==0){
        return 0;
    }
    elsif($yearCheck%4==0){
        return 1;
    }
    return 0;
}