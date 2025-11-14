% Hechos: Definiciones de Género
female(pam).
female(liz).
female(pat).
female(ann).
male(jim).
male(bob).
male(tom).
male(pete).

% Hechos: Relaciones de Paternidad (parent/2)
parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).
parent(pete, jim).

% Reglas: Relaciones Familiares

% Definición de Madre (mother/2)
mother(X, Y) :-
    parent(X, Y),
    female(X).

% Definición de Padre (father/2)
father(X, Y) :-
    parent(X, Y),
    male(X).

% Definición de Tiene Hijo (haschild/1)
haschild(X) :- parent(X, _).

% Definición de Hermana (sister/2)
sister(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    female(X),
    X \== Y. % X no es igual a Y

% Definición de Hermano (brother/2)
brother(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    male(X),
    X \== Y. % X no es igual a Y