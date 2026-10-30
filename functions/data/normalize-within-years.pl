#!/usr/bin/perl -w

use strict;

my @file = ();
my %counts;

while(my $line = <>) {
    chomp $line;
    next if $line =~ /^#/;
    my $date; my $time; my $day_in_year; my $count;

    ($date,$time,$day_in_year,$count) = split /\t+/, $line;
    $date =~ m/^(20)(\d\d)/;
    my $year = $&;

    $counts{$year} += $count;

    push @file, $line;
}

foreach my $line (@file)  {

    my $date; my $time; my $day_in_year; my $count;

    ($date,$time,$day_in_year,$count) = split /\t+/, $line;
    
    $date =~ m/^(20)(\d\d)/;
    my $year = $1 . $2;

    next if $counts{$year} == 0;
    
    my $rel_count = $count/$counts{$year};

    print $line . "\t" . $rel_count . "\n";
    
}
