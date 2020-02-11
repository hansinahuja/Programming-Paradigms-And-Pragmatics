#!/usr/local/bin/perl
$lenargs = @ARGV;
if($lenargs == 0){
    print "Error! No arguments given.\n";
    exit();
}
open ($fh, "<", $ARGV[0]);
while ($line = <$fh>){
    print "$line";
}
close($fh);
