#!/usr/bin/env perl6

sub MAIN (Int $n!, Int $k!) {
my $babies = 1;
my $yadults = 0;
my $adults = 0;

    loop (my $i = 0; $i < $n; $i++) {
        my $total = $babies + $yadults + $adults;
        put $total;
        $adults = $adults + $yadults;
        $yadults = $babies;
        $babies = $adults*3;
#        my $total = $babies + $yadults + $adults;
        
    }




}
