
% Winning conditions
win(Board, Player) :-
    line(Board, Player, 1,2,3);
    line(Board, Player, 4,5,6);
    line(Board, Player, 7,8,9);
    line(Board, Player, 1,4,7);
    line(Board, Player, 2,5,8);
    line(Board, Player, 3,6,9);
    line(Board, Player, 1,5,9);
    line(Board, Player, 3,5,7).

% Check three positions
line(Board, P, A, B, C) :-
    nth1(A, Board, P),
    nth1(B, Board, P),
    nth1(C, Board, P).
