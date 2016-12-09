#!/usr/bin/env perl6

enum Dead_or_Alive <Dead Alive>;

class Game_of_Thrones {

    has Str $.house is required;
    has Str $.says is required;
    has Str $.named is required;
    has Dead_or_Alive $.doa is required;
    
    method describe { join ' of House ', $!named, $!house}

    }

    my Game_of_Thrones $char1 .= new(house => 'Stark', named => 'Jon Snow', doa => Alive, says => 'Winter is coming');
    my Game_of_Thrones $char2 .= new(named => 'Daenerys', house => 'Targaryen', doa => Alive, says => 'Mother of Dragons');
    my Game_of_Thrones $char3 .= new(named => 'Joffery', house => 'Baratheon', doa => Dead, says => 'You are about as useful as the dirt on my boots!');
    my Game_of_Thrones $char4 .= new(named => 'Jamie', house => 'Lannister', doa => Alive, says=> 'A Lannister always pays his debts');

    for $char1, $char2, $char3, $char4 {
        printf "%s \n\t Says: %s \n\n\t Who will be the next king?: \n\t %s \n\n", .describe, .says, .doa eq Alive ?? 'Me! I will win the game of thrones!' !! 'Not I. I was killed off. Probably horribly.'
    }



