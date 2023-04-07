#!/usr/bin/perl

use strict;
use warnings FATAL => 'all';

use lib '/home/niha/Desktop/Symbox Training/perl/Perl Training/';
use Person;
use Man;
use Woman;

# Making a person object

my $object = new Person( "Niha", "Momin");
# Get first name which is set using constructor.
my $firstName = $object->getFirstName();
print( "Gender: ", $object->getGender);

print "Before Setting First Name is : $firstName\n";
# Now Set first name using helper function.
$object->setFirstName( "Alisha" );
# Now get first name set by helper function.
$firstName = $object->getFirstName();
print "Before Setting First Name is : $firstName\n";

# Making a Man object
my $man = new Man("Ali", "Khan", 1000);
print $man->getGender ;
# Making a Woman object
my $woman = new Woman("Simran", "Momin", 5.7);
print $woman->getGender ;