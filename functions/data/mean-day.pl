#!/usr/bin/perl -w

use strict;

my @file=();
my %interests;
my %prod;

while(my $line = <>) {

    chomp $line;
    next if $line =~ /^#/;
    my $date; my $time; my $day_in_year; my $interest;

    ($date,$time,$day_in_year,$interest) = split /\t+/, $line;
    
    $date =~ m/^(20)(\d\d)/;
    my $year = $1.$2;

    $interests{$year} += $interest;
    $prod{$year} += $interest*$day_in_year;

    push @file, $line;

}

my @years = sort(keys(%prod));

foreach my $year (@years) {
    next if $interests{$year} == 0;
    print $year . "\t" .  $prod{$year} /  $interests{$year} . "\n";
}

