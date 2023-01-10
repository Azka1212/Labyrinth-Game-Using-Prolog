% last([X], X).
% last([H|T],R):- last(T,R).

% last([a,b,c], R).

last([X]):- write("\nLast element is :" ,X).
last([Y|Tail]):-last(Tail).