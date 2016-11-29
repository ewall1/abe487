#!/usr/bin/env perl6

sub MAIN (Str $file!) {
my $DNA = $file.IO.f ?? $file.IO.slurp !! $file;
my $RNA = $DNA.IO.uc.subst('T', 'U', :g);

put $RNA;

}

