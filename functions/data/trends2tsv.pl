#!/usr/bin/perl -w

#
# Convert a Google Trends CSV export ("Time","term" / "YYYY-MM-DD",value)
# into a TSV with four columns:
#
#   Date  Time (real number)  Day number (in year)  Search interest
#
# Time is year + (day number - 1) / (days in that year), so 1 January
# is exactly YYYY.0000 and leap years are divided by 366.
#
# Usage:
#   ./trends2tsv.pl search-interest-swedish-moerdarsnigel.csv > \
#                   search-interest-swedish-moerdarsnigel.tsv
#

use strict;

my @cumulative = (0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334);

sub is_leap {
    my $y = shift;
    return ($y % 4 == 0 && $y % 100 != 0) || $y % 400 == 0;
}

print "# Date\tTime (real number)\tDay number (in year)\tSearch interest\n";

while (my $line = <>) {
    $line =~ s/\r?\n$//;
    $line =~ s/"//g;

    next unless $line =~ m/^(\d{4})-(\d\d)-(\d\d),\s*(\S+)/;
    my ($year, $month, $day, $interest) = ($1, $2, $3, $4);

    my $leap = is_leap($year);
    my $doy  = $cumulative[$month - 1] + $day + ($leap && $month > 2 ? 1 : 0);
    my $time = $year + ($doy - 1) / ($leap ? 366 : 365);

    printf "%04d-%02d-%02d\t%.4f\t%d\t%s\n",
        $year, $month, $day, $time, $doy, $interest;
}
