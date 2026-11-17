
% State values
value(0, 0).
value(1, 5).
value(2, 9).
value(3, 15).
value(4, 12).
value(5, 8).

% Neighbor
neighbor(X,Y) :-
    Y is X + 1,
    value(Y,_).

% Hill Climbing
hill_climb(Current, Best) :-
    value(Current, CurrentValue),
    neighbor(Current, Next),
    value(Next, NextValue),
    NextValue > CurrentValue,
    hill_climb(Next, Best).

hill_climb(Current, Current).
