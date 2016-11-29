#!/usr/bin/env perl6

sub MAIN (Str $file!) {
my $DNA = $file.IO.f ?? $file.IO.slurp !! $file;
my $Gcount = 0;
my $Ccount = 0;
my $Acount = 0;
my $Tcount = 0;
    for $DNA.lines.lc.comb {
        when 'g' { $Gcount++ }
        when 'c' { $Ccount++ }
        when 'a' { $Acount++ }
        when 't' { $Tcount++ }
    }

put "$Acount $Ccount $Gcount $Tcount";

}
