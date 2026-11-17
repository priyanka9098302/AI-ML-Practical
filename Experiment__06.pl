
% City connections
connected(raipur, nagpur).
connected(nagpur, bhopal).
connected(bhopal, delhi).
connected(raipur, bilaspur).
connected(bilaspur, korba).

% Route rules
route(X, Y) :-
    connected(X, Y).

route(X, Y) :-
    connected(Y, X).

% Path rules
path(X, Y) :-
    route(X, Y).

path(X, Y) :-
    route(X, Z),
    path(Z, Y).
