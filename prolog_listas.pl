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

% traducao
traducao(one,um).
traducao(two,dois).
traducao(three,tres).
traducao(four,quatro).
traducao(five,cinco).
traducao(six,seis).
traducao(seven,sete).
traducao(eight,oito).
traducao(nine,nove).

lista_trad([],[]).
lista_trad([Hen|Ten], [Hpt|Tpt]) :-
    traducao(Hen,Hpt),
    lista_trad(Ten,Tpt).