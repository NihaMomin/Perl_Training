#!/usr/bin/perl
	
# Modules used
use strict;
use warnings;
use diagnostics;

use feature 'say';
use feature 'switch';

use v5.16;
# --------------------------------------------------------
# Print function
my $name = "Niha Momin";
print("Hello World - My name is: $name ......\n");

# block comment
=begin hjwbjhbajhbfhjbdhjbfhjbfhewbehjwbfjnw fwehtml 

=cut
# --------------------------------------------------------
# Three main data-types in perl:

# 1: Scalar
#     Scalars are simple variables. They are preceded by a dollar sign ($).
#     A scalar is either a number, a string, or a reference.
#     A reference is actually an address of a variable, which we will see in the upcoming chapters.

# string
# scalar variables
my $last_name  = "momin\n";
print $last_name;
# number
my $num = 5.7;
print "$num \n";
# reference (array or hash)
# list variable
my @list = (0,1,2,3,4);
my $list = @list; # it will hold size of array
print("$list\n");
# hash variable
my %hash = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);
my $hash = %hash; # it will hold size of hash keys only
print("$hash\n");
# --------------------------------------------------------
# String Manipulation with perl

# This is case of interpolation.
my $str = "Welcome to \ntutorialspoint.com!";
print "$str\n";

# This is case of non-interpolation.
my $str = 'Welcome to \ntutorialspoint.com!';
print "$str\n";

# Only W will become upper case.
my $str = "\uwelcome to tutorialspoint.com!";
print "$str\n";

# Whole line will become capital.
my $str = "\UWelcome to tutorialspoint.com!";
print "$str\n";

# A portion of line will become capital.
my $str = "Welcome to \Ututorialspoint\E.com!";
print "$str\n";

# Backsalash non alpha-numeric including spaces.
my $str = "\QWelcome to tutorialspoint's family";
print "$str\n";
# --------------------------------------------------------
# Scalar operations
my $str = "hello" . "world";       # Concatenates strings.
my $num = 5 + 10;                  # adds two numbers.
my $mul = 4 * 5;                   # multiplies two numbers.
my $mix = $str . $num;             # concatenates string and number.

print "str = $str\n";
print "num = $num\n";
print "mul = $mul\n";
print "mix = $mix\n";
# --------------------------------------------------------
# V-string
# A literal of the form v1.20.300.4000 is parsed as a string composed of characters with the specified ordinals. This form is known as v-strings.
my $smile  = v9786;
print "smile = $smile\n";
# --------------------------------------------------------
# Special Literals
print "File name ". __FILE__ . "\n";
print "Line Number " . __LINE__ ."\n";
print "Package " . __PACKAGE__ ."\n";
# they can not be interpolated
print "__FILE__ __LINE__ __PACKAGE__\n"
# --------------------------------------------------------