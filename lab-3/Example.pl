#!/usr/local/bin/perl

# Lists
@list = (a, b, c);
print "@list\n";
($name, $age, $sex) = ("Hansin", 19, M);
print "$name $age $sex\n";
print "($name, $age, $sex)[0]\n";
$first = ($name, $age, $sex)[0];
print "$first\n";

# Hashes
%fruits = ('apple' => 'red', 'banana' => 'yellow', 'grape' => 'black');
print "%fruits \n";
print "$fruits{apple}\n";
$fruits{'orange'} = 'orange';
print "$fruits{orange}\n";

# Conditionals - IF
$mark = 40;
if ($mark > 75){
    print "passed with distinction\n";
}
elsif ($mark < 35){
    print "failed\n";
}
else{
    print "passed\n";
}

print "mark > 35\n" if ($mark > 35);

# Loops
for ($i = 0; $i < 10; $i++){
    print "i = $i\n";
}

foreach $i (a, b, C){
    print uc $i;
}
print "\n";
print uc char;
print "\n";

foreach $name (keys %fruits){
    print "Colour of $name is $fruits{$name}\n";
}

$i = 0;
while ($i < 10){
    print "i = $i\n";
    $i++;
}

# Accepting input
print "Enter your name ";
$name = <STDIN>;
print "Welcome $name\n";

# Default scalar variable $_
foreach (A, b, c){
    print uc;
}
print "\n";

foreach $_ (A, b, c){
    print uc $_;
}
print "\n";

foreach (1..10){
    print;
}
print "\n";

foreach (1..10){
    print "$_\n";
}

# Subroutines
$v1 = 10;
$v2 = 20;
print add($v1, $v2);
print "\n";
print add2($v1, $v2);
print "\n";

sub add{
    ($a, $b) = @_;
    return $a + $b;
}

sub add2{
    return @_[0] + @_[1];
}

# Scope of variables
$v1 = 10; $v2 = 30; $v3 = 30;
$v3 = add($v1, $v2);

sub add{
    my ($i, $j) = @_;
    print "inside function i = $i, j = $j\n";
    print "inside function v1 = $v1, v2 = $v2, v3 = $v3\n";
    return $i + $j;
}

print "outside function i = $i, j = $j\n";
print "outside function v1 = $v1, v2 = $v2, v3 = $v3\n";

for (my $i=0; $i<10; $i++){
    print "inside i = $i\n";
}
print "outside i = $i\n";

# use strict
# use strict;
my $v1 = 10; my $v2 = 20;
addition($v1, $v2);

sub addition{
    my ($a, $b) = @_;
    print $a+$b;
}

# References
$a = 10;
$ref = \$a;
print "Value of a using reference = $$ref\n";
print "Value of a directly = $a\n";
print "Value of ref = $ref\n";

# File handling
open ($fh, "<", "data.txt");
open ($fh1, ">", "udata.txt");

while ($line = <$fh>){
    print "line = $line\n";
    print $fh1 uc($line);
}

close($fh);
close($fh1);

# In-built functions

# chop
$name = "Hansin";
$last = chop($name);
print "$last $name";

# grep
@arr = ('hello', 'hi', "Hola", 'what', 1);
@a = grep(/^h/, @arr);
print "@a\n";

# join
$joined = join(" ", "please", "add", "spaces");
print "$joined\n";

# splice
@a = (1..5);
@a2 = splice(@a, 3, 4, ('hansin', 'ahuja'));
print "@a \n@a2 \n";

# split
$str = 'My, name, is, Hansin';
@spl = split(", ", $str);
print "@spl\n";

# reverse
@a = ('my', 'name', 'is', 'hansin');
@a2 = reverse(@a);
$a3 = reverse($a[0]);
print "@a \n@a2 \n$a3\n";

# substr
$a = 'Hansin';
$a2 = substr($a, 1, 3);
print "$a\n$a2\n";

# length
$a = 'Hansin';
$a2 = length($a);
print "$a2 $a\n";

# offset
$a = 'Hansin';
$a2 = substr($a, 2, -1);
print "$a\n$a2\n";