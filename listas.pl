%retorna true se todos os elementos da lista L são o átomo 'a'
todos_as(L) :-
    L = [].
todos_as([Head | Tail]) :-
    Head = a,
    todos_as(Tail).
 
 % Soma de todos os elementos da lista.
soma([],0).
soma([H|T],S) :- 
    soma(T,G),
    S is H+G.