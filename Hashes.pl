#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

# A hash is a set of key/value pairs. Hash variables are preceded by a percent (%) sign.
# To refer to a single element of a hash, you will use the hash variable name preceded by a "$" sign
# and followed by the "key" associated with the value in curly brackets..

my %data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);
# or %data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);
# or %data = (-JohnPaul => 45, -Lisa => 30, -Kumar => 40);

# referring to  single key of hash
# $data{'John Paul'} = 45
# $data{'Lisa'} = 30
# $data{'Kumar'} = 40

# hash slicing
%data = (-JohnPaul => 45, -Lisa => 30, -Kumar => 40);
my @array = @data{-JohnPaul, -Lisa};
print "Array : @array\n";

# extracting keys
my @names = keys %data; print("@names\n");
my @values = values %data; print("@values\n");

# adding and removing elements
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);
my @keys = keys %data;
my $size = @keys;
print "1 - Hash size:  is $size\n";

# adding an element to the hash;
$data{'Ali'} = 55;
@keys = keys %data;
$size = @keys;
print "2 - Hash size:  is $size\n";

# delete the same element from the hash;
delete $data{'Ali'};
@keys = keys %data;
$size = @keys;
print "3 - Hash size:  is $size\n";
