package Woman;

use strict;
use warnings FATAL => 'all';

# importing parent class
use Person;
# Woman is a person
# They have isa relationship
# Perl has a special variable, @ISA, to help with this. @ISA governs (method) inheritance.
# Perl searches the classes defined in the object class's @ISA array.
our @ISA = qw(Person);  # inherits from Person

# Overriding constructor
sub new{
    print("This is the Woman Constructor\n");
    my ($class, $firstName, $lastName, $height) = @_;
    # Call the constructor of the parent class, Person.
    my $self = $class->SUPER::new( $firstName, $lastName);
    # Adding few more attributes
    $self->{_height} = $height;
    # $self{_weight} = 1;
    print "Height: $self->{_height} \n";
    bless $self, $class;
    return $self;
}
# Helper methods
sub getHeight{
    my($self) = @_;
    return "Height: $self->{_height}\n";
}
# Method Overriding: overriding helper functions from parent person class
sub getGender{
    my($self) = @_;
    return $self->{_firstName}, " is a Woman\n";
}
# destructor
sub DESTROY {
    print "Woman::DESTROY called\n";
}
1;