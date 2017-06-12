1 + 2 == +(1, 2). %true
1 + 2 == 2 + 1. %false
1 + 2 == 1 + X. %true / FALSE
1 + 2 = 1 + X. %X = 2
1 + 2 = X. %X = 1 + 2
1 + 2 = 2 + 1. %false
1 + 2 = 2 + X. %false
1 + 2 =:= 2 + 1. %true
1 + 2 =:= 2 + X. %false / NOT sufficiently instantiated
X is 1 + 2. % X = 3
1 + 2 is X. % X = 1 + 2 / NOT sufficiently instantiated

% entre/3 : indica se o número X está entre os números A e B
entre(X, A, B) :- 
    X >= A,
    X =< B.

%triplo/2 : indica se X é o triplo do número Y
triplo(X, Y) :-
    X is (3 * Y).
    
%par/1 : que indica se o número inteiro não-negativo X é par
par(X) :-
    X >= 0,
    0 is mod(X,2).

%parNoMod/1 : reescrever regra anterior sem mod(X,Y)
ehpar(0).
ehpar(X) :-
    X > 1,
    Y is X - 2,
    ehpar(Y).

    
%fatorial/2 : indica se o fatorial de X é Y. 
fatorial(X,Res) :-
    0 = X,
    Res = 1.
fatorial(X,Res) :-
    X >= 1,
    fatorial(X-1, Res).
