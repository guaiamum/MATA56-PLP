progenitor(maria, jose).
progenitor(joao, jose).
progenitor(joao, ana).
progenitor(jose, julia).
progenitor(jose, iris).
progenitor(iris, jorge).

% 	---joao------------maria
% 	|            |
% 	v            v
% 	ana      ---jose---
%            |        |
%            v        v
%          julia    iris----
%                          |
%                          v 
%                        jorge  
%                        
masculino(joao).
masculino(jose).
masculino(jorge).
feminino(maria).
feminino(julia).
feminino(ana).
feminino(iris).
%endbase

%filho/2.
filho(Filho, Progen) :- progenitor(Progen, Filho).

%mae/2 e pai/2
mom(Mae, Filho) :- 
    progenitor(Mae, Filho), 
	feminino(Mae).
dad(Pai, Filho) :-
    progenitor(Pai, Filho), 
	masculino(Pai).

%avô/2 e avó/2
grandpa(Nano, Granson) :-
    progenitor(Nano, Progen),
    progenitor(Progen, Granson),
    masculino(Nano).
grandma(Nana, Granson) :-
    progenitor(Nana, Progen),
    progenitor(Progen, Granson),
    feminino(Nana).

%irmã/2
sister(Sis, Obj) :-
    progenitor(Progen, Sis), progenitor(Progen, Obj),
    feminino(Sis).
