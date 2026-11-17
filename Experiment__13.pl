% Initial State
initial_state([
    on(b,table),
    on(a,table),
    on(c,a),
    hand_empty,
    clear(c),
    clear(b)
]).

% Move C to Table
move_c_to_table(S1, S2) :-
    select(on(c,a), S1, T1),
    append([on(c,table),clear(a)], T1, S2).

% Move B on C
move_b_on_c(S1, S2) :-
    select(on(b,table), S1, T1),
    select(clear(c), T1, T2),
    append([on(b,c)], T2, S2).

% Move A on B
move_a_on_b(S1, S2) :-
    select(on(a,table), S1, T1),
    select(clear(b), T1, T2),
    append([on(a,b),clear(a)], T2, S2).

% Goal State
goal_state([
    on(c,table),
    on(b,c),
    on(a,b),
    hand_empty,
    clear(a)
]).

% Check Goal
goal_achieved(State) :-
    goal_state(Goal),
    subset(Goal, State).

% Main Program
solve :-
    initial_state(S0),
    write('Initial State: '), writeln(S0),

    move_c_to_table(S0, S1),
    write('Action: Move C to Table'), nl,

    move_b_on_c(S1, S2),
    write('Action: Move B on C'), nl,

    move_a_on_b(S2, S3),
    write('Action: Move A on B'), nl,

    write('Final State: '), writeln(S3),

    (goal_achieved(S3) ->
        writeln('Goal Achieved: true')
    ;
        writeln('Goal Achieved: false')
    ).