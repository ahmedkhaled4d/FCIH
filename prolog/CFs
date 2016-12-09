

%==========
%  CFs 
%==========
poverty(50).
illiteracy(50).
knowledge(90).
awarness(30).
ethics(80) .
no_space(50).
no_traineer(100).
money_shortage(50).
lack_playground(100).
war(100).
abuse(100).
injuries(50).
genatics(50).

fact(Prompt) :-
	write(Prompt),
	read(X),
	X == true.

ethics_problem :-
	fact('Are the students has ethics issue ?(true/false) ').

poverty_problem :-
	fact('Are the students suffer from the poverty problem ?(true/false) ').

illiteracy_problem :-
	fact('Are the students suffer from illiteracy ?(true/false)') .

knowledge_problem :-
	fact('Are the students suffer from the lack of knowledge ?(true/false)  ').

awarness_problem :-
	fact('Are the students suffer from the lack of Awarness ?(true/false) ').


space_problem :-
	fact('is the school  suffer from space problem ?(true/false)  ').

money_problem :-
	fact('is the school suffer from the shotage of money ?(true/false)  ').

traineer_problem :-
	fact('is the school suffer from the shotage of traineers ?(true/false)  ').

war_problem :-
	fact('is the country suffer from the wars ?(true/false)  ').

abuse_problem :-
	fact('Are the students suffer from the abuse ?(true/false)  ').

genatics_problem :-
	fact('Are the students have Genetic problems ?(true/false)  ').

injuries_problem :-
	fact('Are the students suffer from the injuries ?(true/false)  ').




search(X) :-
	school_problem(X).

parents_problem(CF):-
	poverty(CF1) ,
	illiteracy(CF2) ,
	CF is (CF1+CF2)/2 .

playground_problem(CF):-
	no_space(CF1) ,
    money_shortage(CF2) ,
	CF is (CF1+CF2)/2 .

enviomental_problem(CF):-
	abuse(CF1) ,
    war(CF2) ,
	CF is (CF1+CF2)/2 .

biological_problem(CF):-
	genatics(CF1) ,
    injuries(CF2) ,
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
	parents_problem(CF2) ,
	AV is (CF+CF1+CF2)/3 ,
	write(AV) .

school_problem(sport) :-
	sport,
	no_traineer(CF),
	playground_problem(CF1) ,
	AV is (CF+CF1)/2 ,
	write(AV) .

school_problem(psychological) :-
	psychological,
	enviomental_problem(CF),
	biological_problem(CF1) ,
	AV is (CF+CF1)/2 ,
	write(AV) .

 school_problem(X) :-
	((social, X = 'social');(cultural, X = 'cultural');(sport, X = 'sport');(psychological, X = 'psychological')).

sport :-
	traineer_problem ,
	(money_problem;space_problem).
 
social :-
	ethics_problem ,
	poverty_problem ,
	illiteracy_problem .



cultural :-
	(poverty_problem;illiteracy_problem) ,(knowledge_problem ; awarness_problem ).

psychological :-
	(war_problem;abuse_problem) ,
	(genatics_problem;injuries_problem).
  
