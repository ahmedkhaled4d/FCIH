/* Name: ahmed Khaled */
/* ID: 20130025      */

/* Description: A prolog program that uses a knowledge base of relationships */
/*              in a family and queries about a persons family tree          */

female(mary).
female(shelley).

male(bill).
male(john).
male(fred).
male(sam).

parent(bill, shelley).
parent(mary, shelley).
parent(bill, john).
parent(mary, john).
parent(shelley, sam).
parent(fred, sam).

/* Prediates describing relations in a family tree */

father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).
child(X, Y) :- parent(Y, X).
daughter(X, Y) :- child(X, Y), female(X).
son(X, Y) :- child(X, Y), male(X).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(Z, Y), ancestor(X, Z).

descendent(X, Y) :- ancestor(Y, X).

sibling(X, Y) :- parent(Z, X), parent(Z, Y).

brother(X, Y) :- sibling(X, Y), male(X).

sister(X, Y) :- sibling(X, Y), female(X).
