#!/usr/local/bin/perl
$lenargs = @ARGV;
if($lenargs == 0){
    print "Error! No arguments given.\n";
    exit();
}
open ($fh, "<", $ARGV[0]);
while ($line = <$fh>){
    push(@lines, $line);
}
$len = @lines;
for ($i = $len - 1; $i>=0; $i--){
    print "@lines[$i]";
    if($i == $len - 1){
        print "\n";
    }
}
print "\nNumber of lines read = $len\n";