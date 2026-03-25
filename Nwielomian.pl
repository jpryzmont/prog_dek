% Wyznaczanie stopnia wielomianu
% o wspolczynikach liczbwych

/*
Definicja : rekurencaj strukturalna
1.  
	st(x)=1
	st(c)=0, gdzie c - liczba

2. Stopnie wielomianow zlozonych okreslamy nastpujaca
	st(-W)=st(W),
	st(W1+W2)=st(W1-W2) = max(st(W1,st(W2)),
	ST(W1*W2)=st(W1)+st(W2),
	st(W^N)=st(W)*N (N-liczba naturalna, N>1)
*/

% st_wielomian(W,X,N)
% spełniony, gdy N jest stopniem wielomianu W
% zmiennej X o wspoczynikach liczbowych
% definijca rekurencyjna

%Pierwszy punkt
%Warunki zakonczenia rekurencji
st(X,X,1).
st(C,_,0):-number(C).

%Drugi punkt
st(-W,X,N):-st(W,X,N).
st(W1+W2,X,N):-st(W1,X,N1),st(W2,X,N2), N is max(N1,N2)
st(W1-W2,X,N):-st(W1,X,N1),st(W2,X,N2), N is max(N1,N2)

%Dokończyc/niezrobione