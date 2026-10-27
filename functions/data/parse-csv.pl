#!/usr/bin/perl -w

#
# ./parse-csv.pl supersnigel.csv   | \
# perl -ne 'if(m/(\d\d\d\d)/) { print "$&\n"; }' | sort  | uniq -c
#
use strict;

while(my $line = <>) {

    next if $line =~ /^#/;
#    print $line;
    chomp $line;

    my @data = split /\t+/, $line;
    my $i = 0;

    my $year = 0;

    if($data[0] =~ m/Flashback/) {
	if( $data[11] =~ m/(\d\d\d\d)/ ) {
	    $year = $&;
	}
    } elsif($data[0] =~ m/GP/) {
	if( $data[0] =~ m/(\d\d\d\d)/ ) {
	    $year = $&;
	}
    } elsif($data[0] =~ m/SVT/) {
	if( $data[0] =~ m/(\d\d\d\d)/ ) {
	    $year = $&;
	}
    } elsif($data[0] =~ m/Svensk Twitter/) {
	if( $data[11] =~ m/(\d\d\d\d)/ ) {
	    $year = $&;
	}
    } elsif($data[0] =~ m/Twittermix/) {
	if( $data[19] =~ m/(\d\d\d\d)/ ) {
	    $year = $&;
	}
    } elsif($data[0] =~ m/Webbnyheter/) {
	if( $data[0] =~ m/(\d\d\d\d)/ ) {
	    $year = $&;
	}
    } elsif($data[0] =~ m/Wikipedia/) {
	if( $data[7] =~ m/(\d\d\d\d)/ ) {
	    $year = $&;
	}
    }  elsif($data[0] =~ m/8 Sidor/) {
	if( $data[10] =~ m/(\d\d\d\d)/ ) {
	    $year = $&;
	}
    }


    
    if($year <= 1) {
	for($i=0; $i<$#data; $i++) {
	    print $i . "\t" . $data[$i] . "\n";
	}
    }

    print $data[0] . "\n";
    print "$data[2] -- $data[3] --  $data[4] -- $year\n";

}
