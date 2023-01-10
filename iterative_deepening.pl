:- ['./labyrinth/loader.pl', 'utils.pl', 'test.pl'].

% ###################################################
% Iterative Deepening algorithm.
% ###################################################
start:-

  new(D, dialog('Main Window', size(500, 800))),
  % send(D, open),

  send(D, append, new(P, picture('Demo Picture', size(300, 300)))), 
  % send(P, open),

  % Row Numbering
  send(P, display, new(TX1, text('1')), point(5, 40)),
  send(P, display, new(TX2, text('2')), point(5, 90)),
  send(P, display, new(TX3, text('3')), point(5, 140)),
  send(P, display, new(TX4, text('4')), point(5, 190)),
  send(P, display, new(TX5, text('5')), point(5, 240)),

  % Column Numbering
  send(P, display, new(TX6, text('1')), point(40, 2)),
  send(P, display, new(TX7, text('2')), point(90, 2)),
  send(P, display, new(TX8, text('3')), point(140, 2)),
  send(P, display, new(TX9, text('4')), point(190, 2)),
  send(P, display, new(TX10, text('5')), point(240, 2)),



  % % Creating 1st Row
  send(P, display, new(B01, box(50,50)), point(20,20)),
  send(B01, fill_pattern, colour(red)),
  send(P, display, new(B02, box(50,50)), point(70,20)),
  send(B02, fill_pattern, colour(red)),
  send(P, display, new(B03, box(50,50)), point(120,20)),
  send(P, display, new(B04, box(50,50)), point(170,20)),
  send(P, display, new(B05, box(50,50)), point(220,20)),

  % % Creating 2nd Row
  send(P, display, new(B11, box(50,50)), point(20,70)),
  send(P, display, new(B12, box(50,50)), point(70,70)),
  send(P, display, new(B13, box(50,50)), point(120,70)),
  send(P, display, new(B14, box(50,50)), point(170,70)),
  send(B14, fill_pattern, colour(red)),
  send(P, display, new(B15, box(50,50)), point(220,70)),

  % % Creating 3rd Row
  send(P, display, new(B21, box(50,50)), point(20,120)),
  send(P, display, new(B22, box(50,50)), point(70,120)),
  send(B22, fill_pattern, colour(red)),
  send(P, display, new(B23, box(50,50)), point(120,120)),
  send(B23, fill_pattern, colour(red)),
  send(P, display, new(B24, box(50,50)), point(170,120)),
  send(P, display, new(B25, box(50,50)), point(220,120)),

  % % Creating 4th Row
  send(P, display, new(B31, box(50,50)), point(20,170)),
  send(P, display, new(B32, box(50,50)), point(70,170)),
  send(P, display, new(B33, box(50,50)), point(120,170)),
  send(P, display, new(B34, box(50,50)), point(170,170)),
  send(P, display, new(B35, box(50,50)), point(220,170)),

  % % Creating 5th Row
  send(P, display, new(B41, box(50,50)), point(20,220)),
  send(B41, fill_pattern, colour(red)),
  send(P, display, new(B42, box(50,50)), point(70,220)),
  send(P, display, new(B43, box(50,50)), point(120,220)),
  send(P, display, new(B44, box(50,50)), point(170,220)),
  send(B44, fill_pattern, colour(green)),
  send(P, display, new(Final, text('Final')), point(180, 235)),
  send(P, display, new(B45, box(50,50)), point(220,220)),

  
  new(H1, dialog_group(' ')),
  new(H2, dialog_group(' ')),
  send(D, append, H1),
  send(D, append, H2, right),

  new(Title, text('Enter Initial Row and Column: ')),
  new(O1_R, int_item('Enter Obstacle 1 Row:', low := 1, high := 5)),
  new(O1_C, int_item('Enter Obstacle 1 Columnn:', low := 1, high := 5)),
  new(Row, int_item('Enter Row:', low := 1, high := 5)),
  new(Col, int_item('Enter Columnn:', low := 1, high := 5)),
  send(H2, append, Title),
  % send(H2, append, O1_R),
  % send(H2, append, O1_C),
  send(H2, append, Row),
  send(H2, append, Col),

  send(D, append, button(launch, message(D, return, [Row, Col]))),

  % send(D, append, button(launch, message(D, return, [O1_R, O1_C, Row, Col]))),
  % send(D, append, button(set_col, message(D, return, Col))),

  % send(D, default_button, ok),

  % send_list(Row, append,Y),
  % send_list(Col, append,Y),

  get(D, confirm, Answer),

  % get(Answer, element(1), O1_R),
  % get(O1_R, selection, O1_RR),

  % get(Answer, element(2), O1_C),
  % get(O1_C, selection, O1_CC),

  get(Answer, element(1), R),

  get(R, selection, R1),

  get(Answer, element(2), C),
  get(C, selection, C1),

  % occupied(pos(3,1)),

  % get(D, confirm, Col),

  % get(Col, selection, C),

  % Temp1 = O1_RR,
  % write(Temp1),

  % write("\n"),

  % Temp2 = O1_CC,
  % write(Temp2),

  write("\n"),
  % write("AAAAAA"),

  % setup(O1_RR, O1_CC),


  send(D, open),

  id(S, P, R1, C1),
  % finalPosition(pos(F1, F2)),
  % write("\n"),
  % write(F1),
  % write("\n"),
  % write(F1),
  write("\n"),
  write(S).



temp():-
  write("\n"),
  write("Here1"),
  write("\n"),
  write(Row),
  write("\n"),
  write("Here2"),
  write("\n"),
  write(Column).

setup():-

  % write("\n"),
  % write(Row),
  % write("\n"),
  % write(Column),

  row_num(5).
  col_num(5).

  % new(D, picture('New Picture')), 
  % send(D, open),

  newPosition(T).
  initialPosition(pos(2,2)).
  finalPosition(pos(5,4)).


  % occupied(P).
  occupied(pos(1,1)).
  occupied(pos(1,2)).

  occupied(pos(2,4)).

  % occupied(pos(3,1)).
  occupied(pos(3,2)).
  occupied(pos(3,3)).

  occupied(pos(5,1)).



id(Sol, P, R1, C1):-


  T = pos(R1,C1),

  maxDepth(D),
  % write(S),

  
  initialPosition(S),

  length(_, L),
  L =< D,
  
  write("Depth is "), write(L), write("\n"),
  id_search(T, Sol, [T], L, P),
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
  send(P, display, new(B41, box(50,50)), point(20,20)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 2 ->
  send(P, display, new(B41, box(50,50)), point(70,20)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 3 ->
  send(P, display, new(B41, box(50,50)), point(120,20)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 4 ->
  send(P, display, new(B41, box(50,50)), point(170,20)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 5 ->
  send(P, display, new(B41, box(50,50)), point(220,20)),
  send(B41, fill_pattern, colour(blue)); write("")
  ).

  draw_2(C, P):-
    ( C == 1 ->
    send(P, display, new(B41, box(50,50)), point(20,70)),
    send(B41, fill_pattern, colour(blue)); write("")
    ),
    ( C == 2 ->
    send(P, display, new(B41, box(50,50)), point(70,70)),
    send(B41, fill_pattern, colour(blue)); write("")
    ),
    ( C == 3 ->
    send(P, display, new(B41, box(50,50)), point(120,70)),
    send(B41, fill_pattern, colour(blue)); write("")
    ),
    ( C == 4 ->
    send(P, display, new(B41, box(50,50)), point(170,70)),
    send(B41, fill_pattern, colour(blue)); write("")
    ),
    ( C == 5 ->
    send(P, display, new(B41, box(50,50)), point(220,70)),
    send(B41, fill_pattern, colour(blue)); write("")
    ).

  draw_3(C, P):-
  ( C == 1 ->
  send(P, display, new(B41, box(50,50)), point(20,120)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 2 ->
  send(P, display, new(B41, box(50,50)), point(70,120)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 3 ->
  send(P, display, new(B41, box(50,50)), point(120,120)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 4 ->
  send(P, display, new(B41, box(50,50)), point(170,120)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 5 ->
  send(P, display, new(B41, box(50,50)), point(220,120)),
  send(B41, fill_pattern, colour(blue)); write("")
  ).

  draw_4(C, P):-
    ( C == 1 ->
    send(P, display, new(B41, box(50,50)), point(20,170)),
    send(B41, fill_pattern, colour(blue)); write("")
    ),
    ( C == 2 ->
    send(P, display, new(B41, box(50,50)), point(70,170)),
    send(B41, fill_pattern, colour(blue)); write("")
    ),
    ( C == 3 ->
    send(P, display, new(B41, box(50,50)), point(120,170)),
    send(B41, fill_pattern, colour(blue)); write("")
    ),
    ( C == 4 ->
    send(P, display, new(B41, box(50,50)), point(170,170)),
    send(B41, fill_pattern, colour(blue)); write("")
    ),
    ( C == 5 ->
    send(P, display, new(B41, box(50,50)), point(220,170)),
    send(B41, fill_pattern, colour(blue)); write("")
    ).

  draw_5(C, P):-
  ( C == 1 ->
  send(P, display, new(B41, box(50,50)), point(20,220)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 2 ->
  send(P, display, new(B41, box(50,50)), point(70,220)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 3 ->
  send(P, display, new(B41, box(50,50)), point(120,220)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 4 ->
  send(P, display, new(B41, box(50,50)), point(170,220)),
  send(B41, fill_pattern, colour(blue)); write("")
  ),
  ( C == 5 ->
  send(P, display, new(B41, box(50,50)), point(220,220)),
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
