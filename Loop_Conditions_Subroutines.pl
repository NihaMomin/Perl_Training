#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my $status = (70 > 60 )? "A senior citizen" : "Not a senior citizen";
print($status);

# for( ; ; ) {
#     printf "This loop will run forever.\n";
# }

my $i = 0;
while ($i<=5){
    print("$i\n");
    $i++;
}

sub run{
    print("runninggg.....\n");
}run();

sub avg{
    # get total number of arguments passed.
    my $n = scalar(@_);
    my $sum = 0;
    foreach my $item (@_) {
        $sum += $item;
    }
    return($sum/$n);
}print(avg(1,2,3,4,5));

