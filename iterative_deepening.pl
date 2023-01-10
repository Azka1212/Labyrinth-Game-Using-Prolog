:- ['./labyrinth/loader.pl', 'utils.pl', 'test.pl'].

% ###################################################
% Iterative Deepening algorithm.
% ###################################################
start:-

  new(P, picture('Demo Picture')), 
  send(P, open),

  % % Creating 1st Row
  send(P, display, new(B01, box(50,50)), point(0,0)),
  send(B01, fill_pattern, colour(red)),
  send(P, display, new(B02, box(50,50)), point(50,0)),
  send(B02, fill_pattern, colour(red)),
  send(P, display, new(B03, box(50,50)), point(100,0)),
  send(P, display, new(B04, box(50,50)), point(150,0)),
  send(P, display, new(B05, box(50,50)), point(200,0)),

  % % Creating 2nd Row
  send(P, display, new(B11, box(50,50)), point(0,50)),
  send(P, display, new(B12, box(50,50)), point(50,50)),
  send(P, display, new(B13, box(50,50)), point(100,50)),
  send(P, display, new(B14, box(50,50)), point(150,50)),
  send(B14, fill_pattern, colour(red)),
  send(P, display, new(B15, box(50,50)), point(200,50)),

  % % Creating 3rd Row
  send(P, display, new(B21, box(50,50)), point(0,100)),
  send(P, display, new(B22, box(50,50)), point(50,100)),
  send(B22, fill_pattern, colour(red)),
  send(P, display, new(B23, box(50,50)), point(100,100)),
  send(B23, fill_pattern, colour(red)),
  send(P, display, new(B24, box(50,50)), point(150,100)),
  send(P, display, new(B25, box(50,50)), point(200,100)),

  % % Creating 4th Row
  send(P, display, new(B31, box(50,50)), point(0,150)),
  send(P, display, new(B32, box(50,50)), point(50,150)),
  send(P, display, new(B33, box(50,50)), point(100,150)),
  send(P, display, new(B34, box(50,50)), point(150,150)),
  send(P, display, new(B35, box(50,50)), point(200,150)),

  % % Creating 5th Row
  send(P, display, new(B41, box(50,50)), point(0,200)),
  send(P, display, new(B42, box(50,50)), point(50,200)),
  send(P, display, new(B43, box(50,50)), point(100,200)),
  send(P, display, new(B44, box(50,50)), point(150,200)),
  send(P, display, new(B45, box(50,50)), point(200,200)),


  id(S, P),
  write(S).
  

id(Sol, P):-
  maxDepth(D),
  initialPosition(S),
  length(_, L),
  L =< D,
  
  write("Depth is "), write(L), write("\n"),
  id_search(S, Sol, [S], L, P),
  write("\n").
  % write(Sol).

% ###################################################
% id_search/4 predicate provides the ID search.
% ###################################################
id_search(S, [], _, _, P):- 
  finalPosition(S).


get_last(S):-
  % write("Here"),
  X = last(S),
  write("\n").
  % write(X).
  % X = pos(5,3),
  % write("Done").

draw_1(C, P):-
  ( C == 1 ->
  send(P, display, new(B41, box(50,50)), point(0,0)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 2 ->
  send(P, display, new(B41, box(50,50)), point(50,0)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 3 ->
  send(P, display, new(B41, box(50,50)), point(100,0)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 4 ->
  send(P, display, new(B41, box(50,50)), point(150,0)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 5 ->
  send(P, display, new(B41, box(50,50)), point(200,0)),
  send(B41, fill_pattern, colour(blue)); write("")
  ).

  draw_2(C, P):-
    ( C == 1 ->
    send(P, display, new(B41, box(50,50)), point(0,50)),
    send(B41, fill_pattern, colour(blue)); write("")
    ),
    ( C == 2 ->
    send(P, display, new(B41, box(50,50)), point(50,50)),
    send(B41, fill_pattern, colour(blue)); write("")
    ),
    ( C == 3 ->
    send(P, display, new(B41, box(50,50)), point(100,50)),
    send(B41, fill_pattern, colour(blue)); write("")
    ),
    ( C == 4 ->
    send(P, display, new(B41, box(50,50)), point(150,50)),
    send(B41, fill_pattern, colour(blue)); write("")
    ),
    ( C == 5 ->
    send(P, display, new(B41, box(50,50)), point(200,50)),
    send(B41, fill_pattern, colour(blue)); write("")
    ).

  draw_3(C, P):-
  ( C == 1 ->
  send(P, display, new(B41, box(50,50)), point(0,100)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 2 ->
  send(P, display, new(B41, box(50,50)), point(50,100)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 3 ->
  send(P, display, new(B41, box(50,50)), point(100,100)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 4 ->
  send(P, display, new(B41, box(50,50)), point(150,100)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 5 ->
  send(P, display, new(B41, box(50,50)), point(200,100)),
  send(B41, fill_pattern, colour(blue)); write("")
  ).

  draw_4(C, P):-
    ( C == 1 ->
    send(P, display, new(B41, box(50,50)), point(0,150)),
    send(B41, fill_pattern, colour(blue)); write("")
    ),
    ( C == 2 ->
    send(P, display, new(B41, box(50,50)), point(50,150)),
    send(B41, fill_pattern, colour(blue)); write("")
    ),
    ( C == 3 ->
    send(P, display, new(B41, box(50,50)), point(100,150)),
    send(B41, fill_pattern, colour(blue)); write("")
    ),
    ( C == 4 ->
    send(P, display, new(B41, box(50,50)), point(150,150)),
    send(B41, fill_pattern, colour(blue)); write("")
    ),
    ( C == 5 ->
    send(P, display, new(B41, box(50,50)), point(200,150)),
    send(B41, fill_pattern, colour(blue)); write("")
    ).

  draw_5(C, P):-
  ( C == 1 ->
  send(P, display, new(B41, box(50,50)), point(0,200)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 2 ->
  send(P, display, new(B41, box(50,50)), point(50,200)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 3 ->
  send(P, display, new(B41, box(50,50)), point(100,200)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 4 ->
  send(P, display, new(B41, box(50,50)), point(150,200)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 5 ->
  send(P, display, new(B41, box(50,50)), point(200,200)),
  send(B41, fill_pattern, colour(blue)); write("")
  ).

draw(pos(R,C), P):-
  % X =:= 'pos(5,3)',
  % write(R),
  % write(C),

  % R =:= 5,
  % write("One"),
  ( R == 1 -> draw_1(C, P); write("")),
  ( R == 2 -> draw_2(C, P); write("")),
  ( R == 3 -> draw_3(C, P); write("")),
  ( R == 4 -> draw_4(C, P); write("")),
  ( R == 5 -> draw_5(C, P); write("")).

  % R =:= 5,
  % C =:= 3,
  % draw_1(R).
  
  % write("done").

id_search(S, [Action|OtherActions], VisitedNodes, N, P):-
  N>0,
  allowed(Action, S),
  move(Action, S, NewS),
  \+member(NewS, VisitedNodes),
  N1 is N-1,
  id_search(NewS, OtherActions, [NewS|VisitedNodes], N1, P),
  % last(S),
  write(S),
  draw(S, P),
  write("\n").
  % get_last(S).
