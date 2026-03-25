signum(X,1):-number(X),X>0, !.
signum(X,0):-number(X),X=0, !.
signum(X,-1):-number(X),X<0, !.