
% Block facts
block(a).
block(b).
block(c).

% Position facts
on(b,a).
on(c,b).

% Direct relationship
above(X,Y) :-
    on(X,Y).

% Indirect relationship
above(X,Y) :-
    on(X,Z),
    above(Z,Y).

% Clear block
clear(a).
