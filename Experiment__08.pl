
% Graph edges
edge(a,b).
edge(a,c).
edge(b,d).
edge(b,e).
edge(c,f).
edge(c,g).

% Bidirectional connection
connected(X,Y) :-
    edge(X,Y).

connected(X,Y) :-
    edge(Y,X).

% DFS
dfs(Start, Goal, Path) :-
    dfs_path(Start, Goal, [Start], Path).

dfs_path(Goal, Goal, Visited, Path) :-
    reverse(Visited, Path).

dfs_path(Current, Goal, Visited, Path) :-
    connected(Current, Next),
    \+ member(Next, Visited),
    dfs_path(Next, Goal, [Next|Visited], Path).
