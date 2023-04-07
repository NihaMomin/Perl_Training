#!/usr/bin/perl

use warnings FATAL => 'all';
use strict;
package Person;

# object constructor
# new is the constructor name here (we can use any name, new is used mostly by the devs)
sub new {
    print("This is the Person Constructor\n");
    # following argument contains only the class name.
    # shift removes and returns the first value from the @_ array variable
    # that holds the parameter values given when the method is called.
    my $class = shift;
    # object parameters are defined with the self block, mostly arrays/ hashes are being used
    # we also can use simple hash in our constructor if you don't want to assign any value to any class variable
    my $self = {
        _firstName => shift,
        _lastName  => shift
    };
    # Print all the values just for clarification.
    print "First Name: $self->{_firstName}\n";
    print "Last Name: $self->{_lastName}\n";
    # bless return a reference which ultimately becomes an object
    # Turn the hash reference stored in $self into a Person object, by “blessing” it into the Person class (remember, $class eq "Person").
    bless $self, $class;
    return $self;
}

# defining helper methods, getter and setters

sub getFirstName {
    # The first parameter to instance methods is the object instance itself.
    # This statement stores the first value from the @_ parameter array variable into a new local scalar variable $self.
    my( $self ) = @_;
    return $self->{_firstName};
}

sub setFirstName {
    my ( $self, $firstName ) = @_;
    # set only if first name is provided while the method call
    $self->{_firstName} = $firstName if defined($firstName);
    return $self->{_firstName};
}

# later this method will be used to implement inheritance
sub getGender {
    my($self) = @_;
    return( $self->{_firstName}, " is a Person\n")
}
# destructor, called by default at the end of the program using this class
# destructor frees the memory allocated to the object when you have finished using it

# A destructor method is simply a member function (subroutine) named DESTROY, which will be called automatically in following cases −
#     When the object reference's variable goes out of scope.
#     When the object reference's variable is undef-ed.
#     When the script terminates
#     When the perl interpreter terminates
sub DESTROY {
    print "Person::DESTROY called\n";
}

# pm should return true/1 in the and
1;