%retorna true se todos os elementos da lista L s�o o �tomo 'a'
todos_as(L) :-
    L = [].
todos_as([Head | Tail]) :-
    Head = a,
    todos_as(Tail).
 