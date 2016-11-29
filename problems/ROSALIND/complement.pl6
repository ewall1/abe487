#!/usr/bin/env perl6

sub MAIN (Str $file!) {
my $DNA = $file.IO.f ?? $file.IO.slurp !! $file;
$DNA ~~ tr/ATGC/TACG/;

put $DNA.flip;

}

