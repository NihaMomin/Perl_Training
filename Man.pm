package Man;

use strict;
use warnings FATAL => 'all';

# importing parent class
use Person;
our @ISA = qw(Person);

# Overriding constructor
sub new{
    print("This is the Man Constructor\n");
    my ($class, $firstName, $lastName, $net_worth) = @_;
    # Call the constructor of the parent class, Person.
    my $self = $class->SUPER::new( $firstName, $lastName);
    # Adding few more attributes
    $self->{_netWorth} = $net_worth;
    print "Net Worth: $self->{_netWorth} \n";
    bless $self, $class;
    return $self;
}
# Helper methods
sub getNetWorth{
    my($self) = @_;
    return "Net Worth: $self->{_netWorth} \n";
}
# Overriding helper methods from parent person class
sub getGender{
    my($self) = @_;
    return $self->{_firstName}, " is a Man\n";
}
# destructor
sub DESTROY {
    print "Man::DESTROY called\n";
}
1;