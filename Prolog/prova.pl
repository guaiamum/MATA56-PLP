%se é prerequisito, bloqueia todas as seguintes
ehprereq(mata01, mata02).
ehprereq(mata02, mata04).
ehprereq(mata03, mata04).

bloqueia(D1, D2) :-
    ehprereq(D1, D2).
bloqueia(D1, D2) :-
    ehprereq(D1, Temp),
    bloqueia(Temp, D2).
    
%naozero/2 quantos elementos de uma lista numerica nao sao zero
naoZero([],0).

naoZero([H|T],N) :-
    H =\= 0,
    naoZero(T, NTail),
    N is 1 + NTail.

naoZero([H|T],N) :-
    H == 0,
    naoZero(T, NTail),
    N is NTail.
