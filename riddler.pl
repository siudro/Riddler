/* prolog riddler game.
    start with ?- play.     */
    
/* riddles and the answers rules */

riddle1(he_lies_still). 
riddle2(wwwdotrataaladadotcom).
riddle3(justice).
riddle4(bribe).
riddle5(the_rat).
riddle6(orphan).
riddle7(arkham_asylum).
riddle8(you).
riddle9(a_friend).
riddle10(renewal).
riddle11(mask).
riddle12(confusion).

/* riddle me this part,
contains rules to verify riddles answers*/
               
playG(A,B,C,D,E,F,G,H,I,J,K,L):-(
 write('if you want to play right, use lower case only, replace space with 
        _, '),nl,write('and remember, you only have one chance to answer!'),                               
                              nl,nl,  write('What Does A Liar Do When He is Dead?'),read(A),
    (   ( riddle1(A) ->
 (write('Correct!'), nl);(write('No,he lies still.'))) ,   

nl,write('You Are El Rata Alada'),
        nl,write('Hint: use dot instead of . '),
read(B),
    ( riddle2(B) ->
 (write('Correct!'), nl);(write('No. No, no, no! it is wwwdotrataaladadotcom'))),    


nl,
write('It can be cruel, poetic, or blind.
       But when it’s denied, it’s violence you may find'),
read(C),
( riddle3(C) ->
 (write('Correct!'), nl);(write('NO! AHHHHH! This is not how this was supposed to go! its justice!'))),
    nl,

write('If you are justice, 
       please do not lie. What is the price for your blind eye?'),
read(D),
( riddle4(D) ->
 (write('Correct!'), nl);(write('wrong,bribe'))),
    nl,
    

write('Since your justice is so select,
       please tell us, which vermin you are paid to protect?'),
read(E),
    ( riddle5(E) ->
 (write('Correct!'), nl);(write('Interesting. You're missing the big picture. it is the rat'))),
    nl,

write('I grew up from a seed, as tough as a weed.
       But in a mansion, in a slum,
       I will never know where I come from. Do you know what I am?'),
read(F),
    ( riddle6(F) ->
 (write('Correct!'), nl);(write('No! an orphan'))),
    nl,

write('See you in hell.'),
read(G),
   ( riddle7(G) ->
 (write('Correct!'), nl);(write('NO! AHHHHH! arkham asylum'))),
    nl,


write('What is black and blue and dead all over?'),
 read(H),
    ( riddle8(H) ->
 (write('Correct!'), nl);(write('wrong, you'))),
    nl,

write('Riddle me this: The less of them you have,
       the more one is worth?'),
   read(I),
 ( riddle9(I) ->
 (write('Correct!'), nl);(write('You mean you didn't figure it out? It's a friend!'))),
    nl,

write('What was new, is new again. Rebirth.
       Restoration. Reformation.'),

    read(J),
( riddle10(J) ->
 (write('Correct!'), nl);(write('Oh, you're really not as smart as I thought you were. I guess I gave you too much credit. It's a renewal'))),
    nl,

write('Fear he who hides behind one.'),

    read(K),
    ( riddle11(K) ->
 (write('Correct!'), nl);(write('wrong, mask'))),
    nl,

write('I am first a fraud or a trick.
       Or perhaps a blend of the two. 
       That’s up to your misinterpretation.'),
   read(L),
    ( riddle12(L) ->
 (write('yes!'), nl,!);(write('Do I need to show you more for you to understand? it's confusion')))),
    nl, write('data source: https://screenrant.com/the-batman-movie-riddler-riddle-meanings-explained/')).
   
   
   
   
/* rule to start the game */
play:-playG(A,B,C,D,E,F,G,H,I,J,K,L),riddle1(A),
    riddle2(B),riddle3(C),riddle4(D),riddle5(E),riddle6(F),
riddle7(G),riddle8(H),riddle9(I),riddle10(J),riddle11(K),
    riddle12(L).
    
    
