#!/usr/bin/env perl6

sub MAIN (Int $k!, Int $m!, Int $n!) {

my $pop = $k + $m + $n;
my $prob = ($k/$pop)*($k-1)/($pop-1)+($k/$pop)*($m/($pop-1))+($m/$pop)*($k/($pop-1))+($k/$pop)*($n/($pop-1))+($n/$pop)*($k/($pop-1))+(0.75)*(($m/$pop)*($m-1)/($pop-1))+(0.5)*(($m/$pop)*($n)/($pop-1)+($n/$pop)*($m)/($pop-1));
put $prob;

}
