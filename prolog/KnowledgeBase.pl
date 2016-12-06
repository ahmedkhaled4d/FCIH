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



%aboubakr

 poverty(50).
 illiteracy(50).
 knowledge(90).
 awarness(30).
 ethics(80) . 
 
 fact(Prompt) :-
 	write(Prompt),
 	read(X),
 	X == true.

 ethics_problem :-
 	fact('is the student has ethics issue ?(true/false) ').

 poverty_problem :-
 	fact('is the student suffer from the poverty problem ?(true/false) ').

 illiteracy_problem :-
 	fact('is the student suffer from illiteracy ?(true/false)') .	
	
 knowledge_problem :-
 	fact('is the student suffer from the lack of knowledge ?(true/false)  ').
	
 awarness_problem :-
 	fact('is the student suffer from the lack of Awarness ?(true/false) ').

 search(X) :-
 	school_problem(X).

 parents_problem(CF):-
 	poverty(CF1) ,
 	illiteracy(CF2) ,
 	CF is (CF1+CF2)/2 . 	

 school_problem(social) :-
 	social,
 	write('it is a social problem with CF = ') ,
 	ethics(CF1) , 
 	poverty(CF2) , 
 	illiteracy(CF3), 
 	AV is (CF1+CF2+CF3)/3 ,
 	write(AV) .  

 school_problem(cultural) :-
 	cultural,
 	awarness(CF),
 	knowledge(CF1) ,  
 	poverty(CF2) , 
 	illiteracy(CF3), 
 	AV is (CF+CF1+CF2+CF3)/4 ,
 	write(AV) .  	

 school_problem(X) :-
 	((social, X = 'social');(cultural, X = 'cultural')).

 social :-
 	ethics_problem ,
 	poverty_problem ,
 	illiteracy_problem .

 cultural :-
 	(poverty_problem;illiteracy_problem) ,(knowledge_problem ; awarness_problem ).
 
