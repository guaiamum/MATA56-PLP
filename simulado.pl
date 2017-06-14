%QUESTAO 3.
tipo(charmander, fogo).
evoluiPara(charmander, charmeleon).
evoluiPara(charmeleon, charizard).

%tipoTotal/2 retorna tipo do pokemon, que é herdado de seus ancestrais
tipoTotal(Pokemon, Tipo) :-
    tipo(Pokemon, Tipo).
tipoTotal(Pokemon, Tipo) :-
    evoluiPara(Primitivo, Pokemon),
    tipoTotal(Primitivo, Tipo).
    
%QUESTAO 4.
nascimento(rodrigo, 1984).
nascimento(caina, 1995).
nascimento(bebe, 1998).

%maisVelho/2 indica se a pessoa P1 for mais velha que P2
maisVelho(P1, P2) :-
    nascimento(P1, A1),
    nascimento(P2, A2),
    A1 < A2.

%QUESTAO 5.
%produtorio/2 indica qual o produto de todos os elementos da lista
produtorio([], 1).
produtorio([H|T], Produto) :-
    produtorio(T, P2),
    Produto is H * P2.
