% Experiment 15: Resolution and Unification

% Facts
human(ram).
human(shyam).
human(amit).

% Rules
mortal(X) :-
    human(X).

student(komal).
student(rahul).

% Unification
unification_demo :-
    X = student(komal),
    write('Unification Successful: '),
    writeln(X).

% Resolution
resolution_demo :-
    mortal(ram),
    write('Resolution Successful: Ram is Mortal'),
    nl.

% Main Program
solve :-
    unification_demo,
    resolution_demo.