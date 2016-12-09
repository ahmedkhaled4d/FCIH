rule(1,
     lhs( [not(av(no_traineer, yes)), av(playground_problem, yes)] ),
     rhs( av(problem, sport), 100) ).

rule(2,
     lhs( [av(money_shortage, yes)] ),
     rhs( av(playground_problem, yes), 50) ).

rule(3,
     lhs( [av(no_space, yes)] ),
     rhs( av(playground_problem, yes), 50) ).

rule(4,
     lhs( [av(genatics, yes)] ),
     rhs( av(biological_problem, yes), 50) ).

rule(5,
     lhs( [av(injuries, yes)] ),
     rhs( av(biological_problem, yes), 50) ).

rule(6,
     lhs( [av(biological_problem, yes)] ),
     rhs( av(psychological, yes), 30) ).

rule(7,
     lhs( [av(enviomental_problem, yes)] ),
     rhs( av(psychological, yes), 90) ).


rule(8,
     lhs( [av(abuse, yes), av(war, yes)] ),
     rhs( av(problem, enviomental_problem), 100) ).
%
% abubakr
%
rule(9,
	 lhs( [av(ethics_problem,yes) , av(parents_problem,yes)] ) ,
	 rhs( av(school_problem, social), 80) ) .

rule(10,
     lhs( [av(poverty, yes)] ),
     rhs( av(parents_problem, yes), 50) ).

rule(11,
     lhs( [av(illiteracy, yes)] ),
     rhs( av(parents_problem, yes), 50) ).


rule(12,
	 lhs( [av(parents_problem, yes), av(knowledge_problem, yes)]),
	 rhs( av(school_problem , cultural), 90 )).

rule(13,
	 lhs( [av(parents_problem, yes), av(awarness_problem, yes)]),
	 rhs( av(school_problem , cultural), 30 )).
	 
rule(14,
     lhs( [av(violence_with_teacher, yes)] ),
     rhs( av(violence, yes), 50) ).

rule(15,
     lhs( [av(violence_with_students, yes)] ),
     rhs( av(violence, yes), 50) ).
	 
rule(16,
     lhs( [av(teacher_effiency_low, yes)] ),
     rhs( av(educational, yes), 70) ).

rule(17,
     lhs( [av(student_IQ_low, yes)] ),
     rhs( av(educational, yes), 30) ).
	 

rule(18,
     lhs( [av(lack_of_lab, yes)] ),
     rhs( av(technology, yes), 35) ).

rule(19,
     lhs( [av(old_computers, yes)] ),
     rhs( av(technology, yes), 40) ).

rule(20,
     lhs( [av(old_software, yes)] ),
     rhs( av(technology, yes), 35) ).

 


askable(no_traineer, 'Did the school suffer from the shotage of traineers ? ?').
askable(money_shortage, 'Did the school suffer from the shotage of money ?').
askable(no_space, 'Did the school  suffer from space problem ?').
askable(abuse, 'Did the students suffer from the abuse ?').
askable(war, 'Did the country suffer from the wars ?').
askable(genatics, 'Did the students have Genetic problems ?').
askable(injuries, 'Did the students suffer from the injuries ?').
askable(illiteracy, 'Did the parents suffer from illiteracy ?').
askable(poverty, 'Did the parents suffer from poverty ?').
askable(ethics_problem, 'Did the student has ethics problem ?').
askable(knowledge_problem, 'Does the student has less in knowledge ?').
askable(awarness_problem, 'Does the student has less in awarness ?').

askable(old_software, 'Did the school suffer from old software ?').
askable(old_computers, 'Did the school suffer from old computers ?').
askable(lack_of_lab, 'Did the school suffer from lack of lab ?').
askable(student_IQ_low, 'Did the students have IQ low ?').
askable(violence_with_teacher, 'Did the students suffer from violence with teacher?').
askable(violence_with_students, 'Does the student has violence with his colleges ?').



