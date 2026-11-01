#!/usr/bin/perl -w

use strict;

my @file=();
my %interests;
my %prod;

my $normalized = "mean-search-day-se.tsv";
my $rain       = "mean-preciptation-sweden.csv";

open(NORM,"<$normalized");
open(RAIN,"<$rain");

my %rain_by_year;
my %search_day;

my $sigmaX=0;
my $sigmaXsquare=0;
my $sigmaY=0;
my $sigmaXY=0;

while(my $line = <RAIN>) {
    my $year; my $mm; my $therest;
    next if $line =~ m/^#/;
    ($year, $mm, $therest) = split /,/, $line;
    next if $year < 2000;
    $year =~ m/^\s*(\d\d\d\d)/;
    $year = $1;

    $rain_by_year{$year}=$mm;
}

close(RAIN);

while(my $line = <NORM>) {
    my $year; my $mean_day;
    next if $line =~ m/^#/;
    chomp $line;
    ($year, $mean_day) = split /\t+/, $line;
    $search_day{$year} = $mean_day;
}
close(NORM);

my @years = sort(keys(%search_day));

foreach my $year (@years) {

    print $year . "\t" .
	$rain_by_year{$year} . "\t" .
	$search_day{$year} . "\n";

}
