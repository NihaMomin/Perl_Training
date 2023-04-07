#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

# Arrays
#     Arrays are ordered lists of scalars that you access with a numeric index, which starts with 0.
#     They are preceded by an "at" sign (@).

my @array = (1, 2, 'Hello'); print("@array\n");
my @array1 = qw/This is an array/; print("@array1\n");

# sequential number array
my @var_10 = (1..10); print "@var_10\n";   # Prints number from 1 to 10

# array size
@array = (1,2,3); print("@array\n");
$array[50] = 4;
my $size = @array;
my $max_index = $#array;
print "Size:  $size\n";
print "Max Index: $max_index\n";

# array functions

# create a simple array
my @coins = ("Quarter","Dime","Nickel"); print "1. \@coins  = @coins\n";

# add one element at the end of the array
push(@coins, "Penny"); print "2. \@coins  = @coins\n";

# remove one element from the last of the array.
pop(@coins); print "4. \@coins  = @coins\n";

# add one element at the beginning of the array
unshift(@coins, "Dollar"); print "3. \@coins  = @coins\n";

# remove one element from the beginning of the array.
shift(@coins); print "5. \@coins  = @coins\n";

# array slicing
my @days = qw/Mon Tue Wed Thu Fri Sat Sun/;
my @weekdays = @days[3,4,5]; # or @weekdays = @days[3..5];
print "@weekdays\n";

# transforming arrays (string <-> arrays)
my $string = "my-name-is-niha";
my @str_arr = split("-", $string); print("@str_arr\n"); # spiting into array
my $str1 = join(",", @str_arr); print("$str1\n"); # joining to string

# array sorting
# sort this array
my @sorted_strarr = sort(@str_arr); print("@sorted_strarr\n");

# merging array
my @arr11 = (1,2, (3,4)); print("@arr11\n"); # one way
my @arr22 = (5,6,7,8); print("@arr22\n");
my @arr33 = (@arr11, @arr22); print("@arr33\n"); # other way