% Course recommendations

recommend(1, 'Machine Learning').
recommend(2, 'Data Science').
recommend(3, 'Network Security').
recommend(4, 'Full Stack Development').

% Interest names

interest(artificial_intelligence, 1).
interest(data_analysis, 2).
interest(cyber_security, 3).
interest(web_development, 4).

% Course recommendation by interest

suggest(Interest, Course) :-
    interest(Interest, Number),
    recommend(Number, Course).

% Display recommendation

show_recommendation(Interest) :-
    suggest(Interest, Course),
    write('Recommended Elective: '),
    writeln(Course).