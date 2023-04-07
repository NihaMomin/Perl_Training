#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

# open(DATA,"+>>file.txt") || die "Couldn't open file file.txt, $!";
open(DATA,"<file.txt") || die "Couldn't open file file.txt, $!";
while(<DATA>) {
    print "$_";
}
close(DATA);