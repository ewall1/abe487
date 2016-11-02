#!/usr/bin/env perl6

sub MAIN (Str $s1!, Str $s2!) {
    my Numeric $shortestlength = 0;
    my Numeric $longlength = 0;
    my Numeric $l1 = chars ($s1);
    my Numeric $l2 = chars ($s2);

    if $l1 > $l2 {
    	$shortestlength = chars ($s2);
	$longlength = chars ($s1);    
    }else {
    	$shortestlength = chars ($s1);
	$longlength = chars ($s2);
    }
    
    my Numeric $diff = $longlength - $shortestlength;
    my $hd = $diff;
    
    loop (my $i=0; $i < $shortestlength; $i++)
	{
	    ++$hd if substr($s1, $i, 1) ne substr($s2, $i, 1);
	}

    put "$hd";
}
