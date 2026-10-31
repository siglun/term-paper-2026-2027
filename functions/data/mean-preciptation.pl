#!/usr/bin/perl -w

use strict;

my @file=();
my %interests;
my %prod;

while(my $line = <>) {
    my $year; my $mm; my $therest;
    ($year, $mm, $therest) = split /,/, $line;
    next unless $year => 2000;
    print $line;
}
