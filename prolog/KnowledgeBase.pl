% ahmed  
no_space(50).
money_shortage(50).
lack_playground(100).
no_traineer.


war(100).
abuse(100).
injunes(50).
genetics(50).
biological(30).
enviromental(90).


fact(Prompt) :-
	write(Prompt),
	read(X),
	X == true.

problem(X) :-
	sport,
	X = 'sport problem'.

% ===========
% sport field
% ===========

sport :-
	not(no_traineer),
	lack_playground(100).

lack_playground(CF) :-
	no_space(CF2),
	money_shortage(CF3),
	CF is CF2 + (100-CF2) * CF3/100.
