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

%acestral/2
acestral(Ances, Descend) :- progenitor(Ances, Descend).
acestral(Ances, Descend) :-
    progenitor(Ances, Son),
    acestral(Son, Descend).
