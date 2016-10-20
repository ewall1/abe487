#!/usr/bin/env perl6

sub MAIN (Str $file!) {

die "Not a file ($file)" unless $file.IO.f;


my ($linecount, $wordcount) = (0,0);

for $file.IO.lines -> $lines {

$linecount++;
$wordcount += words ($lines);
#$charcount += $lines.chars; This doesn't work and I don't know why!
#$charcount += split('', $lines); Neither does this!

}

my $data = slurp $file.IO;


#for $file.IO.chars -> $charcount { Or this loop. This loop gives 45118?

put "lines ($linecount) words ($wordcount) chars ({$data.chars})";
#}
}
