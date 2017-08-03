%begin base
localizado_em(salvador, bahia).
localizado_em(bahia, brasil).
localizado_em(maceio, brasil).
localizado_em(roma, italia).
nasceu_em(joao, salvador).
nasceu_em(maria, maceio).
nasceu_em(giuseppe, roma).
%end base

%localizado_em_recursivo/2
localizado_em_recursivo(Cidade, Pais) :-
    localizado_em(Cidade, Pais).
localizado_em_recursivo(Cidade, Pais) :- 
    localizado_em(Cidade, Estado),
    localizado_em_recursivo(Estado, Pais).

%nasceu_em_recursivo/2
nasceu_em_recursivo(Pessoa, Pais) :-
    nasceu_em(Pessoa, Cidade),
    localizado_em_recursivo(Cidade, Pais).

%begin base
deCarro(auckland, hamilton).
deCarro(hamilton, raglan).
deCarro(valmont, saarbruecken).
deCarro(valmont, metz).
 
deTrem(metz, frankfurt).
deTrem(saarbruecken, frankfurt).
deTrem(metz, paris).
deTrem(saarbruecken, paris).
 
deAviao(frankfurt, bangkok).
deAviao(frankfurt, singapore).
deAviao(paris, losAngeles).
deAviao(bangkok, auckland).
deAviao(losAngeles, auckland).
%end base


seConecta(X, Y) :-
    deCarro(X, Y); deTrem(X, Y); deAviao(X, Y).

seConecta_rec(X, Y) :-
    seConecta(X,Y).

seConecta_rec(X, Y) :-
    seConecta(X, Z),
    seConecta_rec(Z, Y).

