#!/usr/local/bin/perl

sub isLeapYear{
    ($year) = @_;
    if($year % 400 == 0){
        print "Leap year.\n";
        return 1;
    }
    elsif($year % 100 == 0){
        print "Not a leap year.\n";
        return 0;
    }
    elsif($year % 4 == 0){
        print "Leap year.\n";
        return 1;
    }
    else{
        print "Not a leap year.\n";
        return 0;
    }
}

print "Enter year: ";
$yr = <STDIN>;
$ret = isLeapYear($yr);
print "Return value: $ret\n";
