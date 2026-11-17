
% Fill the jugs
move((A,B),(4,B)) :-
    A < 4.

move((A,B),(A,3)) :-
    B < 3.

% Empty the jugs
move((A,B),(0,B)) :-
    A > 0.

move((A,B),(A,0)) :-
    B > 0.

% Transfer water from 3L to 4L jug
move((A,B),(A1,B1)) :-
    B > 0,
    A < 4,
    Transfer is min(B,4-A),
    A1 is A+Transfer,
    B1 is B-Transfer.

% Transfer water from 4L to 3L jug
move((A,B),(A1,B1)) :-
    A > 0,
    B < 3,
    Transfer is min(A,3-B),
    A1 is A-Transfer,
    B1 is B+Transfer.

% Goal condition
goal((2,_)).
goal((_,2)).
