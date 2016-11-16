#!/usr/bin/env perl6

sub MAIN ($text1!, $text2!) {

    my $count = 0;
    my $array1 = $text1.IO.words.lc.subst(/<-[\w\s]>/, '', :g).words.sort.unique;
    my $array2 = $text2.IO.words.lc.subst(/<-[\w\s]>/, '', :g).words.sort.unique;

#    put $array1;
#    put $array2;
   
    loop (my $i = 0; $i < $array1; $i++) {
        loop (my $j = 0; $j < $array2; $j++) {
            if ($array1[$i] eq $array2[$j]) {
                $count++;       
            }
        }
    }
    put $count;

}
