#!/usr/bin/perl -w

use strict;

my @file=();
my %interests;
my %prod;

my $normalized = "mean-search-day-se.tsv";
my $rain       = "mean-precipitation-sweden.csv";

open(NORM,"<$normalized") or die "$normalized: $!";
open(RAIN,"<$rain") or die "$rain: $!";

my %rain_by_year;
my %search_day;

my $sigmaX=0;
my $sigmaXsquare=0;
my $sigmaY=0;
my $sigmaXY=0;

while(my $line = <RAIN>) {
    my $year; my $mm; my $therest;
    $line =~ s/^\xEF\xBB\xBF//;   # byte order mark in the World Bank files
    next if $line =~ m/^#/;
    next if $line =~ m/^"/;      # header line without a leading #
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

my $N=0;

foreach my $year (@years) {

    next unless defined $rain_by_year{$year};   # e.g. the current year
    $N++;
    print $year . "\t" .
	$rain_by_year{$year} . "\t" .
	$search_day{$year} . "\n";

    $sigmaX += $rain_by_year{$year};
    $sigmaXsquare +=  $rain_by_year{$year} ** 2;
    $sigmaY += $search_day{$year};
    $sigmaXY += $rain_by_year{$year} * $search_day{$year};
    $sigmaYsquare += $search_day{$year} ** 2;
}

my $intercept = ($sigmaY * $sigmaXsquare - $sigmaX * $sigmaXY)/($N * $sigmaXsquare - $sigmaX**2);

# print $intercept . "\n";

my $slope  = ( $N * $sigmaXY - $sigmaX * $sigmaY)/($N * $sigmaXsquare - $sigmaX**2);

# print $slope . "\n";

print STDERR "Intercept\t" .  $intercept          . "\n";
print STDERR "Slope\t"   . $slope . "\n";
