% facts
move(0,1,3).
move(0,2,5).
move(1,3,6).
move(1,4,8).
move(2,4,7).
move(2,5,9).
move(3,6,10).
move(3,7,12).
move(4,7,11).
move(4,8,13).
move(5,8,12).
move(5,9,14).
move(3,4,5).
move(6,7,8).
move(7,8,9).
move(10,11,12).
move(11,12,13).
move(12,13,14).

solve1(X, Y, Z) :-
    ( X==0 ->
         Z = Y
    ;
         X1 is N -1,
         Y1 is Y + 1,
         prolog_while(X1, Y1, Z)
    ).

  SolvePuzzle(move1, move2, move3) :-
    solve1(move3, move1, move2),
    SolvePuzzle ((solve1(move3, move1, move2)), solve1(move2, move3, move1), solve1(move3, move2, move1)).
