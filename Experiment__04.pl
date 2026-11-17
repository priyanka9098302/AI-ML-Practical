
% Faculty facts
faculty(ramesh, ai).
faculty(suresh, python).
faculty(neha, prolog).

% Subject facts
subject(ai).
subject(python).
subject(prolog).

% Classroom facts
classroom(ai, room101).
classroom(python, room102).
classroom(prolog, room103).

% Timetable facts
timetable(monday, 10, ai, ramesh, room101).
timetable(monday, 11, python, suresh, room102).
timetable(tuesday, 10, prolog, neha, room103).

% Rule
class_at(Day, Time, Subject, Faculty, Room) :-
    timetable(Day, Time, Subject, Faculty, Room).
