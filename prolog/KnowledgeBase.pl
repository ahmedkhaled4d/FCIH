%=================================== 
%       Facts
%===================================

%male( <name> ).
male(albertus).
male(albert).
male(ralph).
male(neal).
male(wayne).
male(nate).
male(ian).
male(john).
male(sean).
male(kyle).
male(daniel).
male(shane).

%female( <name> ).
female(lydia).
female(may).
female(alberta).
female(joan).
female(amy).
female(bethany).
female(debbie).
female(cleo).
female(elizabeth).
female(kathy).
female(martha).

%parent( <parent's name>, <child's name> ).
parent(albertus, ralph).
parent(albert, alberta).
parent(ralph, neal).
parent(ralph, wayne).
parent(ralph, martha).
parent(wayne, amy).
parent(neal, nate).
parent(neal, ian).
parent(neal, bethany).
parent(john, debbie).
parent(john, sean).
parent(john, elizabeth).
parent(sean, kyle).
parent(sean, daniel).
parent(lydia, ralph).
parent(may, alberta).
parent(alberta, neal).
parent(alberta, wayne).
parent(alberta, martha).
parent(debbie, nate).
parent(debbie, ian).
parent(debbie, bethany).
parent(cleo, debbie).
parent(cleo, sean).
parent(cleo, elizabeth).
parent(kathy, kyle).
parent(kathy, daniel).
parent(joan, amy).

married(neal, debbie).
married(ralph, alberta).
married(albertus, lydia).
married(albert, may).
married(sean, kathy).
married(john, cleo).
married(debbie,neal).
married(alberta, ralph).
married(lydia, albertus).
married(may, albert).
married(kathy, sean).
married(cleo, john).


%=================================== 
%       RULES
%===================================


spouse(X, Y)             :-  married(X, Y).
husband(X, Y)            :-  male(X),       married(X, Y).
wife(X, Y)               :-  female(X),     married(X, Y).
father(X, Y)             :-  male(X),       parent(X, Y).
 
sibling(X, Y)            :-  father(Z, X),  father(Z, Y),
                             mother(W, X),  mother(W, Y),    not(X = Y).
brother(X, Y)            :-  male(X),       sibling(X, Y).
sister(X, Y)             :-  female(X),     sibling(X, Y).
grandparent(X, Z)        :-  
grandson(X, Z)           :-  male(X),       grandchild(X, Z).
granddaughter(X, Z)      :-  f 
daughter(Y, X)           :-  female(Y),     child(Y, X).
descendent(Y, X)         :-  ancestor(X, Y).
auntoruncle(X, W)        :-  sibling(X, Y), parent(Y, W).
auntoruncle(X, Z)        :-  married(X,Y),  sibling(Y,W),    parent(W,Z).
uncle(X, W)              :-  male(X),       auntoruncle(X, W).
aunt(X, W)               :-  female(X),     auntoruncle(X, W).
cousin(X, Y)             :-  parent(Z, X),  auntoruncle(Z, Y).
nieceornephew(X, Y)      :-  parent(Z, X),  sibling(Z, Y).
nephew(X, Y)             :-  male(X),       nieceornephew(X, Y).
niece(X, Y)              :-  female(X),     nieceornephew(X, Y).
greatgrandparent(X, Z)   :-  parent(X, Y),  
 
parentinlaw(X, Y)        :-  married(Y, Z), parent(X, Z).
fatherinlaw(X, Y)        :-  male(X),       parentinlaw(X, Y).
motherinlaw(X, Y)        :-  female(X),     parentinlaw(X, Y).
siblinginlaw(X, Y)       :-  married(Y, Z), sibling(X, Z).
brotherinlaw(X, Y)       :-  male(X),       siblinginlaw(X, Y).
sisterinlaw(X, Y)        :-  female(X),     siblinginlaw(X, Y).
childinlaw(X, Y)         :-  married(X, Z), child(Z, Y).
soninlaw(X, Y)           :-  male(X),       childinlaw(X, Y).
daughterinlaw(X, Y)      :-  female(X),     childinlaw(X, Y).


